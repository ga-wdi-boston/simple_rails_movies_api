![General Assembly Logo](http://i.imgur.com/ke8USTq.png)


## Simple Rails Movie API.

This is *very* simple Rails application that will provide a very simple API for Movies.

It's typically used to provide a backend for early Ajax lessons.


## Instructions

**Clone to your local machine.**

```
git clone git@github.com:ga-wdi-boston/simple_rails_movies_api.git

cd simple_rails_movies
```

**Download and install Ruby gems used by this Rails applicaiton**

`bundle install`

**Create a database for this Rails app.**

`rake db:create`

**Start the Rails server**

`rails server`

**Get the JSON representation of all the movies**

* In the Browser.
`http://localhost:3000/movies`

* Using curl, a command line tool that is a HTTP Client.  
`curl http://localhost:3000/movies`

**Get the JSON representation of ONE movie**

* In the Browser.
`http://localhost:3000/movies/2`

* Using curl, a command line tool that is a HTTP Client.  
`curl http://localhost:3000/movies/2`