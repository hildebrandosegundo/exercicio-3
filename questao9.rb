class Ponto
	attr_accessor :x, :y

	def initialize(x,y)
		@x = x
		@y = y
	end

	def to_s
		%Q{X: #{@x}, Y: #{@y}}
	end
end

class Retangulo
	attr_accessor :altura, :largura

	def initialize(altura,largura)
		@altura = altura
		@largura = largura
	end

	def centro_retangulo
	    x = @altura/2
	    y = @largura/2
	    Ponto.new x,y 
	end

	def vertice(vertice)
	    case vertice
		    when :superior_esquerdo then Ponto.new(0,altura)
		    when :superior_direita then Ponto.new(largura,altura)
		    when :inferior_esquerdo then  Ponto.new(0,0)
		    when :inferior_direito then Ponto.new(largura,0)
	    end
	end
end


ponto1 = Ponto.new 10,20 
puts ponto1

retangulo1 = Retangulo.new 50, 20
puts retangulo1.centro_retangulo
puts "vertice esquerdo"
puts retangulo1.vertice(:inferior_direito)

retangulo2 = Retangulo.new 30, 60
puts retangulo2.centro_retangulo
puts "vertice direito"
puts retangulo2.vertice(:inferior_esquerdo)

retangulo3 = Retangulo.new 80, 40
puts retangulo3.centro_retangulo



