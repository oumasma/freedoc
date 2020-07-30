class CreateJointureSpes < ActiveRecord::Migration[5.2]
  def change
    create_table :jointure_spes do |t|
      t.belongs_to :doctor, index: true 
      t.belongs_to :specialty, index: true #joindre 2 tables doctor et specialty avec create jointure 
      t.timestamps
    end
  end
end
