class CreateEcoles < ActiveRecord::Migration[7.0]
  def change
    create_table :ecoles do |t|
      t.string :nom
      t.string :adresse
      t.string :type
      t.string :telephone
      t.boolean :ouvert

      t.timestamps
    end
  end
end
