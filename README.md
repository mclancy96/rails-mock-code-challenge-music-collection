
# Rails Mock Code Challenge: Music Collection

Sharpen your Rails skills by building a Music Collection app for NYC! This practice challenge mirrors a real-world scenario where you'll manage collections and their albums.

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, code and debug

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

## The Domain

You've just been hired by the 'NYC Music Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite music collections and the albums in them. To do this, we need a way to keep track of the many NYC collections and record the albums for each collection.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of collections. Visiting `/collections` displays all of the collections recorded by members. Unfortunately, we don't have a way for members to record the albums in each collection. **Each Collection has many Albums, and each Album belongs to a Collection.**

## Instructions / Deliverables

***To help you complete this assignment, we've listed the steps required. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one.***

1. Before you start building the new functionality, make sure that you are able to create and view a new collection.

2. Let's build following an inside-out approach (Domain model to views). Begin by developing the classes required to persist Albums and associate them to a Collection. You should then be able to run the code below:

```Ruby
album.collection = collection
album.save
collection.albums.first === album # should return true
collection = Collection.first
album = Album.create(name:'Abbey Road', description: 'The Beatles classic album released in 1969')
album.collection = collection
album.save
collection.albums.first === album # should return true
```

3. Set up validations for the album and the collection:

+ An album must have a name and a description.
+ A collection must have a unique name and an address.

4. Now that our backend domain model is properly setup we can build the user facing functionality. Adding this functionality will require you to develop code across many different parts of the application including routes, controllers and views.

Items needed to complete an application that works as described include:

+ `Album` new, create, and show actions & corresponding views that display all shown data
+ `Collection` show page updated to list all its albums
+ All the links and forms to connect the models (the `Album` show page should link back to its `Collection` show page)

---

+ Don't be confused by the sottocasanyc.com/brooklyn/menu website the demo shows. It is just being used to obtain a album name and description.
