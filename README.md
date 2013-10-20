# MVCP (Model View Controller Presenter)

This is a Sinatra based application running an MVCP architecture

## Usage

First install the dependencies: `gem install bundler && bundle`

Then from there whenever you want to run the Sinatra app: `bundle exec shotgun`

## Application Architecture

Within the `config.ru` we load a helper module and the main Application
Controller.

Routing is handled within `config.ru` using the Rack `map` method and that loads
the relevant Controller.

All other Controllers inherit from the Application Controller.

We get data from our Models and because we have lots of components (all of which
potentially have lots of data that would normally be set-up by the Controller)
we will use the Presenter pattern to get the data from the Models instead and
then have a presenter handle the preparation of view data.

## Directory Structure

- assets
    - scripts
    - styles
- controllers
- helpers
- models
- presenters
- views
  - components

## Notes

You'll need to use relative paths throughout the application
