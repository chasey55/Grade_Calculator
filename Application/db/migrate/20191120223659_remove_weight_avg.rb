class RemoveWeightAvg < ActiveRecord::Migration[5.2]
  def change
    remove_column :grades, :weightAvg
  end
end
