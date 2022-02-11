class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  belongs_to :genre
  
  has_many :pages

  validates :genre_id, numericality: { other_than: 1 }
end
