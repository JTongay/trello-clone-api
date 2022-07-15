# frozen_string_literal: true

class ListsController < ApplicationController
  #   protect_from_forgery with: :exception
  # before_action :authenticate_user!

  def index
    puts user_signed_in?
    puts 'booyah'

    lists = ListSerializer.new(List.all).serializable_hash.to_json
    render json: lists
  end
end
