class Word
  attr_reader(:word, :defition)
  @@words = []
  define_method(:initialize) do |attributes|
    @definitions = []
  end
end
