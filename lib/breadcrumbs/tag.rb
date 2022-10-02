require "jekyll"
require_relative "./template"
require_relative "./list"

module Breadcrumbs
  class Tag < Liquid::Tag
    def initialize(_, name, _)
      @name = name.strip
    end

    def render(context)
      root = context.registers[:site].config["source"]
      template = Breadcrumbs::Template.new(root).load
      Liquid::Template.parse(template).render(
        {
          "breadcrumbs" => Breadcrumbs::List.new(context.registers[:site].config["breadcrumbs"]).to_a(@name)
        }
      )
    end

    Liquid::Template.register_tag "breadcrumbs", self
  end
end
