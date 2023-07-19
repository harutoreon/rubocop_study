require './spec/spec_helper'
require './lib/effects'

RSpec.describe 'effects spec' do
  context 'when reverse method' do
    it 'returns ybuR si !nuf' do
      effect = Effects.reverse
      expect(effect.call('Ruby is fun!')).to eq 'ybuR si !nuf'
    end
  end

  context 'when echo method' do
    it 'returns RRuubbyy iiss ffuunn!!' do
      effect = Effects.echo(2)
      expect(effect.call('Ruby is fun!')).to eq 'RRuubbyy iiss ffuunn!!'
    end

    it 'returns RRRuuubbbyyy iiisss fffuuunnn!!!' do
      effect = Effects.echo(3)
      expect(effect.call('Ruby is fun!')).to eq 'RRRuuubbbyyy iiisss fffuuunnn!!!'
    end
  end

  context 'when loud method' do
    it 'returns RUBY!! IS!! FUN!!!' do
      effect = Effects.loud(2)
      expect(effect.call('Ruby is fun!')).to eq 'RUBY!! IS!! FUN!!!'
    end

    it 'returns RUBY!!! IS!!! FUN!!!!' do
      effect = Effects.loud(3)
      expect(effect.call('Ruby is fun!')).to eq 'RUBY!!! IS!!! FUN!!!!'
    end
  end
end