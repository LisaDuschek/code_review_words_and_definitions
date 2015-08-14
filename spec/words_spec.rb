require("rspec")
require("words")
require("definitions")

describe(Words) do

  before()do
    Words.clear()
    Definitions.clear()
  end

  describe(".all") do
    it("returns the empty array of @@words") do
      expect(Words.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a word to the array of saved words") do
      test_word = Words.new("food")
      test_word.save()
      expect(Words.all()).to(eq([test_word]))
    end
  end

  describe("#definitions") do
    it("adds a definition to a word") do
      test_word = Words.new("food")
      test_word.save()
      expect(test_word.definitions()).to(eq("food"))
    end
  end

  describe(".clear") do
    it("clears words entries") do
      test_word = Words.new("food")
      test_word.save()
      Words.clear
      expect(Words.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the word") do
      test_word = Words.new("food")
      test_word.save
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('return word by id number') do
      test_word = Words.new("food")
      test_word.save()
      test_word2 = Words.new("other food")
      test_word2.save()
      expect(Words.find(test_word.id())).to(eq(test_word))
    end
  end

  describe("#definitions") do
    it("returns an empty array of definitions for an entry in the @@words-array") do
      test_word = Words.new("food")
      expect(test_word.definitions()).to(eq([]))
    end
  end




describe("add_definition") do
    it("adds a new definition to a word") do
      test_definition = Definitions.new()
      test_word = Words.new("food")
      test_definition = Definition.new("awesome")
      test_word.add_definition(test_definition)
      expect(test_word.add_definition()).to(eq([test_definition]))
    end
  end















end
