class CreateSecretTaggings < ActiveRecord::Migration
  def change
    create_table :secret_taggings do |t|
      t.integer :tag_id, null: false
      t.integer :secret_id, null: false
      t.integer :user_id

      t.timestamps
    end

    add_index :secret_taggings, :tag_id
    add_index :secret_taggings, :secret_id
    add_index :secret_taggings, :user_id
  end
end
