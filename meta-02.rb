class X9
  def self.inherited (new_class)
    puts "Opa!!!! Nova classe extendendo a X9: #{new_class}"
  end
end

class Foo < X9

end


Foo.new