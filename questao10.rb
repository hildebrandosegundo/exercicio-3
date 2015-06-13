class BombaCombustivel
  attr_accessor :tipoCombustivel, :valorLitro, :qtdCombustivel
  def initialize(tipo,valor,qtd=1000)
    @tipoCombustivel = tipo
    @valorLitro = valor
    @qtdCombustivel = qtd
  end
  def abastecerPorValor(valor)
    abs = valor/@valorLitro
    self.alterarQuantidadeCombustivel(abs)
    return abs
  end
  def abatecerPorlitro(litro)
    abs = litro*@valorLitro
    self.alterarQuantidadeCombustivel(abs)
    return abs
  end
  def alterarValor(valor)
    @valorLitro = valor
  end
  def alterarCombustivel(tipo)
    @tipoCombustivel = tipo
    @qtdCombustivel = 1000
  end
  def alterarQuantidadeCombustivel(valor)
    if(@qtdCombustivel != 0)
      @qtdCombustivel -= valor
    end
  end
end
tipo = ["gasolina", "diesel", "alcool"]
t = tipo[1]
valor = 2.50
bombaCombustivel = BombaCombustivel.new(t,valor)
bombaCombustivel.alterarValor(2.80)
puts bombaCombustivel.tipoCombustivel
puts "valor pago por litro: #{bombaCombustivel.abatecerPorlitro(20)}"
puts bombaCombustivel.qtdCombustivel
puts "qtd de litros por valor: #{bombaCombustivel.abastecerPorValor(50)}"
puts bombaCombustivel.qtdCombustivel
t = tipo[0]
bombaCombustivel.alterarValor(3.12)
bombaCombustivel.alterarCombustivel(t)
puts bombaCombustivel.tipoCombustivel
puts "valor pago por litro: #{bombaCombustivel.abatecerPorlitro(50)}"
puts bombaCombustivel.qtdCombustivel
puts "qtd de litros por valor: #{bombaCombustivel.abastecerPorValor(150)}"
puts bombaCombustivel.qtdCombustivel