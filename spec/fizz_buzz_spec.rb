require './spec/spec_helper'
require './lib/fizz_buzz'

RSpec.describe 'fizz buzz spec' do
  it 'Return one when method argument is one' do
    expect(fizz_buzz(1)).to eq '1'
  end
  it 'Return two when method argument is two' do
    expect(fizz_buzz(2)).to eq '2'
  end
  it 'Return Fizz when method argument is three' do
    expect(fizz_buzz(3)).to eq 'Fizz'
  end
  it 'Return four when method argument is four' do
    expect(fizz_buzz(4)).to eq '4'
  end
  it 'Return Buzz when method argument is five' do
    expect(fizz_buzz(5)).to eq 'Buzz'
  end
  it 'Return Fizz when method argument is six' do
    expect(fizz_buzz(6)).to eq 'Fizz'
  end
  it 'Return Fizz Buzz when method argument is fifteen' do
    expect(fizz_buzz(15)).to eq 'Fizz Buzz'
  end
end