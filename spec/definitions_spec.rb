require('rspec')
require('words')
require('definitions')

describe(Definitions) do

  before() do
    Words.clear()
    Definitions.clear()
  end


describe(".all") do
    it("returns the empty array of @@definitions") do
      expect(Definitions.all()).to(eq([]))
    end
  end


describe('#id') do
    it('returns the id of definition') do
      test_definition = Definitions.new()
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('#save') do
    it('adds definition to array of definitions') do
      test_definition = Definitions.new()
      test_definition.save()
      expect(Definitions.all()).to(eq([test_definition]))
    end
  end

  describe('.find') do
    it('finds the definition by its id number') do
      test_definition = Definitions.new("blabla")
      test_definition.save()
      test_definition2 = Definitions.new("blubblub").save()
      expect(Definitions.find(test_definition.id())).to(eq(test_definition))
    end
  end



  describe(".clear") do
    it("empties out all of the saved definitions") do
      test_definition = Definitions.new()
      test_definition.save()
      Definitions.clear()
      expect(Definitions.all()).to(eq([]))
    end
  end



end
