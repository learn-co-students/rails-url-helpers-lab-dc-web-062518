class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
      t.string :status, :null => false, :default => false
    end
  end
end
