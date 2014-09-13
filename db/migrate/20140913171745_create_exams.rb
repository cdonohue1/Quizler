class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.string :descriptions

      t.timestamps
    end
  end
end
