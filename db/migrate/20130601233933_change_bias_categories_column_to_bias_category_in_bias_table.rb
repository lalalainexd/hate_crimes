class ChangeBiasCategoriesColumnToBiasCategoryInBiasTable < ActiveRecord::Migration

  def change
    rename_column :biases, :bias_categories_id, :bias_category_id
  end
end
