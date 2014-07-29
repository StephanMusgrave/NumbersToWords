require 'number_to_words'

describe Words do

  it 'should be able to convert 1 to one' do
    expect(Words.convert(1)).to eq('one')
  end

  it 'should be able to convert 2 to two' do
    expect(Words.convert(2)).to eq('two')
  end

end