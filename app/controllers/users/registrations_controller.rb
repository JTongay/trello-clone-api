# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  #   skip_before_action :authenticate_user!

  def create
    build_resource(sign_up_params)
    resource.save!
    sign_up(resource_name, resource) if resource.persisted?
    respond_with(resource)
  end

  private

  def respond_with(resource, _opts = {})
    pp resource
    render status: :created,
           json: {
             status: { code: 201, message: 'Logged in successfully' },
             data: UserSerializer.new(resource).serializable_hash.to_json
           }
  end
end
