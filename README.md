SpreeEasyAdminRedirect
======================

Provides an easy way to redirect an user after login in.

Installation
------------

Add spree_easy_admin_redirect to your Gemfile:

```ruby
gem 'spree_easy_admin_redirect', git: 'git@github.com:Serabe/spree_easy_admin_redirect.git', branch: '2-3-stable'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_easy_admin_redirect:install
```

The generator does nothing but showing a message. It is provided because it is
what spree extensions do and somebody might not read this README.

Overriding the redirection
------

For overriding the redirection path you just need to redefine
`Spree::Admin::RootController#admin_root_redirect_path`. If you want a more complex behaviour, you might override `Spree::Admin::RootController#index`.

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_easy_admin_redirect/factories'
```

Copyright (c) 2014 [name of extension creator], released under the New BSD License
