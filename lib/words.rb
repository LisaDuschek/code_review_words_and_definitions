class Words

  @@words = []

  define_method(:initialize) do |word|
   @definitions = []
   @id = @@words.length().+(1)
   @word = word
  end

  define_method(:word) do
    @word
  end

  define_method(:id) do
    @id
  end

  define_method(:definitions) do
    @definitions
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id() == id.to_i
        found_word = word
      end
    end
      found_word
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end












end
