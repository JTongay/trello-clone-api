# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json
  # skip_before_action :raise_unless_authenticated!, only: [:create]

  private

  def respond_with(resource, _opts = {})
    render json: {
      status: { code: 200, message: 'Logged in successfully.' },
      data: UserSerializer.new(resource).serializable_hash.to_json
    }
  end

  def respond_to_on_destroy
    head :ok
  end
end
