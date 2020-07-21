class CalculadoraDeImpostos
    def calcula(produto)
        if produto.preco > 500
            return produto.preco * 0.1
        end

        0
    end
end
