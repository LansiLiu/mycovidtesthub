class CreateTestKits < ActiveRecord::Migration[6.0]
  def change
    create_table :test_kits do |t|
      t.integer :ttn
      t.boolean :used

      t.timestamps
    end
  end
end
