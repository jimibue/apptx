class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :treatment
      t.string :specialty

      t.timestamps
    end
  end
end
