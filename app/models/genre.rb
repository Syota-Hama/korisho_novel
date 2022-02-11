class Genre < ActiveHash::Base
  
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'SF' },
    { id: 3, name: 'ファンタジー' },
    { id: 4, name: '推理小説' },
    { id: 5, name: '純文学' },
    { id: 6, name: '恋愛' },
    { id: 7, name: '青春' },
    { id: 8, name: '哲学' },
    { id: 9, name: 'エッセイ' },
    { id: 10, name: 'ノンフィクション' }
  ]

  include ActiveHash::Associations
  has_many :books
end