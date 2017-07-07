class Word
  attr_reader(:word, :defition)
  @@words = []
  define_method(:initialize) do |attributes|
    @definitions = []
  end
  define_singleton_method(:all)do
    @@words
  end
end
