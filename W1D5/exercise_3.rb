class Map

  def initialize
    @store = []
  end

  def assign(key,value)
    @store << [key,value] if !@store.include?([key,value])
  end

  def lookup(key)
    @store.select {|array| array.first == key}.first
  end

  def remove(key)
    @store.reject! {|array| array.first == key}
  end

  def show
    deep_dup(@store)
  end

  private
  deep_dup(array)
    array.map do |el|
      if el.is_a?(Array)
        deep_dup(el)
      else
        el
      end
    end


end
