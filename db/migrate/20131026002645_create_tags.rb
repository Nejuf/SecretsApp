class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.integer :author_id

      t.timestamps
    end
    add_index :tags, :name
    add_index :tags, :author_id
  end
end
