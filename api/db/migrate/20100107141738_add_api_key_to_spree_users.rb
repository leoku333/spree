class AddApiKeyToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :users, :spree_api_key, :string, :limit => 48
  end
end
