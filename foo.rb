require 'pry'
class Foo
winning_array = [['x', 'x', 'x', 'x'],['.', '.', 'x']]

  def win?
    # trying to say: if the below .find is successful in returning an array
    # with only 'x', the player has won. elsif
    if winning_array.find { |win| win.uniq = "x" }
      true
    elsif
      false
    end
  end

  def loss?
    if winning_array.find { |loss| loss.uniq = "x" }
      true
    elsif
      false
    end
  end
  binding.pry
end
