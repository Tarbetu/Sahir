class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :issue, null: false, foreign_key: true
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
