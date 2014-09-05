class AddStatsUriToPlatformAccounts < ActiveRecord::Migration
  def change
    add_column :platform_accounts, :stats_uri, :string
  end
end
