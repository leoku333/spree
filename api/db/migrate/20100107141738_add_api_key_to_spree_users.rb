class AddApiKeyToSpreeUsers < ActiveRecord::Migration
  def change
    unless defined?(User)
      add_column :users, :spree_api_key, :string, :limit => 48
    end
  end
end
