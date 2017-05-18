require 'cell'

describe Cell do

  it 'should live/die' do
    cell = Cell.new
    expect{ cell.switch }.to change {cell.alive}.from(false).to(true)
  end



end
