class LRUCache
   def initialize(max)
     @max = max
     @cache = []
   end

   def count
     @cache.length
   end

   def add(el)
     @cache.shift if count == max
     @cache << el

   end

   def show
     p @cache
   end

   private
   # helper methods go here!

 end
