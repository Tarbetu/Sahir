class CreateIssues < ActiveRecord::Migration[8.1]
  def change
    create_table :issues do |t|
      t.integer :no
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
