require './spec/spec_helper'
require './lib/rgb'

RSpec.describe 'RGB convert' do
  context 'Convert ints to hex' do
    it 'returns #000000' do
      expect(to_hex(0, 0, 0)).to eq '#000000' 
    end
    it 'returns #ffffff' do
      expect(to_hex(255, 255, 255)).to eq '#ffffff'
    end
    it 'returns #043c78' do
      expect(to_hex(4, 60, 120)).to eq '#043c78'
    end
  end
  context 'Convert hex to ints' do
    it 'returns [0, 0, 0]' do
      expect(to_ints('#000000')).to eq [0, 0, 0]
    end
    it 'returns [255, 255, 255]' do
      expect(to_ints('#ffffff')).to eq [255, 255, 255]
    end
    it 'returns [4, 60, 120]' do
      expect(to_ints('#043c78')).to eq [4, 60, 120]
    end
  end
end