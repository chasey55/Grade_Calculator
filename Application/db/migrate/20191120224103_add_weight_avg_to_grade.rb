class AddWeightAvgToGrade < ActiveRecord::Migration[5.2]
  def change
    add_column :grades, :weightAvg, :string
  end
end
