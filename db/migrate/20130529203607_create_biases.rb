class CreateBiases < ActiveRecord::Migration
  def change
    create_table :biases do |t|
      t.string :name, null: false
      t.references :bias_type
      t.integer :total_incidents
      t.timestamps
    end

  end
end
