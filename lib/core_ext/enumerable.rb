unless Enumerable.instance_methods.include? :shape

  module Enumerable
    def shape
      total = []
      a = self
      while a.respond_to?(:count)
        total << a.count
        a = a.first
      end
      total
    end
  end

end
