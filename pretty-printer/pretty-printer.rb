require 'date'

class PrettyPrinter

  def print(param)
    param.each do |x|
      if x.class == Array
        puts "Array:"
        puts x
      elsif x.class == Hash
        puts "Hash:"
        x.each do |key, value|
          puts key.to_s + ' => ' + value
        end
      elsif x.to_s.include?('#') == true && x.class != String
        puts "An object I don't know how to print."
      elsif 
        puts x
      end
    end
  end

end

a_hash = {key: "value", other_key: "other_value"}
a_date = Date.today
class B
end
PrettyPrinter.new.print([B.new])
# PrettyPrinter.new.print(["My", 3, a_hash, a_date, ["Pied", "Piper"] ])