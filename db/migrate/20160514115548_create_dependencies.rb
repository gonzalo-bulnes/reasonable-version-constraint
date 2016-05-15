class CreateDependencies < ActiveRecord::Migration[5.0]
  def change
    create_table :dependencies do |t|
      t.string :name
      t.datetime :data_updated_at
      t.datetime :analyzed_at

      t.timestamps
    end
    add_index :dependencies, :name
  end
end
