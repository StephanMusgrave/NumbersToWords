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
  
  it 'should be able to convert 23 to twenty three' do
    expect(Words.convert(23)).to eq('twenty three')
  end

  it 'should be able to convert 90 to ninety' do
    expect(Words.convert(90)).to eq('ninety')
  end

    it 'should be able to convert 99 to ninety nine' do
    expect(Words.convert(99)).to eq('ninety nine')
  end

  it 'should be able to convert 100 to one hundred' do
    expect(Words.convert(100)).to eq('one hundred')
  end
  
  it 'should be able to convert 101 to one hundred and one' do
    expect(Words.convert(101)).to eq('one hundred and one')
  end

  it 'should be able to convert 119 to one hundred and nineteen' do
    expect(Words.convert(119)).to eq('one hundred and nineteen')
  end
  
  it 'should be able to convert 120 to one hundred and twenty' do
    expect(Words.convert(120)).to eq('one hundred and twenty')
  end

  it 'should be able to convert 123 to one hundred and twenty three' do
    expect(Words.convert(123)).to eq('one hundred and twenty three')
  end

  it 'should be able to convert 900 to nine hundred' do
    expect(Words.convert(900)).to eq('nine hundred')
  end

  it 'should be able to convert 999 to nine hundred and ninety nine' do
    expect(Words.convert(999)).to eq('nine hundred and ninety nine')
  end
  
end