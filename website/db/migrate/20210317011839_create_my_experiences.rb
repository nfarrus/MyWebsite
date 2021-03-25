class CreateMyExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :my_experiences do |t|
      t.string :Company
      t.string :Role
      t.string :Duration
      t.string :Location
      t.string :Description

      t.timestamps
    end
  end
end
