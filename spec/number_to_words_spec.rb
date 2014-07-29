require 'number_to_words'

describe Words do

  it 'should be able to convert 1 to One' do
    expect(Words.convert(1)).to eq('One')
  end

end