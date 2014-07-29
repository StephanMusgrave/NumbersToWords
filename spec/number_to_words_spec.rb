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

  it 'should be able to convert 23 to twenty three' do
    expect(Words.convert(23)).to eq('twenty three')
  end

  it 'should be able to convert 99 to ninety nine' do
    expect(Words.convert(99)).to eq('ninety nine')
  end

  it 'should be able to convert 100 to one hundred' do
    expect(Words.convert(100)).to eq('one hundred')
  end

end