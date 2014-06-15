class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :no_legs

      t.timestamps
    end
  end
end
