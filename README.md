Day 18 - Rails Scaffolding
=========================

### Assignment

* Create a Rails App
* Create a scaffolding for a noun that you like. 

```bash
rails generate scaffold taco name ingredients:text photo_url delicious:boolean
```

* Add a field to the noun using a migration
* Delete, and recreate the controller using strong parameters. (like the tacos
  controller)
* Have the root path show not-default-rails. It should list out the @nouns as a
  table)
* Use Bootstrap to style the table
* Have db/seeds so I can see your seeds when they seed
