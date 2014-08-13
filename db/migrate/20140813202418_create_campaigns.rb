class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :objective
      t.string :campaign_group_status
      t.string :buying_type

      t.timestamps
    end
  end
end
