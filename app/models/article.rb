class Article < ApplicationRecord
  validates_presence_of :title, :teaser, :content, :category, :location
  enum category: [:sports, :entertainment, :weather, :business, :news]
  belongs_to :journalist, class_name: "User"

  has_one_attached :image
end
