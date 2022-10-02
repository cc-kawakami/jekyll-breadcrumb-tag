module Breadcrumbs
  class List
    def initialize(all)
      @all = all
    end

    def to_a(name)
      list = []
      list << @all.find { |b| b["name"] == name }
      loop do
        if list.first["parent"]
          list.prepend(@all.find { |b| b["name"] === list.first["parent"] })
        else
          break
        end
      end
      list
    end
  end
end
