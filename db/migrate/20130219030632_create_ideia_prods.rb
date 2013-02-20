class CreateIdeiaProds < ActiveRecord::Migration
  def change
    create_table :ideia_prods do |t|
      t.string :descricao
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :cidade
      t.text :uf

      t.timestamps
    end
  end
end
