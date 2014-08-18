# Bill's Ultimate Rails POC (aka BURP)

This Ruby on Rails application is a proof-of-concept application.
There are five branches of this application each using a different backing data store:

* master - SQLite3 (v3.7) (base impl not intended for evaluation)
* maria - MariaDB (v10.0) (i.e. MySQL w/o Oracle baggage)
* postgres - PostgreSQL (v9.3.4)
* mongo - MongoDB (v2.6.3)
* couchbase - Couchbase (v2.5.1)

## Setting up the datastore
This branch uses PostgreSQL relational database as a backing datastore. After installing the PostgreSQL database (if needed), run the following commands to create the development and test databases.

```
rake db:create
rake db:migrate
```

The database can be accessed using:

```
RAILS_ENV=[development|test] rails db
```

or

```
psql [burp_development|burp_test]
```

Note that, by default, the *test* database is cleaned after every spec run.

## Running the Specs (tests)
Running the `spec` rake task well execute all tests for the application.

```
rake spec
```
