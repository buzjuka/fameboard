class RemovePositiveFromInscriptions < ActiveRecord::Migration
  def change
    change_table :inscriptions do |t|
      t.change :positive, :boolean, default: true
    end
  end
end
