require_relative "../../lib/breadcrumbs/list"

RSpec.describe Breadcrumbs::List do
  describe "to_a" do
    list = Breadcrumbs::List.new([
      {"name" => "top"},
      {"name" => "about", "parent" => "top"},
      {"name" => "contact", "parent" => "top"}
    ])

    it_is_asserted_by {
      list.to_a("about") == [
        {"name" => "top"},
        {"name" => "about", "parent" => "top"}
      ]
    }
  end
end
