class CreatePlatformAccountTypes < ActiveRecord::Migration
  def change
    create_table :platform_account_types do |t|
      t.string :name
      t.references :platform, index: true
      t.string :endpoint
      t.text :schema
      t.text :field_mapping

      t.timestamps
    end
  end
end
