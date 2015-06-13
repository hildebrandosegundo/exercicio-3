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
valor = 2.50
bombaCombustivel = BombaCombustivel.new(tipo,valor)