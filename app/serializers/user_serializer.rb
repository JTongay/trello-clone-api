# frozen_string_literal: true

class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :email, :created_at
end
