class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.text :data
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
