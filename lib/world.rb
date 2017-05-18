require_relative 'cell'

class World

  attr_reader :cells

  def initialize(x,y)
    @cells = []
    build_world(x,y)
  end

  def view
    @cells.map do |row|
      row.map do |cell|
        cell.alive ? 1 : 0
      end
    end
  end

  private

  def build_world(x,y)
    y.times { @cells << [] }
    @cells.each { |ary| x.times do ary << Cell.new end }
  end

end
