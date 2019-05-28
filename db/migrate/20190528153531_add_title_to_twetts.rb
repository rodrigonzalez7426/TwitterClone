class AddTitleToTwetts < ActiveRecord::Migration[5.2]
  def change
    add_column :twetts, :title, :string
  end
end
