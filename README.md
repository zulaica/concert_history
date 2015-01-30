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
2. Run Bundler.
3. Make sure PostgreSQL is running.
4. Launch the app.
5. Enjoy!

```
$ git clone https://github.com/zulaica/concert_history.git
$ bundle
$ postgres
$ ruby app.rb
```

## Known Issues

* Hyphenated band names do not retain their hyphen when saved.

## To Do

* CRUD functionality for Venues
* More Venue data (City, Still Open/Closed)
* Ability to add the date the band performed at a venue

## Credits

Concert History is written and maintained by [David Zulaica](http://zulaica.info).

Background photo by [Bertrand](https://www.flickr.com/people/94038853@N00).

## License
Code licensed under GNU GPL v2.0

Background photo licensed under Creative Commons Attribution 2.0 Generic license
