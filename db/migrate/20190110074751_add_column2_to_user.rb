class AddColumn2ToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sex, :string
    add_column :users, :birthY, :string
    add_column :users, :birthM, :string
    add_column :users, :birthD, :string
    add_column :users, :postal1, :string
    add_column :users, :postal2, :string
    add_column :users, :prefecture, :string
    add_column :users, :city, :string
    add_column :users, :apartment, :string
  end
end
