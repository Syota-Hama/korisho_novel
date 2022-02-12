class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  belongs_to :genre
  
  has_many :pages
  has_many :configurations

  validates :genre_id, numericality: { other_than: 1 }
end
