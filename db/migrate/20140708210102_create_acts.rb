class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.datetime :time_of_performance

      t.timestamps
    end
  end
end
