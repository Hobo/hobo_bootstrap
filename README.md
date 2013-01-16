This is a theme for Hobo 1.4 (http://www.hobocentral.net) that implements the Bootstrap library (http://twitter.github.com/bootstrap/).

# hobo_bootstrap
<hr/>

[![index][1]][1]
[![login][2]][2]



Install instructions
====================
<hr/>

Add this to your Gemfile

    gem "hobo_bootstrap", :git => "git://github.com/Hobo/hobo_bootstrap.git"
{.ruby}

Run bundle to get the gems

    bundle

Add to your front.scss:

     *= require hobo_bootstrap
{.css}

Add to your front.js:

    //= require hobo_bootstrap
{.javascript}

Alternatively, you could require bootstrap-collapse and bootstrap-alert, since those are the only two javascript components that this theme currently requires.   However, we do plan on supporting more in the future.

Change the theme in app/views/taglibs/front_site.dryml:

    <include gem='hobo_bootstrap'/>
{.dryml}

You will also want to remove any references to your previous theme in the above files.  `hobo_clean` is the name of the old default Hobo theme.

Two main menu options
=====================
<hr/>

By default, hobo_bootstrap puts every option in the top menu, like this:

[![top_menu][3]][3]


But you can also use a sub menu, like the one in the bootstrap documentation:
[![sub_menu][4]][4]

In order to enable the sub menu, add these lines to your front_site.dryml:

    <extend tag="page">
      <old-page merge nav-location="sub">
    </extend>
{.dryml}




Responsive template
===================
<hr/>

This theme includes the bootstrap responsive CSS, which makes it work nicely with mobile phones. For example:

[![responsive][5]][5]

If you don't want to include the responsive CSS, use

    *= require bootstrap
    *= require hobo_bootstrap/hobo_bootstrap_main

instead of

    *= require hobo_bootstrap

in your front.scss.


Bootswatch themes
=================

If you want to style your theme differently, the easiest way is to choose a theme from [bootswatch](http://bootswatch.com).

In front.scss, remove:

    *= require hobo_bootstrap

and add this to the bottom of the file, outside of the comment:

    @import "bootswatch/cerulean/variables";
    @import "hobo_bootstrap";
    @import "bootswatch/cerulean/bootswatch";

Replace `cerulean` with the theme of your choice.

Add to Gemfile

    gem 'bootswatch-rails'

And run `bundle`.

Any other theme you find or buy will probably be delivered as CSS or LESS rather than SCSS.   Copy the CSS into a new folder in app/assets/stylesheets, and use like this, replacing *foo* with the name of your theme:

    @import "foo/bootstrap.css";
    @import "hobo_bootstrap/hobo_bootstrap_main";
    @import "foo/bootstrap_responsive.css";
    @import "hobo_bootstrap/hobo_bootstrap_responsive";
    @import "hobo_bootstrap/hobo_bootstrap_docs";

Complex forms
=============
<hr/>

By default, forms only have one column. But many you need more complex forms. Take a look at these examples:

**Two columns example**

[![two_columns][6]][6]

    <new-page>
      <form:>
        <field-list: columns="2"/>
      </form:>
    </new-page>
{.dryml}

**Three columns, aside and double sized fields**

[![three_columns_complex][7]][7]

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
{.dryml}



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


  [1]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/index.png
  [2]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/login.png
  [3]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/top_menu.png
  [4]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/sub_menu.png
  [5]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/responsive.png
  [6]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/two_columns.png
  [7]: https://github.com/Hobo/hobo_bootstrap/raw/master/screenshots/three_columns_complex.png
