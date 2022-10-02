module Breadcrumbs
  class Template
    def initialize(root)
      @root = root
    end

    def load
      custom = File.join(@root, "_includes", "breadcrumbs.html")
      if File.exist?(custom)
        File.read(custom)
      else
        File.read(File.join(__dir__, "template.html"))
      end
    end
  end
end
