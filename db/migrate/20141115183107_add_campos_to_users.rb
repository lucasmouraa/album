class AddCamposToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_index :users, :login, unique: true
    add_column :users, :nome, :string
    add_index :users, :nome, unique: true
    add_column :users, :url_image, :string
    add_column :users, :cidade, :string
    add_column :users, :estado, :string
    add_column :users, :sobre_voce, :string
  end
end
