class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.string :name
      t.string :api_id

      t.timestamps
    end
  end
end
