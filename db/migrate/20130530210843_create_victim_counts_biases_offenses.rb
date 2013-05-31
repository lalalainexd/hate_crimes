class CreateVictimCountsBiasesOffenses < ActiveRecord::Migration
  def change
    create_table :victim_counts do |t|
      t.timestamps
      t.integer :total, null: false
      t.references :bias, null: false
      t.references :offense, null: false
    end

    create_table :biases do |t|
      t.timestamps
      t.string :name, null: false
      t.references :bias_categories
    end

    create_table :offenses do |t|
      t.timestamps
      t.string :name, null: false
      t.references :offense_category
    end

    create_table :offense_categories do |t|
      t.timestamps
      t.string :name, null: false
    end

    create_table :bias_categories do |t|
      t.timestamps
      t.string :name, null: false
    end

  end
end
