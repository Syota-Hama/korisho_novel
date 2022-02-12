class CreateConfigurations < ActiveRecord::Migration[6.0]
  def change
    create_table :configurations do |t|
      t.string        :configuration_novel,      null: false
      t.integer       :category_id,              null: false
      t.references    :user,                     null: false,  foreign_key: true
      t.references    :book,                     null: false,  foreign_key: true
      t.timestamps
    end
  end
end
