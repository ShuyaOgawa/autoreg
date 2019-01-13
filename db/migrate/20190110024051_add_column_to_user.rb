class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name1, :string
    add_column :users, :name2, :string
    add_column :users, :kana1, :string
    add_column :users, :kana2, :string
    add_column :users, :keitai1, :string
    add_column :users, :keitai2, :string
    add_column :users, :keitai3, :string
  end
end
