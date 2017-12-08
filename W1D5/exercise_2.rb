class Queue

  def initialize
    @store = []
  end

  def queue(el)
    @store.unshift(el)
  end

  def dequeue
    @store.pop
  end

  def show
    @store.dup
  end
end
