require 'rspec'
require_relative 'coord_maker'

RSpec.describe CoordMaker do
  subject { CoordMaker.new(vectors) }

  context 'with a single vector' do
    let(:vectors) { [['N', 4]] }

    it 'returns (0,0) and (0,4)' do
      expect(subject.coords).to contain_exactly([0, 0], [0, 4])
    end
  end
end
