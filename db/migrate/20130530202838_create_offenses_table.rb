class CreateOffensesTable < ActiveRecord::Migration
  def change
    create_table :offenses do |t|
      t.timestamps
      t.string :name, null: false, unique: true
      t.references :offense_type
    end
  end
end
