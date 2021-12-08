require 'rspec'
require_relative 'room'

RSpec.describe Room do
  subject { described_class.new(coords) }

  context 'with a rectangle' do
    let(:coords) { [[0, 0], [0, 5], [3, 5], [3, 0], [0, 0]] }

    it 'calculates the correct area' do
      expect(subject.area).to eq(15)
    end
  end
end
