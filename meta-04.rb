Fixnum.class_eval do 
  def par?
    self % 2 == 0
  end
end

puts 3.par? # false
puts 20.par? # true

# class_eval cria métodos de instancia
begin
  Fixnum.par? #erro
rescue => e
  puts "Relaxa, sumi com o erro"
end

Fixnum.instance_eval do
  def random_prime_number
    [2,3,5,7,11,13].shuffle.first
  end
end

puts Fixnum.random_prime_number