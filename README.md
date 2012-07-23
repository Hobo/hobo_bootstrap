hobo_bootstrap
==============

This is a theme for Hobo 1.4 (http://www.hobocentral.net) that implements the Bootstrap library (http://twitter.github.com/bootstrap/).

[![front][1]][1]
[![login][2]][2]


Install instructions
====================

Add this to your Gemfile

    gem "hobo_bootstrap", :git => "git://github.com/suyccom/hobo_bootstrap.git"
    group :assets do
      # ... Other stuff ... #
      gem 'compass_twitter_bootstrap', :git => 'git://github.com/wyuenho/compass-twitter-bootstrap'
      gem 'compass-rails'
    end
    
Run bundle to get the gems

    bundle
    
Rename front.css to front.scss so you can bootstrap and hobo_bootstrap like this:

    /*
     * This is the stylesheet manifest file for the front subsite (which
     * is your whole application if you don't have any subsites).  Files
     * or plugins referenced from here or placed in the front/ directory
     * will be included.
     *
     *= require_self
     *= require application
     *= require hobo_rapid
     *= require hobo_jquery
     *= require hobo_jquery_ui
     *= require jquery-ui/redmond
     *= require hobo_bootstrap
     *= require hobo_bootstrap_docs
     *= require hobo_bootstrap_responsive
     *= require_tree ./front
    */
    @import "compass_twitter_bootstrap";
    
Load bootstrap javascripts in app/assets/front.js, for example:

    //= require bootstrap-collapse
    
Change the theme in app/views/taglibs/front_site.dryml:

    <include gem='hobo_bootstrap'/>
    
    
  [1]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/agility-1.png
  [2]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/agility-4.png
  
  
  
Notes
=====

Right now, you still need to keep "hobo_clean" in your Gemfile if you want to use the Ajax search enabled by default in Hobo.
