class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :assignment1
      t.string :assignment2
      t.string :assignment3
      t.string :assignment4
      t.string :assignment5
      t.string :assignment6
      t.string :assignment7
      t.string :assignment8
      t.string :assignment9
      t.string :assignment10
      t.float :gradeNum1
      t.float :gradeNum2
      t.float :gradeNum3
      t.float :gradeNum4
      t.float :gradeNum5
      t.float :gradeNum6
      t.float :gradeNum7
      t.float :gradeNum8
      t.float :gradeNum9
      t.float :gradeNum10
      t.float :wieght1
      t.float :weight2
      t.float :weight3
      t.float :weight4
      t.float :weight5
      t.float :weight6
      t.float :weight7
      t.float :weight8
      t.float :weight9
      t.float :weight10
      t.float :result
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
