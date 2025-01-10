Project (Module 6)
# Raw SQL Blog Project


[এই প্রজেক্টটি করার জন্য এবং জমা দেওয়ার আগে অবশ্যই প্রজেক্টের লাইভ ক্লাসটি দেখুন।]
 
## Authors Table 

id: INT, Auto Increment, Primary Key. 

author_name: VARCHAR(255), NOT NULL. 

created_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP. 

updated_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP, Auto-updates on record change (ON UPDATE CURRENT_TIMESTAMP). 


## Categories Table 

id: INT, Auto Increment, Primary Key. 

category_name: VARCHAR(255), NOT NULL. 

created_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP. 

updated_at: TIMESTAMP, Default Value CURRENT_TIMESTAMP, Auto-updates on record change (ON UPDATE CURRENT_TIMESTAMP).


## Blogs Table: 

id: Primary Key, Auto-Increment. 

title: Required, String (Max 255 characters). 

body: Required, Text. 

category_id: Foreign Key referencing categories(id), Required. 

author_id: Foreign Key referencing authors(id), Required. 

created_at: Auto-generated timestamp for record creation. 

updated_at: Auto-updated timestamp for record updates.


Relationships: 

category_id: Deletes associated blogs if the category is deleted (ON DELETE CASCADE). 

author_id: Deletes associated blogs if the author is deleted (ON DELETE CASCADE). 

category_id: Automatically updates associated blogs if the category is updated (ON UPDATE CASCADE). 

author_id: Automatically updates associated blogs if the author is updated (ON UPDATE CASCADE). 


১. Authors Table: 

-- 1. How do you add a new author to the authors table? 

-- 2. How do you retrieve all authors from the authors table? 

-- 3. How do you retrieve a specific author by their ID from the authors table? 

-- 4. How do you update an author’s name in the authors table? 

-- 5. How do you delete an author by their ID from the authors table? 


২. Categories Table: 

-- 6. How do you add a new category to the categories table? 

-- 7. How do you retrieve all categories from the categories table? 

-- 8. How do you retrieve a specific category by its ID from the categories table? 

-- 9. How do you update a category’s name in the categories table? 

-- 10. How do you delete a category by its ID from the categories table? 


৩. Blogs Table: 

-- 11. How do you add a new blog to the blogs table? 

-- 12. How do you retrieve all blogs from the blogs table? 

-- 13. How do you retrieve a specific blog by its ID from the blogs table? 

-- 14. How do you retrieve all blogs with their category and author information? -- 15. How do you update a blog’s title in the blogs table? 

-- 16. How do you update a blog’s category or author in the blogs table? 

-- 17. How do you delete a blog by its ID from the blogs table? 


৪. Specific Queries: 

-- 18. How do you get all blogs written by a specific author? 

-- 19. How do you get all blogs under a specific category? 

### জমাদানের নির্দেশাবলী:



১. একটি নতুন GitHub রিপোজিটরি তৈরি করুন এবং blog_project.sql, data.sql, এবং blogs.sql ফাইলগুলো রিপোজিটরিতে অন্তর্ভুক্ত করুন।
- **blog_project.sql** ফাইলে টেবিল ক্রিয়েশন এবং অন্যান্য প্রয়োজনীয় কুইরি থাকবে। 
- **data.sql** ফাইলে শুধুমাত্র ডেমো ডাটা ইনসার্ট করার জন্য কুইরি থাকবে। 
- **blogs.sql** ফাইলে XAMPP থেকে এক্সপোর্ট করা কুইরি থাকবে, যাতে সহজেই ব্লগ টেবিলটি ডেটাবেসে ইমপোর্ট করা যায়। 
২. blogs.sql ফাইলটি XAMPP থেকে এক্সপোর্ট করে যোগ করতে হবে। 
৩. শুধুমাত্র GitHub রিপোজিটরি লিঙ্ক জমা দিতে হবে। 
৪. ডেডলাইনের পরে আপনার কোডে কোনো পরিবর্তন করা যাবে না। 
৫. অ্যাসাইনমেন্ট পেজের Upload File সেকশনে কোনো ফাইল আপলোড করার প্রয়োজন নেই।