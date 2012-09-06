hobo_bootstrap
==============
<hr/>

This is a theme for Hobo 1.4 (http://www.hobocentral.net) that implements the Bootstrap library (http://twitter.github.com/bootstrap/).

[![index][1]][1]
[![login][2]][2]



Install instructions
====================
<hr/>

Add this to your Gemfile

```ruby
    gem "hobo_bootstrap", :git => "git://github.com/suyccom/hobo_bootstrap.git"
    gem 'will_paginate-bootstrap'
    group :assets do
      # ... Other stuff ... #
      gem 'compass_twitter_bootstrap', :git => 'git://github.com/wyuenho/compass-twitter-bootstrap'
      gem 'compass-rails'
    end
```

Run bundle to get the gems

```bash
    bundle
```

Rename front.css to front.scss so you can bootstrap and hobo_bootstrap like this:

```ruby
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
```

Load bootstrap javascripts in app/assets/front.js, for example:

```javascript
    //= require bootstrap-all
```

Alternatively, you could require bootstrap-collapse and bootstrap-alert, since those are the only two javascript components that this theme currently requires.   However, we do plan on supporting more in the future.

Change the theme in app/views/taglibs/front_site.dryml:

```xml
    <include gem='hobo_bootstrap'/>
```
    




Two main menu options
=====================
<hr/>

By default, hobo_bootstrap puts every option in the top menu, like this:

[![top_menu][3]][3]


But you can also use a sub menu, like the one in the bootstrap documentation:
[![sub_menu][4]][4]

In order to enable the sub meny, add these lines to your front_site.dryml:

```xml
    <extend tag="page">
      <old-page merge nav-location="sub">
    </extend>
```




Responsive template
===================
<hr/>

This theme includes the bootstrap responsive CSS, which makes it work nicely with mobile phones. For example:

[![responsive][5]][5]



Complex forms
=============
<hr/>

By default, forms only have one column. But many you need more complex forms. Take a look at these examples:

**Two columns example**

[![two_columns][6]][6]

```xml
    <new-page>
      <form:>
        <field-list: columns="2"/>
      </form:>
    </new-page>
```

**Three columns, aside and double sized fields**

[![three_columns_complex][7]][7]

```xml
    <new-page content-size="9">

      <aside:>
        Hola! Soy el aside :)
      </aside:>


      <form:>
        <field-list: replace>
          <field-list size="9" columns="3" fields="name, end_date, codigo_postal"/>

          <div class="row columns">
            <div class="span6">
              <single-field-list fields="description"/>
            </div>
            <div class="span3">
              <single-field-list fields="responsable"/>
            </div>
          </div>

          <div class="row columns">
            <div class="span6">
              <single-field-list fields="description"/>
            </div>
            <div class="span3">
              <single-field-list fields="responsable"/>
            </div>
          </div>

          <div class="row columns">
            <div class="span9">
              <single-field-list fields="description"/>
            </div>
          </div>

          <div class="row columns">
            <div class="span3">
              <single-field-list fields="description"/>
            </div>
            <div class="span6">
              <single-field-list fields="responsable"/>
            </div>
          </div>

          <div class="row columns">
            <div class="span3">
              <single-field-list fields="description"/>
            </div>
            <div class="span3">
              <single-field-list fields="responsable"/>
            </div>
            <div class="span3">
              <single-field-list fields="responsable"/>
            </div>
          </div>
        </field-list:>

      </form:>

    </new-page>
```



Demo app
========
<hr/>

I have been using a demo application to test this theme (the screenshots come from it). It has:
* Examples of complex forms (1/2/3 columns, aside, double sized fields...)
* Rspec "human driven" tests for the responsive CSS (they automatically resize your window and wait for you to clic on "OK" if it looks fine)
* Examples of Jquery File Upload (http://blueimp.github.com/jQuery-File-Upload/).

You can download and take a look at it on https://github.com/suyccom/sgagility


Notes
=====
<hr/>

Right now, you still need to keep "hobo_clean" in your Gemfile if you want to use the Ajax search enabled by default in Hobo.


  [1]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/index.png
  [2]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/login.png
  [3]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/top_menu.png
  [4]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/sub_menu.png
  [5]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/responsive.png
  [6]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/two_columns.png
  [7]: https://github.com/suyccom/hobo_bootstrap/raw/master/screenshots/three_columns_complex.png
