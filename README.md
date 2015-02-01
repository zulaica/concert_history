# Concert History 🎵

Concert History is a simple website that allows you to track the venues a band
has performed at.

## Requirements

You're gonna need:
- Ruby
- Sinatra
- PostgreSQL
- ActiveRecord

ProTip™—Install [Bundler](https://rubygems.org/gems/bundler)

```
$ gem install bundler
```

## Setup

1. Clone this repository.
1. Run Bundler.
1. Make sure PostgreSQL is running.
1. Create database tables.
1. Launch the app.
1. Enjoy!

```
$ git clone https://github.com/zulaica/concert_history.git
$ bundle
$ postgres
$ rake db:create db:migrate
$ ruby app.rb
```

## Known Issues

- Hyphenated band names do not retain their hyphen when saved. (Issue with ActiveSupport's #titlecase method.) [[2015-01-30]](https://github.com/zulaica/concert_history/issues/2)
- Selecting "Update Venues" on the band page without a value selected throws a Sinatra server error. [[2015-02-01]](https://github.com/zulaica/concert_history/issues/1)

## To Do

- CRUD functionality for Venues
- More Venue data (City, Still Open/Closed)
- Ability to add the date the band performed at a venue

## Credits

Concert History is written and maintained by [David Zulaica](http://zulaica.info).

Background photo by [Bertrand](https://www.flickr.com/people/94038853@N00).

## License
Code licensed under GNU GPL v2.0

Background photo licensed under Creative Commons Attribution 2.0 Generic license
