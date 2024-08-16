require './spec/spec_helper'
require './lib/word_synth'
require './lib/effects'

RSpec.describe 'WordSynthSpec' do
  context 'when play without effects' do
    it 'returns Ruby is fun!' do
      synth = WordSynth.new
      expect(synth.play('Ruby is fun!')).to eq 'Ruby is fun!'
    end
  end

  context 'when play with reverse' do
    it 'returns ybuR si !nuf' do
      synth = WordSynth.new
      synth.add_effect(Effects.reverse)
      expect(synth.play('Ruby is fun!')).to eq 'ybuR si !nuf'
    end
  end

  context 'when play with many effects' do
    it 'returns !!!YYBBUURR !!!SSII !!!!!NNUUFF' do
      synth = WordSynth.new
      synth.add_effect(Effects.echo(2))
      synth.add_effect(Effects.loud(3))
      synth.add_effect(Effects.reverse)
      expect(synth.play('Ruby is fun!')).to eq '!!!YYBBUURR !!!SSII !!!!!NNUUFF'
    end
  end
end