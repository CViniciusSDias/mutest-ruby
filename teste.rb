require "produto.rb"
require "calculadora_de_impostos.rb"

produto = Produto.new(500)
calculadora = CalculadoraDeImpostos.new

puts calculadora.calcula(produto)
