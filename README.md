# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite


* Build

- Add the factory girl gem to the `test` and `development` group

```
$ bundle exec rails g model guitar description:string year:string \strings:integer lefty:boolean
```

- Add related model `store_location`

```
$ rails g model store_location address:string
$ rails g migration add_store_location_id_to_guitars store_location_id:integer
$ rails g migration add_inventory_code_to_guitars inventory_code:string
$ rails g model user first_name:string last_name:string admin:boolean
```


### Update the database

```
$ rails db:migrate db:test:prepare
```


### Run rails console for test

```
$ be rails c test
```

### Create a new guitar object

```
guitar = FactoryGirl.create(:guitar)
```

### To use the shortcut

```
include FactoryGirl::Syntax::Methods
guitar = create(:guitar)
```


### Create a model without persisting into the database

```
guitar = build(:guitar)
guitar.new_record?
guitar.save
```

### Get attributes

```
FactoryGirl.attributes_for(:guitar)
```


## Sample creation

```
guitar = create(:guitar)
gibson = FactoryGirl.create(:gibson_sg_lefty)
fender = FactoryGirl.create(:fender_strat)
```


### Resources

[Factory Girl](https://github.com/thoughtbot/factory_girl) at GitHub