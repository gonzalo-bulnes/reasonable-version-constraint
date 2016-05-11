Reasonable Version Constraint
=============================

Provides a _reasonable_ version constraint for Ruby gems.

Usage
-----

### Local

```bash
rackup -p 3000 # see http://localhost:3000
```

### Heroku

Click the button below to automatically set up the service as an app running on your Heroku account.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Alternatively, you can manually create a Heroku app and use Git to push and deploy.

Development
-----------

### Testing and documentation

The service is described using [Cucumber][cucumber] and [RSpec][rspec].

  [cucumber]: https://github.com/cucumber/cucumber-rails
  [rspec]: https://github.com/rspec/rspec-rails

```bash
# run the entire test suite
rake
```

