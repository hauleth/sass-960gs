960 Grid System - Standalone
============================

960.gs is created by Nathan Smith. See the official site for more info: <http://960.gs/>

> This plugin is consistent with latest version of 960.gs as of 3/19/2012

Install
=======

    gem install sass-960gs

Adding the 960 to an existing project
=====================================

Then make sure you have imported the grid library into your core .sass or .scss file with:

    @import '960';

If you use so (even when using assets pipeline) you will have full control about your grid.

Adding the 960.gs to your Rails 3 assets pipeline
=================================================

In your `application.css` add

     *= require 960

It will give you access to fully operational `.grid.fixed` and `.grid.fluid` layout without
any modifications except adding chosen class to your `body`.

You can always choose only one of the grids using

    *= require 960-fluid

or

    *= require 960-fixed

Customizing your Grid System
============================

This plugin uses the following configuration variables:

* Global:
  * `$ninesixty-columns` (default: 12) count of grid columns
  * `$ninesixty-class-separator` (default: `_`) separator for generated classes
* Fixed grid:
  * `$ninesixty-gutter-width` (default: 20px) default gutter width
  * `$ninesixty-grid-width` (default: 960px) default width of the grid container
* Fluid grid
  * `$ninesixty-fluid-gutter-margin` (default: 2%) default gutter width for fluid grid
  * `$ninesixty-fluid-grid-width` (default: 92%) default width of the fluid grid container
  * `$ninesixty-fluid-grid-margin` width of container margin
  * `$ninesixty-fluid-grid-min-width` (default: 960px) default minimum width of container

All of the mixins included with this plugin use these configuration variables
as defaults if the corresponding argument is omitted from a mixin call.

Class-Based Grid System
=======================

To create a grid system that works like the original 960 Grid System framework
use the `@include grid-system-complete` mixin to generate the corresponding
classes. You can also customize the number of columns as demonstrated:

Example:

    @include grid-system-complete(24);

If you want to scope the grid inside a specific set of selectors or control
your container class' name you can use the `+grid-system` mixin instead.

Example:

    #wrap {
      .my_container {
        @include grid-system(16);
      }
    }

This will render all of the grid system nested below your selector, replacing 
the normal function of the container class (would be .container_16 in this example).

Making Semantic Grids
=====================

To create a grid system using only CSS, use the following semantic grid mixins:

* Use the `@include grid-container` mixin to declare your container element.
* Use the `@include grid(N, columns, gutter-width)` mixin to declare a grid
  element.
* Use the `@include alpha` and `@include omega` mixins to declare the first
  and last grid elements for a row.
* Use the `@include grid-prefix(N, columns)` and `@include grid-suffix(N, columns)`
  mixins to add empty grid columns before or after a grid element.
* Use the `@include grid-push(N, columns)` and `@include grid-pull(N, columns)`
  mixins to move a grid element from its default position.

`N` is the number of grid columns to span as in `grid_N` or `push_N` with
the original 960 Grid System framework.

Example:

    $ninesixty-columns: 16

    #wrap {
      @include grid-container
      #header {
        @include grid(16);
      }
      #middle {
        @include grid(16);
        #left-nav {
          @include grid(5);
          @include alpha;
        }
        #main-content {
          @include grid-prefix(1);
          @include grid(10);
          @include omega;
        }
      }
    }

Authors/Contributors
====================

[Nathan Smith](http://sonspring.com/) is the author of [960.gs](http://960.gs/),
the grid system this plugin is based on. He's also kind enough to let us pester
him with questions from time to time.
