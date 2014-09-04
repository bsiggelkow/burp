class CreatePlatformAdSets < ActiveRecord::Migration
  def change
    create_table :platform_ad_sets do |t|
      t.string :name
      t.string :uri
      t.json :features
      t.references :ad_set, index: true
      t.references :platform_ad_set_type, index: true

      t.timestamps
    end
  end
end
