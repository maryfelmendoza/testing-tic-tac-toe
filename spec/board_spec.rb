require_relative '../lib/board'

RSpec.describe Board do
  subject(:board) { Board.new }

  context '#set_index' do
    it 'return true if the value is positioned on the board player 1' do
        (1...9).each do |index|
          expect(board.set_index(index, 1)).to eql(true)
        end
    end

    it 'return true if the value is positioned on the board player 2' do
        (1...9).each do |index|
          expect(board.set_index(index, 2)).to eql(true)
        end
    end

    it 'return false if is not posible to set' do
        expect(board.set_index(10, 1)).to eql(false)
    end
  end
end