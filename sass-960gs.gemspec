# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sass-960gs}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5")
  s.authors = ["Chris Eppstein", "Matt Sanders", "Łukasz Niemier"]
  s.date = %q{2012-03-19}
  s.description = %q{The 960 Grid System is an effort to streamline web development workflow by providing commonly used dimensions, based on a width of 960 pixels. http://960.gs/}
  s.email = %w{chris@eppsteins.net matt@modal.org lukasz@niemier.pl}
  s.has_rdoc = false
  s.files = %w{
    README.md
    sass-960gs.gemspec
    app/assets/stylesheets/_960.scss
    app/assets/stylesheets/960/_fixed_grid.scss
    app/assets/stylesheets/960/_fluid_grid.scss
    app/assets/stylesheets/960/_text.scss
    app/assets/stylesheets/960/_variables.scss
  }
  s.homepage = %q{https://github.com/Hauleth/sass-960gs}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Standalone SCSS port of 960.gs.}
end
