require('rspec')
require('word')

describe('.all')do
  it("shows all words pushed in the words array")do
    word1 = Word.new("cow")
    word1.save()
    expect(Word.all()).to(eq([word1]))
  end
end
