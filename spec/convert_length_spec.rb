require './spec/spec_helper'
require './lib/convert_length'

RSpec.describe 'LengthConvertSpec' do
  it 'returns 39.37' do
    expect(convert_length(1, from: :m, to: :in)).to eq 39.37
  end

  it 'returns 0.38' do
    expect(convert_length(15, from: :in, to: :m)).to eq 0.38
  end

  it 'returns 10670.73' do
    expect(convert_length(35_000, from: :ft, to: :m)).to eq 10_670.73
  end
end