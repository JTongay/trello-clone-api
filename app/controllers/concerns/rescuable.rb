# frozen_string_literal: true

module Rescuable
  extend ActiveSupport::Concern

  included do
    rescue_from ActionController::ParameterMissing,
                ActiveRecord::RecordInvalid,
                ActiveRecord::NotNullViolation do |e|
      render_json_error 422, e
    end

    protected

    def render_json_error(status_code, error, message = '')
      @exception = error
      message = error.message.gsub(/Validation Failed: /, '') if message.blank?

      render status: status_code, json: { message: message }
    end
  end
end
