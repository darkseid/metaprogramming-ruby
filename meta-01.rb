class Foo

  def say_hi
    puts "[Foo] Hi"
  end

  # Se não encontra 
  def say_hello
    puts "[Foo] Hello"
  end

  def method_missing(m, *args, &block)
    method_name = m.to_s
    if method_name.start_with?("say_")
      suffix = method_name.split("_")[1]
      puts "[Foo] #{suffix}"
    end
  end

end

class Bar < Foo

  def say_hello
    puts "[Bar] Hello"
  end

  # def method_missing(m, *args, &block)
  #   puts "Nao vou deixar dar erro"
  # end

end

# Se nao encontra o metodo na classe, verifica na superclasse (e vai subindo até Object)
Bar.new.say_hi  

# Se acha na classe, usa ele
Bar.new.say_hello

# Se nao achar na classe, chama o method missing
Bar.new.say_Ola
Bar.new.say_parangaricutirimirruaro

# Resumo da hierarquia de chamada dos métodos:
# 1) Procura um metodo na classe alvo
# 2) Se não achar, procura o method_missing
# 3) Se não tiver, vai para a classe pai e recomeça
