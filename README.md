# Bill's Ultimate Rails POC (aka BURP)

This Ruby on Rails application is a proof-of-concept application.
There are five branches of this application each using a different backing data store:

* master - SQLite3 (v3.7) (base impl not intended for evaluation)
* maria - MariaDB (v10.0) (i.e. MySQL w/o Oracle baggage)
* postgres - PostgreSQL (v9.3.4)
* mongo - MongoDB (v2.6.3)
* couchbase - Couchbase (v2.5.1)

## Setting up the datastore
This branch uses the Couchbase database as a backing datastore. You must have Couchbase running and installed. In addition, you need to manually create the following data buckects in Couchbase:

* burp_development
* burp_test

This latter test database needs to be configured to allow "flush". This will allow the test suites to clear the database of all data after each test run.

The database can be accessed using the Couchbase web console. 

## Running the Specs (tests)
Running the `spec` rake task well execute all tests for the application.

```
rake spec
```
