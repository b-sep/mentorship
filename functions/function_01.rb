puts 'Digite o seu nome: '
nome = gets.chomp

puts 'Digite o seu sobrenome: '
sobrenome = gets.chomp

puts 'Digite sua idade: '
idade = gets.chomp.to_i

puts 'Digite sua altura: '
altura = gets.chomp.to_f

puts 'Digite seu peso: '
peso = gets.chomp.to_f

def imprime_linha(tamanho)
  puts '_' * tamanho
end

def nome_completo(nome, sobrenome)
  "#{nome} #{sobrenome}"
end

def validador_idade(idade)
  case idade
  when (...18)
    'Menor de idade.'
  when (18..)
    'Maior de idade.'
  end
end

def imc(peso, altura)
  imc = peso / (altura * altura)
  
  # case imc
  # when (..18.5) === imc
  #   "Seu imc é #{imc} e você está na classificação magreza"
  # when (18.6..24.9) === imc
  #   "Seu imc é #{imc} e você está na classificação normal"
  # when (25..29.9) === imc
  #   "Seu imc é #{imc} e você está na classificação sobrepeso"
  # when (30..39.9) === imc
  #   "Seu imc é #{imc} e você está na classificação obesidade"
  # when (40..) === imc
  #   "Seu imc é #{imc} e você está na classificação obesidade grave"
  # end

  if (..18.5) === imc
    "Seu imc é #{imc.round(2)} e você está na classificação magreza"
  elsif (18.5..24.9) === imc
    "Seu imc é #{imc.round(2)} e você está na classificação normal"
  elsif (25..29.9) === imc
    "Seu imc é #{imc.round(2)} e você está na classificação sobrepeso"
  elsif (30..39.9) === imc
    "Seu imc é #{imc.round(2)} e você está na classificação obesidade"
  elsif (40..) === imc
    "Seu imc é #{imc.round(2)} e você está na classificação obesidade grave"
  end
end

prontuario = <<~PRONT
  Nome Completo: #{nome_completo(nome, sobrenome)}
  Idade: #{idade}. #{validador_idade(idade)}
  IMC: #{imc(peso, altura)}
PRONT

imprime_linha(200)
imprime_linha(200)
puts prontuario
