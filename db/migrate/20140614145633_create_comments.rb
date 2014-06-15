class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.references :cat

      t.timestamps
    end
  end
end
