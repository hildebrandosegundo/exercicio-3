class ContaCorrente
  attr_accessor :numero_conta, :nome, :saldo
  def initialize(num_conta,nome,saldo=0)
    @numero_conta = num_conta
    @nome = nome
    @saldo = saldo
  end
  def alterarNome(nome)
    @nome = nome
  end
  def deposito(dep)
    @saldo += dep
  end
  def saque(saq)
    @saldo -= saq
  end

end
puts "numero da conta:"
num_conta = gets.chomp
puts "seu nome:"
nome = gets.chomp

conta = ContaCorrente.new(num_conta,nome)

puts "alteracao de nome:"
 conta.alterarNome(gets.chomp)
puts "deposito:"
 conta.deposito(gets.chomp.to_f)
puts "saque:"
 conta.saque(gets.chomp.to_f)
puts "numero da conta:"
puts conta.numero_conta
puts "nome:"
puts conta.nome
puts "saldo atual:"
puts conta.saldo


