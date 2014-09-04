class CreatePlatformInitiatives < ActiveRecord::Migration
  def change
    create_table :platform_initiatives do |t|
      t.string :name
      t.string :uri
      t.json :features
      t.references :initiative, index: true
      t.references :platform_initiative_type, index: true

      t.timestamps
    end
  end
end
