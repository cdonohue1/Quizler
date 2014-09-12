class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.boolean :correct
      t.string :choice

      t.timestamps
    end
  end
end
