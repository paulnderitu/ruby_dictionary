require('rspec')
require('word')
require('definition')

describe('word')do
  before()do
    Word.clear()
  end

describe(".clear")do
  it("emptys all the saved word instances")do
    expect(Word.clear()).to(eq([]))
  end
end

describe('#save')do
  it("saves a new word to the words array")do
  word1 = Word.new("cat")
  word1.save()
  expect(Word.all()).to(eq([word1]))
  end
end

describe('.all')do
  it("shows all words pushed in the words array")do
    word1 = Word.new("cow")
    word1.save()
    expect(Word.all()).to(eq([word1]))
  end
end

describe('#add_definition')do
    it("adds definition to a word")do
    word1 = Word.new("shoe")
    word1.save()
    definition1 = Definition.new("Your foot wear.")
    definition1.save()
    word1.add_definition(definition1)
    expect(word1.get_definition()).to(eq([definition1]))
  end
end

end
