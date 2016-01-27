
# Cordova Project Template

This is a project template for iOS Apps using Cordova.
As HTML, Javascript and CSS would be where the most of programming occurs,
various transpilers are configured to assist you.

## Prerequisites

This assumes you have:

* a Mac
* xcode installed
* Ruby 2.2.3+ installed
* Brew installed

## Setting up the ruby environment and install compass

This project uses sass/compass to make CSS programming easier.

```
$ gem update --system
$ gem install compass
```

Once you have it right, you should get this:
```
$ compass -v
Compass 1.0.3 (Polaris)
Copyright (c) 2008-2016 Chris Eppstein
Released under the MIT License.
Compass is charityware.
Please make a tax deductable donation for a worthy cause: http://umdf.org/compass
```

## Setting up the node, and grunt and bower.

Setup node so you can use tools like Grunt and Bower.
Grunt is used to make everyday build process easier.
Bower is used to make JS package management easier.

```
$ brew install node
$ npm install -g grunt-cli
$ npm install bower
```

Once you have it right, you should get this:
```
$ node -v
v5.4.0
$ grunt --version
grunt-cli v0.1.13
$ bower -v
1.7.4
```

Further more, there are grunt plugins we want to use in the project.
Let's install them using `npm installed`

```
$ npm install
```

## Install packages

### JSON Libraries (Managed by bower)

This project uses various JSON libraries like AngularJS or ngCordova.
Let's download the libraries.

```
$ bower install
```

Once installed, you should see downloaded libraries under `www/vendors`

```
$ ls www/vendors
angular/  ngCordova/
```

If you want to add more JS libraries to your project, edit `bower.json` and run `bower install` again.

