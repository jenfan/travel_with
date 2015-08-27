class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.date :date_from
      t.date :date_to
      t.belongs_to :route, index: true
      t.belongs_to :town, index: true

      t.timestamps
    end
  end
end
