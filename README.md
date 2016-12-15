# Home24

###*Product Description*

As a customer on the product detail page (PDP) I am interested in the details of the product
so that I can decide whether this product is the right one for me.

● Details that have influence on my decision are how the product looks, therefore I
concentrate on the pictures. Further I want to find out about the price, the delivery
time, how a product is delivered and e.g. what material the product is made of and
what measurements it has.

● What other customers said about a product is a very valuable information to me,
since I do have a high trust in other customer's experiences.

● If there are different variations of a product (e.g. colour and/or size) I want to select
the product that fits my taste and requirements best.

● In case the price or delivery time is of exceptional importance to my decision I might
want to see an overview of all variations with their delivery time and price to make the
selection based on these information.
When I am convinced that I found the product I am looking for I want to add this product to
the cart so that I can buy it.

In case the product shown on the PDP is not exactly what I was looking for I like to receive
suggestions of products that are similar, so that I can go to other relevant PDPs directly from
the page I am currently at.

This automation task uses Watir Webdriver (Selenium) and follows Page Object pattern.

We could add more TCs by adding related TCs to *.feature files. 
For instance, you have 10 TCs related to api listing products feature, just simply add them to api_listing_products.feature file.

For debug purpose, this quite easy to do so, you can either 

. *Adding this line to anywhere you want to debug*
```ruby
binding.pry
```

. *If using any IDE, such as RubyMine, putting an breakpoint and executing as debug mode*

###*Project Layout*

* config/config.yml : Data set
* features/*.feature : cucumber features
* features/step_definitions/steps.rb : generic steps that apply to all features
* features/support/env.rb : configures gems to use
* features/support/pages : the pages which are related to automation tests
* failuretracker: stores the info (screenshot/html file) when any TC is failed

###*Prerequisites*

* Ruby http://www.ruby-lang.org/en/downloads/
* Ruby Gems http://rubygems.org/
* Bundler: 
```ruby
gem install bundler rake
```

###*Configuration*
```ruby
bundle install
```
###*Running Features*

To run a specific feature, for instance: api_listing_products.feature, you can either:

. *Using terminal: after navigating to home24/ directory*
```
cucumber features/api_listing_products.feature
```

. *Using IDE such as RubyMine, click on search.feature file and choose "Run api_listing_products.feature" on the context menu*
