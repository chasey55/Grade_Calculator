class ChangeResultToBeStringInGrades < ActiveRecord::Migration[5.2]
  def change
    change_column :grades, :result, :string
  end
end
