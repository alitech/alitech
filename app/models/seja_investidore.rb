class SejaInvestidore < ActiveRecord::Base
  attr_accessible :cidade, :email, :empresa, :mensagem, :nome, :site, :telefone, :uf
end
