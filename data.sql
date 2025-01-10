
-- Dummy Data For Authors Table
INSERT INTO authors (author_name) VALUES
("Jane Doe"),
("Jane Smith"),
("Alice Johnson"),
("Robert Brown"),
("Emily Davis"),
("Mahamud Hasan");

-- Dummy Data For Categories Table
INSERT INTO categories (category_name) VALUES
("Technology"),
("Health & Wellness"),
("Lifestyle"),
("Travel"),
("Education"),
("Uncategorized");

-- Dummy Data For Blogs Table
INSERT INTO blogs (title, body, author_id, category_id) VALUES
("How To Do Tech Yourself", "Body content of how to do tech yourself...", 2, 2),
("Look Great in Summer", "Body content of look great in summer...", 3, 4),
("10 Tips for Budget Travel", "Body content of 10 tips for budget travel...", 4, 5),
("Learn These Programming Languages", "Body content of learn programming...", 5, 6),
("Best Tips on Convincing Your Manager", "Body content of convincing your manager", 7, 7),
("15 Tips to Manage Your Day", "Body content of manage your day...", 6, 3);
