# Based on the column name changes, it looks like the naming was changed to match Devise naming
#
# 888 Remove all columns that are being created in DeviseTokenAuth's Migration
# 888 have the dummy test app test using drifter's db
#
# MP20 is one migration file that is the same between devise token aut and spree auth devise
class CreateUsers < ActiveRecord::Migration
  def up
    create_table "users", :force => true do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => "", limit: 128 # REF Added from Spree's CreateUsers migration

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      t.string :name
      t.string :nickname
      t.string :image
      t.string :email
      t.index([:email], unique: true, name: "email_idx_unique")

      ## Tokens
      t.json :tokens

      t.string   "password_salt",                      :limit => 128
      t.string   "authentication_token"
      t.string   "unlock_token"
      t.datetime "locked_at"
      t.string   "remember_token"
      t.datetime "remember_created_at"
      t.string   "persistence_token"
      t.string   "perishable_token"
      t.integer  "failed_attempts",                       :default => 0, :null => false
      t.datetime "last_request_at"
      t.string   "login"
      t.integer :ship_address_id, index: true
      t.integer :bill_address_id, index: true
      t.datetime "created_at",                                              :null => false
      t.datetime "updated_at",                                              :null => false
      t.datetime :deleted_at, index: true
    end
  end
end
