class CreatePlatformAdTypes < ActiveRecord::Migration
  def change
    create_table :platform_ad_types do |t|
      t.string :name
      t.references :platform, index: true
      t.string :endpoint
      t.json :schema
      t.json :field_mapping

      t.timestamps
    end
  end
end
