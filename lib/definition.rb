class Definition
  attr_reader(:definition)
  @@definitions = []
  define_method(:initialize) do |attributes|
  end

  define_singleton_method(:clear)do
    @@definitions = [     s]
  end
  
  define_singleton_method(:all)do
    @@definitions
  end
  define_method(:save)do
    @@definitions.push(self)
  end

end
