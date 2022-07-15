# frozen_string_literal: true

class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: serialized_boards
  end

  def show
    render json: BoardSerializer.new(board).serializable_hash.to_json
  end

  def create
    Board.create(board_params)

    head :created
  end

  def update
    Board.find(board_id).update!(board_params)
  end

  private

  def boards
    Board.all
  end

  def board
    Board.find(board_id)
  end

  def board_id
    params[:id]
  end

  def board_params
    {
      name: params.require(:name)
    }
  end

  def serialized_boards
    BoardSerializer.new(boards).serializable_hash.to_json
  end
end
