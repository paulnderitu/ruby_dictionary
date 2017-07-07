require('rspec')
require('word')
require('definition')

describe('.all')do
  it("shows all words' definitions")do
  definition = Definition.new("a farm animal")
  definition.save()
  expect(Definition.all()).to(eq([definition]))
  end
end
