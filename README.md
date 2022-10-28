# Jekyll Breadcrumbs Tag

Breadcrumbs tag for Jekyll.

## Installation

Add this line to your application's Gemfile:

```ruby

group :jekyll_plugins do
  gem "jekyll-breadcrumbs-tag", github: "cc-kawakami/jekyll-breadcrumbs-tag"
end
```

```
bundle
```

```yml
# _config.yml
plugins: [jekyll-breadcrumbs-tag]
```

## Usage

`_config.yaml`:

```yaml
breadcrumbs:
  -
    name: top
    link: /
    text: Top Page
  -
    name: about
    link: /about
    text: About Page
    parent: top
```


```html
<%= breadcrumbs about %>
```

Custom template `_includes/breadcrumbs.html`:

```html
{% for breadcrumb in breadcrumbs %}
  {% if forloop.first == false %}&nbsp;>&nbsp;{% endif %}<a href="{{ breadcrumb.link }}">{{ breadcrumb.text }}</a>
{% endfor %}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).
