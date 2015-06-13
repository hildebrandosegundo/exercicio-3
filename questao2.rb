class Quadrado
  attr_accessor :lados
  def mudarLado(lado)
    @lados = lado
  end
  def retLado
    return @lados
  end
  def area
    return @lados**2
  end
end

quad = Quadrado.new

quad.mudarLado(gets.chomp.to_i)

puts quad.retLado
puts quad.area
