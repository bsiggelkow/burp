class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.references :ad_set, index: true
      t.references :target, index: true
      t.references :creative, index: true

      t.timestamps
    end
  end
end
