class CreateBiasTypesTable < ActiveRecord::Migration
  def change
    create_table :bias_types do |t|
      t.timestamps
      t.string :name, null: false
    end
  end
end
