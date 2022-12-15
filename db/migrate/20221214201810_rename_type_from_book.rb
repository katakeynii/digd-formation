class RenameTypeFromBook < ActiveRecord::Migration[7.0]
  def change
    rename_column :ecoles,  :type, :type_ecole
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
