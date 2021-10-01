class Student
  attr_reader :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def introduce
    "私は#{@name}です。年齢は#{@age}歳です。"
  end
end
