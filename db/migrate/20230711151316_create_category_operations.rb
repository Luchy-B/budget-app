class CreateCategoryOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :category_operations do |t|
      t.belongs_to :category, null: false, foreign_key: 'category_id'
      t.belongs_to :operation, null: false, foreign_key: 'operation_id'

      t.timestamps
    end
  end
end
