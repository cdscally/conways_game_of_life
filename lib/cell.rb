require_relative 'world'

class Cell

  attr_reader :alive

  def initialize
    @alive = false
  end

  def switch
    @alive ? @alive = false : @alive = true
  end


end
