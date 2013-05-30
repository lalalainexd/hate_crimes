class CreateOffenseTypes < ActiveRecord::Migration
  def change
    create_table :offense_types do |t|
      t.timestamps
      t.string :name, null: false, unique: true
    end

    create_table :bias_offense_types do |t|
      t.timestamps
      t.references :bias
      t.references :offense_type
      t.integer :total_incidents
    end
  end
end
