class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :hours
      t.string :date_start
      t.string :date_end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
