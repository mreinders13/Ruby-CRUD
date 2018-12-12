class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :last
      t.string :first
      t.decimal :gpa
      t.date :date

      t.timestamps
    end
  end
end
