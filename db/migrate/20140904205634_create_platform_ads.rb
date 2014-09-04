class CreatePlatformAds < ActiveRecord::Migration
  def change
    create_table :platform_ads do |t|
      t.string :name
      t.string :uri
      t.json :features
      t.references :ad, index: true
      t.references :platform_ad_type, index: true

      t.timestamps
    end
  end
end
