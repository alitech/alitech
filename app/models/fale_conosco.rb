class FaleConosco < ActiveRecord::Base
  attr_accessible :assunto, :cidade, :email, :empresa, :mensagem, :nome, :site, :telefone, :uf

  validates_presence_of :nome
  validates_presence_of :email
  validates_presence_of :assunto
  validates_presence_of :mensagem
  validates_presence_of :telefone

end
