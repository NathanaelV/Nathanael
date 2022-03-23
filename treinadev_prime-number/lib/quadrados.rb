class Quadrados
  def initialize(num)
    @num = num
  end

  def quadrado_da_soma
    primos = numeros_primos
    soma = primos.sum
    soma * soma
  end

  def soma_dos_quadrados
    primos = numeros_primos
    quadrado = primos.map { |n| n*n }
    quadrado.sum
  end

  def diferenca
    quadrado_da_soma - soma_dos_quadrados
  end

  private

  def numeros_primos
    numero = 2
    primos = [2]

    loop do

      break if primos.length == @num
      numero += 1

      (0..primos.length-1).each_with_index do |n,i|
        if numero % primos[n] == 0
          break
        elsif !primos.include?(numero) && i == primos.length-1
          primos << numero
        end
      end
      
      primos.length
    end
    primos
  end
end
