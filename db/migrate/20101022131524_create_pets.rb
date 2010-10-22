class CreatePets < ActiveRecord::Migration
  def self.up
    create_table :pets do |t|
      t.string :breed
      t.string :name
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pets
  end
end
