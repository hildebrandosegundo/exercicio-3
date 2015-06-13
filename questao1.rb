class Bola
  attr_accessor :cor, :circunferencia, :material

  def trocaCor(cor)
    @cor = cor
  end
  def mostraCor
    return @cor
  end
end

bola = Bola.new
bola.trocaCor(gets.chomp.to_s)

puts bola.mostraCor