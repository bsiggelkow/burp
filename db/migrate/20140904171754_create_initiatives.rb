class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :name
      t.text :description
      t.references :account, index: true

      t.timestamps
    end
  end
end
