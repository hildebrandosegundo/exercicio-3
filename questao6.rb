class Tv
  attr_accessor :canal, :volume
  def initialize(canal,volume)
    @canal=canal
    @volume=volume
  end
  def mudarCanal(canal)
    @canal = canal
  end
  def almentaVolume
    @volume += 1
  end
  def diminuiVolume
    @volume -= 1
  end
end
canal=4
volume = 50
tv = Tv.new(canal,volume)
desliga = false
while desliga==false do
 if (tv.canal>=0 && tv.canal<=20)
   tv.mudarCanal(Random.rand(30))
   if(Random.rand(1.0)<0.5)
     tv.diminuiVolume
   else
     tv.almentaVolume
   end
   puts "canal: #{tv.canal}"
   puts "Volume: #{tv.volume}"
 else
   desliga = true
end
end
