# Bill's Ultimate Rails POC (aka BURP)

This Ruby on Rails application is a proof-of-concept application.
There are five branches of this application each using a different backing data store:

* master - SQLite3 (v3.7) (base impl not intended for evaluation)
* maria - MariaDB (v10.0) (i.e. MySQL w/o Oracle baggage)
* postgres - PostgreSQL (v9.3.4)
* mongo - MongoDB (v2.6.3)
* couchbase - Couchbase (v2.5.1)

## Setting up the datastore
This branch simply uses the MongoDB NoSQL database as a backing datastore. 

You will need to have the MongoDB server (e.g. mongod) running on your system and configured to use it's default port of 27017.

No other changes are necessary, however if MongoDB is running on a different server or on a different port, or you want to use different database names than `burp_development` and `burp_test`, you can make these configuration changes in the `config/mongoid.yml` file.

The database can be accessed via the Mongo shell using:

```
mongo [burp_development|burp_test]
```

Note that, by default, the *test* database is cleaned before every spec run.

## Running the Specs (tests)
Running the `spec` rake task well execute all tests for the application.

```
rake spec
```
