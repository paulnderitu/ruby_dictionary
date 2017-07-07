require('rspec')
require('word')

describe('.all')do
  it("shows all words pushed in the words array")do
    word1 = Word.new("cow")
    word1.save()
    expect(Word.all()).to(eq([word1]))
  end
  describe('#save')do
    it("saves a new word to the words array")do
    word1 = Word.new("cat")
    word1.save()
    expect(Word.all()).to(eq([word1]))
  end
end
dwescribe(".clear")do
  it("emptys all the saved word instances")do
    expect(Word.clear()).to(eq([]))
  end
end
end

# describe('.clear') do
#  +    it("is empty at first") do
#  +      expect(Word.clear()).to(eq([]))
#  +    end
