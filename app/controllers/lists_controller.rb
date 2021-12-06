# frozen_string_literal: true

class ListsController < ApplicationController

	def index
		lists = ListSerializer.new(List.all).serializable_hash.to_json
		render json: lists
	end

end
