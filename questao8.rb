class Macaco
  attr_accessor :nome, :bucho
  def comer(alimento)
    @bucho = alimento
  end
  def verBucho
    @bucho
  end
  def digerir
    @bucho = nil
  end

end
macaco1 = Macaco.new
macaco2 = Macaco.new
alimento = ["banana","manga","uva","maça","pêssego","pêra"]
3.times do
 al1 = alimento[Random.rand(5)]
 al2 = alimento[Random.rand(5)]
 macaco1.comer(al1)
 macaco2.comer(al2)
 puts "macaco 1:"
 puts macaco1.verBucho
 puts "macaco 2:"
 puts macaco2.verBucho
  macaco1.digerir
  macaco2.digerir
end
puts "é possivel um macaco comer o outro?"
macaco1.comer(macaco2)
puts macaco1.verBucho
