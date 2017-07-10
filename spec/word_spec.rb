require('rspec')
require('word')
require('definition')

describe('word')do
  before() do
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

describe('#id')do
  it("displays all words")do
    word1 = Word.new("sugar")
    word1.save()
    word2 = Word.new("cream")
    word2.save()
    expect(word1.id()).to(eq(1))
    expect(word2.id()).to(eq(2))
  end
end

describe('#get_word')do
  it("gets string input from word object")do
    word = Word.new("house")
    word.save()
    expect(word.get_word).to(eq("house"))
  end
end

describe('find')do
  it("finds word object from name by word id")do
    word = Word.new("chicken")
    word.save()
    expect(Word.find(word.id())).to(eq(word))
  end
end

describe('#add_definition')do
    it("adds definition to a word")do
    word1 = Word.new("shoe")
    word1.save()
    definition1 = Definition.new("Your foot wear.")
    definition1.save()
    word1.add_definition(definition1)
    definition2 = Definition.new("really")
    definition2.save()
    word1.add_definition(definition2)
    expect(word1.get_definitions()).to(eq(["Your foot wear.", "really"]))
  end
end

end
