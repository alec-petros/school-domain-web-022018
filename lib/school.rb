# code here!
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].is_a? Array
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    keys = @roster.keys.sort
    output = {}
    keys.each do |x|
      output[x] = @roster[x].sort
    end
    output
  end
end
