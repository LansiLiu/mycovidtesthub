class RemoveTtnFromTestKits < ActiveRecord::Migration[6.0]
  def change
    remove_column :test_kits, :ttn, :integer
  end
end
