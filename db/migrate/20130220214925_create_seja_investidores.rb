class CreateSejaInvestidores < ActiveRecord::Migration
  def change
    create_table :seja_investidores do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :empresa
      t.string :site
      t.string :cidade
      t.string :uf
      t.text :mensagem

      t.timestamps
    end
  end
end
