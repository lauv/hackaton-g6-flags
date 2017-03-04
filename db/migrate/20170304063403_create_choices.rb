class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.integer :position
      t.text :answer
      t.boolean :correct
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
