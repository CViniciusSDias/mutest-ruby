require_relative '../lib/calculadora_de_impostos'
require_relative '../lib/produto'

RSpec.describe CalculadoraDeImpostos do
  it "calcula imposto de produto tributavel" do
    produto = Produto.new(501);
    calculadora = CalculadoraDeImpostos.new
    imposto = calculadora.calcula(produto);
    expect(imposto).to eql 50.1
  end

  it "calcula imposto de produto isento" do
    produto = Produto.new(499);
    calculadora = CalculadoraDeImpostos.new
    imposto = calculadora.calcula(produto);
    expect(imposto).to eql 0
  end

  it "calcula imposto de produto de 500 reais" do
    produto = Produto.new(500);
    calculadora = CalculadoraDeImpostos.new
    imposto = calculadora.calcula(produto);
    expect(imposto).to eql 0
  end
end

