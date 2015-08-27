class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :avatar
      t.string :token
      t.string :location
      t.date :birthday

      t.timestamps
    end
  end
end
