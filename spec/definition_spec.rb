require('rspec')
require('word')
require('definition')
require('word')

describe('Definition')do
  before()do
    Definition.clear()
  end
  describe('.clear')do
    it("ensures that the definition is empty at first")do
      expect(Definition.clear()).to(eq([]))
    end
  end

describe('.all')do
  it("shows all words' definitions")do
  definition = Definition.new("a farm animal")
  definition.save()
  expect(Definition.all()).to(eq([definition]))
  end
end

describe('#save')do
  it("saves a definition")do
    definition = Definition.new("a hairy pet")
    definition.save()
    expect(Definition.all()).to(eq([definition]))
  end
end

end
