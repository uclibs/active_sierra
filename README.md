# ActiveSierra

A Rails engine with models for the Innovative Interfaces Inc. Sierra integrated library system Postgresql database backend. 

## Installation

Add this line to your application's Gemfile:

    gem 'active_sierra'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_sierra

Additionally, add 'sierra' to your config/database.yml, to connect to your local database

## Usage

The engine provides models for major records types in the Sierra database, per the [SierraDNA documentation](http://techdocs.iii.com/sierradna/app) (authentication required).

Record models currently include:
- BibView
- ItemView
- OrderView
- VarfieldViews
- Subfields

BibRecord, ItemRecord, and OrderRecord are also included because they respond more quickly to certain queries

Relationships between records are included, e.g.:

    b = BibView.first
		i = b.item_views
		b = i.bib_views ## Returns all attached bib records (items can have more than one attached bib record)
		o = OrderView.first
		b = o.bib_view ## Returns single attached bib record (orders, and checkins can only have one attached bib)

All records have attached variable fields, expressed through the VarfieldViews model:

		v = b.varfield_views

And variable fields each have sub-fields:

$ v.subfields
