class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :novel_title,    null: false
      t.text       :synopsis,       null: false
      t.integer    :genre_id,       null: false
      t.references :user,          null: false
      t.timestamps
    end
  end
end
