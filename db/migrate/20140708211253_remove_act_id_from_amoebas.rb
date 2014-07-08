class RemoveActIdFromAmoebas < ActiveRecord::Migration
  def change
    remove_column :amoebas, :act_id
  end
end
