class CreateAdSets < ActiveRecord::Migration
  def change
    create_table :ad_sets do |t|
      t.string :name
      t.references :initiative, index: true

      t.timestamps
    end
  end
end
