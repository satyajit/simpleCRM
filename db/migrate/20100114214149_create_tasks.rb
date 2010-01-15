class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.date :due
      t.text :description
      t.enum :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
