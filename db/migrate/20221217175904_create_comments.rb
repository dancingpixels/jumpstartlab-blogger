class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :author_name, null: false
      t.text :body, null: false
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
