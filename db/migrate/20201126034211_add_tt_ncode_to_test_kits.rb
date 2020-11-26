class AddTtNcodeToTestKits < ActiveRecord::Migration[6.0]
  def change
    add_column :test_kits, :TTNcode, :string
  end
end
