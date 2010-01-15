class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :company
      t.text :description
      t.enum :status

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
