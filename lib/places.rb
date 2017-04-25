class Place

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name_of_places) do
    @name
  end

  define_singleton_method(:all) do
    []
  end
end
