class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :user
  belongs_to_active_hash :genre
  has_one_attached :image

  with_options presence: true do
    validates :name, :content, :genre, :image
  end

  with_options numericality: { other_than: 1 } do
    validates :genre_id
  end
end
