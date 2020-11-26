class CreateTestResults < ActiveRecord::Migration[6.0]
  def change
    create_table :test_results do |t|
      t.string :email
      t.string :fullname
      t.integer :age
      t.integer :gender
      t.string :postcode
      t.string :ttn
      t.string :test_result

      t.timestamps
    end
  end
end
