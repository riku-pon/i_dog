class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :item
  belongs_to_active_hash :evaluation
  belongs_to_active_hash :dog_breed

  with_options presence: true do
    validates :evaluation, :title, :content, :dog_breed
  end

  with_options numericality: { other_than: 1 } do
    validates :evaluation_id, :dog_breed_id
  end
end
