class CreateCreatives < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.string :name

      t.timestamps
    end
  end
end
