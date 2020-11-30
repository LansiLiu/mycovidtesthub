class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :test_results, :test_result, :result
  end
end
