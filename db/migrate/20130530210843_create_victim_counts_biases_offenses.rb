class CreateVictimCountsBiasesOffenses < ActiveRecord::Migration
  def change
    create_table :victim_counts do |t|
      t.timestamps
      t.integer :total, null: false
      t.references :bias
      t.references :offense
    end

    create_table :biases do |t|
      t.timestamps
      t.string :name, null: false
      t.references :bias_type
    end

    create_table :offenses do |t|
      t.timestamps
      t.string :name, null: false
      t.references :offense_type
    end
  end
end
