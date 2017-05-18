require 'world'

describe World do

  subject(:world) { described_class.new(3,3) }

  it 'should accept dimensions' do
    expect(world.cells.count).to eq 3
    expect(world.cells.last.count).to eq 3
  end

  it 'should locate a cell' do
    expect(world.cells[0][0].alive).to eq false
  end

  it 'should display the world' do
    expect(world.view).to eq ([[0,0,0],[0,0,0],[0,0,0]])
  end

end
