class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :base_url
      t.json :attributes

      t.timestamps
    end
  end
end
