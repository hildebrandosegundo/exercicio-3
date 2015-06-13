class Tamagushi
  attr_accessor :nome, :fome, :saude,:idade
  def initialize(nome,fome,saude,idade)
    @nome =nome
    @fome = fome
    @saude = saude
    @idade = idade
  end
  def humor
    if @fome<10||saude<10
      return "Pedindo pra morrer!"
    else
      return "saudavel"
    end

  end
  def inc_idade
    @idade += 1
  end

end
nome = "toinho"
tamagushi = Tamagushi.new(nome,50,50,0)

tamagushi.nome =

50.times do
  tamagushi.inc_idade
  tamagushi.fome=Random.rand(50)
  tamagushi.saude=Random.rand(50)
  puts "#{tamagushi.nome} tem #{tamagushi.idade} anos e esta #{tamagushi.humor}"
end