class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.integer :positive
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
