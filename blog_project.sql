-- Active: 1736503065431@@127.0.0.1@3306@blogs

-- Create Authors Table

CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Categories Table

CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Blogs Table

CREATE TABLE blogs(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    author_id INT NOT NULL,
    category_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (author_id) REFERENCES authors(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE CASCADE
);


-- CRUD Operations on authors table

-- Create: Add an author name to authors table
INSERT INTO authors (author_name) VALUES ("John Doe");

-- Read: Retrieve all authors
SELECT * FROM authors;

-- Read: Retrieve a single author by id
SELECT * FROM authors WHERE id = 3;

-- Update: Update author's name
UPDATE authors SET author_name = "Abdul Rahman" WHERE id = 2;

-- Delete: Delete an author by id
DELETE FROM authors WHERE id = 1;


-- CRUD Operations on categories table

-- Create: Add a category name to categories table
INSERT INTO categories (category_name) VALUES ("Infotainment");

-- Read: Retrieve all categories
SELECT * FROM categories;

-- Read: Retrieve a single category by id
SELECT * FROM categories WHERE id = 5;

-- Update: Update category name
UPDATE categories SET category_name = "Recipes" WHERE id = 4;

-- Delete: Delete a category by id
DELETE FROM categories WHERE id = 1;


-- CRUD Operations on blogs table

-- Create: Add a blog to blogs table
INSERT INTO blogs (title, body, author_id, category_id)
VALUES ("My First Blog", "My First Blog Body Content...", 2, 2);

-- Read: Retrieve all blogs
SELECT * FROM blogs;

-- Read: Retrieve a single blog by id
SELECT * FROM blogs WHERE id = 3;

-- Read: Retrieve all blogs with category and author
SELECT blogs.title, blogs.body, authors.author_name, categories.category_name
FROM blogs
JOIN authors ON blogs.author_id = authors.id
JOIN categories ON blogs.category_id = categories.id;

-- Update: Update a blog title name
UPDATE blogs SET title = "My Updated First Blog" WHERE id = 1;

-- Update: Update a blog’s category or author
UPDATE blogs SET author_id = 5, category_id = 5 WHERE id = 2;

-- Delete: Delete a blog by id
DELETE FROM blogs WHERE id = 1;


-- Specific Queries
-- Read: Retrieve all blogs written by a specific author
SELECT authors.author_name, blogs.title, blogs.body
FROM blogs
JOIN authors ON blogs.author_id = authors.id
WHERE authors.id = 5;

-- Read: Retrieve all blogs by a specific category
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = "Education";