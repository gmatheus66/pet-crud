class CreateVacinaPets < ActiveRecord::Migration[6.0]
  def change
    create_table :vacina_pets do |t|
      t.string :nome
      t.string :id_seq
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
