# frozen_string_literal: true

class BoardsController < ApplicationController

  def index
    render json: serialized_boards
  end

  private

  def boards
    Board.all
  end

  def serialized_boards
    BoardSerializer.new(boards).serializable_hash.to_json
  end
end
