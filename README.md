# stylus-tea-boilder

A [coffeescript](http://coffeescript.org/) environment using
 [teacup](https://github.com/goodeggs/teacup) for html templating and
 [stylus](http://learnboost.github.io/stylus/) for CSS-preprocessing served over
 [express](https://github.com/strongloop/express).

## Requirements
```sh
$ npm install -g coffee-script
```

## Get Started
```sh
$ git clone https://github.com/ebaker/stylus-tea-boiler.git
$ cd stylus-tea-boiler
$ npm install
$ vim assets/css/app.styl
$ coffee server.coffee
```

## Structure
This project is setup for a single web application.
server.coffee serves the index view for the / endpoint. 
Client assets are written in coffeescript and stylus and compiled
through connect-assets via express.

#### assets (client)
 - js directory containes coffee files for controller logic
 - css directory containes styl file

#### server.coffee
 - express server
 - connect-assets compiles and serves coffee and styl files as js and css

#### views (server)
 - server views searched by express
 - index served from here

## Dependencies
 - [coffeescript](http://coffeescript.org/)
 - [express](https://github.com/strongloop/express)
 - [stylus](http://learnboost.github.io/stylus/)
 - [nib](https://github.com/tj/nib) - stylus CSS3 mixin plugin
 - [connect-assets](https://github.com/adunkman/connect-assets)

License
----

MIT
