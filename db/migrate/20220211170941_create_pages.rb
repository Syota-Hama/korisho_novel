class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string        :page_title,     null: false
      t.text          :novel_page,     null: false
      t.references    :user,           null: false, foreign_key: true
      t.references    :book,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
