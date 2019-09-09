class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :nome
      t.string :raca
      t.decimal :peso

      t.timestamps
    end
  end
end
