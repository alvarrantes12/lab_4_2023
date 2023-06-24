class CreateSupermarkets < ActiveRecord::Migration[7.0]
  def change
    create_table :supermarkets do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
