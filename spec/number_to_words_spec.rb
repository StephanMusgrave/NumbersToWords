require 'number_to_words'

describe Words do

  it 'should be able to convert 1 to one' do
    expect(Words.convert(1)).to eq('one')
  end

  it 'should be able to convert 2 to two' do
    expect(Words.convert(2)).to eq('two')
  end

  it 'should be able to convert 19 to nineteen' do
    expect(Words.convert(19)).to eq('nineteen')
  end

  it 'should be able to convert 20 to twenty' do
    expect(Words.convert(20)).to eq('twenty')
  end

  it 'should be able to convert 90 to ninety' do
    expect(Words.convert(90)).to eq('ninety')
  end


end