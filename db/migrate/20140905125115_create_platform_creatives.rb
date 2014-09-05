class CreatePlatformCreatives < ActiveRecord::Migration
  def change
    create_table :platform_creatives do |t|
      t.string :name
      t.string :uri
      t.json :features
      t.references :creative, index: true
      t.references :platform_creative_type, index: true

      t.timestamps
    end
  end
end
