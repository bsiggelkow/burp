class CreatePlatformTargets < ActiveRecord::Migration
  def change
    create_table :platform_targets do |t|
      t.string :name
      t.string :uri
      t.json :features
      t.references :target, index: true
      t.references :platform_target_type, index: true

      t.timestamps
    end
  end
end
