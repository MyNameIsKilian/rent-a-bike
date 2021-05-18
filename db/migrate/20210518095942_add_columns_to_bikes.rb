class AddColumnsToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :description, :text
    add_column :bikes, :color, :string
    add_column :bikes, :size, :string
    add_column :bikes, :accessories, :text
    add_column :bikes, :price, :integer
    add_reference :bikes, :user, null: false, foreign_key: true
  end
end
