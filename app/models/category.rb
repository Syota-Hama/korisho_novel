class Category < ActiveHash::Base
  
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '世界観' },
    { id: 3, name: 'キャラクター' },
    { id: 4, name: 'アイテム' },
    { id: 5, name: 'その他の設定' },
  ]

  include ActiveHash::Associations
  has_many :configurations
  has_many :pages
end