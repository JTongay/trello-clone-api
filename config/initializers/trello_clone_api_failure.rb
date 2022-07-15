# frozen_string_literal: true

class TrelloCloneApiFailure < Devise::FailureApp
  def respond
    if request.format == :json
      json_failure
    else
      super
    end
  end

  def json_failure
    self.status = 401
    self.content_type = 'application/json'
    self.response_body = '{"message": "Your session is expired"}'
  end

  def store_location!
    # super unless attempted_path&.starts_with?('/api')
  end
end
