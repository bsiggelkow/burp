class CreatePlatformAccounts < ActiveRecord::Migration
  def change
    create_table :platform_accounts do |t|
      t.string :name
      t.string :uri
      t.json :features
      t.references :account, index: true
      t.references :platform_account_type, index: true

      t.timestamps
    end
  end
end
