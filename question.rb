class Question

  attr_accessor :first_num, :second_num, :ans

  def initialize
    @first_num = rand(1..10)
    @second_num = rand(1..10)
    @ans = @first_num + @second_num
  end

end
