class AddIndexToUserSpreeApiKey < ActiveRecord::Migration
  def change
    add_index :users, :spree_api_key
  end
end
