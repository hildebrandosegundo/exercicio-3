class Retangulo
  attr_accessor :largura, :comprimento
  def area
    return @largura*@comprimento
  end
  def perimetro
    return 2*(@largura+@comprimento)
  end
  def lados(largura,comprimento)
    @largura = largura
    @comprimento = comprimento
  end
  def qtd_pisos(tamanho_piso)
    return (@largura*@comprimento)/(tamanho_piso**2)
  end
  def qtd_rodape(tamanho_piso)
    return (2*(@largura+@comprimento))/(tamanho_piso)
  end
end

puts "ensira o tamanho em metro de largura"
largura = gets.chomp.to_f
puts "ensira o tamanho em metro de comprimento"
comprimento = gets.chomp.to_f
puts "ensira o tamanho do piso"
piso = gets.chomp.to_f
ret = Retangulo.new
ret.lados(largura,comprimento)
puts "area: #{ret.area}"
puts "perimetro #{ret.perimetro}"
puts "qtd de pisos #{ret.qtd_pisos(piso)}"
puts "qtd de rodapés #{ret.qtd_rodape(piso)}"