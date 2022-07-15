# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    pp user_signed_in?
    user = User.all

    render json: user
  end
end
