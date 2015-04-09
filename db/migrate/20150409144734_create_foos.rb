class CreateFoos < ActiveRecord::Migration
  def change
    execute "CREATE EXTENSION IF NOT EXISTS hstore"

    create_table :foos do |t|
      t.hstore :hstore_column
      t.text :serialized_column

      t.timestamps null: false
    end
  end
end
