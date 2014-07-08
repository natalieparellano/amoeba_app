class FixAmoebaTalents < ActiveRecord::Migration
  def change
    remove_column :amoebas, :talent
    add_column :amoebas, :talent_id, :integer
  end
end
