class CreateFaleConoscos < ActiveRecord::Migration
  def change
    create_table :fale_conoscos do |t|
      t.string :nome, :lenght => 255
      t.string :email, :lenght => 35
      t.string :telefone, :lenght => 15
      t.string :empresa, :lenght => 35
      t.string :site, :lenght => 50
      t.string :cidade, :lenght => 25
      t.string :uf
      t.string :assunto, :lenght => 125
      t.text :mensagem, :lenght => 500

      t.timestamps
    end
  end
end
