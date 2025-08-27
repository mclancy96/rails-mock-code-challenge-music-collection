
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

You've just been hired by the 'NYC Music Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite music collections and the albums in them. To do this, we need a way to keep track of the many NYC collections and record the albums for each collection.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of collections. Visiting `/collections` displays all of the collections recorded by members. Unfortunately, we don't have a way for members to record the albums in each collection. **Each Collection has many Albums, and each Album belongs to a Collection.**

## Deliverables

Implement the following features in this repository:

1. **Set Up Album Model and Associations**

    + Create an `Album` model with the necessary database migration.
    + Set up the association: each `Album` must belong to a `Collection`; each `Collection` has many `Albums`.
    + Ensure the association is established in both the models and the database (with a foreign key).

2. **Implement Validations**

    + An `Album` must have a name and a description (both required).
    + A `Collection` must have a unique name and an address (both required).
    + Display validation errors on the relevant form pages if a user submits invalid data.

3. **Database Migrations**

    + Create and run migrations to add the required columns and associations for `Album` and `Collection`.
    + Ensure the schema reflects all necessary fields and relationships.

4. **RESTful Album Actions and Views**

    + Implement `new`, `create`, and `show` actions for `Album` in the controller.
    + Create corresponding views:
      + The `new` album form should be accessible from a `Collection` show page via a link or button.
      + The `show` page for an album must display all album details and include a link back to its parent `Collection` show page.

5. **Update Collection Show Page**

    + On the `Collection` show page, display a list of all albums that belong to that collection.
    + Each album in the list should link to its individual `Album` show page.
    + Include a link or button to add a new album to this collection.

6. **Navigation and User Flow**

    + Users should be able to navigate from the collections index to a collection's show page, view its albums, and add a new album.
    + After creating an album, users should be redirected to the album's show page.
    + All forms should display validation errors if present.

7. **Rails Console Usage**

    + You should be able to create, query, and associate albums and collections using the Rails console.
    + Test validations and associations in the console to confirm correct setup.
