class BoardSerializer
  include JSONAPI::Serializer
  attribute :name
  attribute :username do |board|
    board.user.username
  end

  belongs_to :user
end
