class Pessoa
  attr_accessor :nome,:idade,:peso,:altura
  def initialize(nome,idade,peso,altura)
    @nome = nome
    @idade = idade
    @peso = peso
    @altura = altura
  end
  def envelhecer
    @idade += 1
  end
  def engordar(gm)
    @peso -=gm
  end
  def emagrecer(gm)
    @peso+=gm
  end
  def crescer(cm)
    @altura +=cm
  end
end
nome = gets.chomp.to_s
idade = Random.rand(21)
peso = Random.rand(70)
altura = Random.rand(170)
pessoa = Pessoa.new(nome,idade,peso,altura)

50.times do
 if pessoa.idade<21
   pessoa.crescer(0.5)
 end
 if Random.rand(1.0)<0.5
   pessoa.emagrecer(Random.rand(1.0))
 else
   pessoa.engordar(Random.rand(1.0))
 end
 pessoa.envelhecer
puts pessoa.nome
puts pessoa.idade
puts pessoa.peso
puts pessoa.altura
end
