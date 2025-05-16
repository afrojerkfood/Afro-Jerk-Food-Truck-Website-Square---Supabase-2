/*
  # Update Gallery Items

  1. Changes
    - Add new gallery items with African and Caribbean cuisine images
    - Set display order for proper sequencing
    - Add location and date information
*/

INSERT INTO gallery_items (
  id,
  type,
  title,
  image_url,
  location,
  date,
  created_at,
  updated_at
) VALUES
(
  gen_random_uuid(),
  'food',
  'Traditional African Feast',
  'https://foodinstitute.com/wp-content/uploads/2021/08/African-Cuisine.jpg',
  'Charlotte Uptown',
  '2024-05-01',
  now(),
  now()
),
(
  gen_random_uuid(),
  'food',
  'Diverse African Flavors',
  'https://res-2.cloudinary.com/hpwmsw17c/image/upload/q_auto/v1/ghost-blog-images/Exploring-the-Delicious-and-Diverse-World-of-African-Cuisine.jpg',
  'Rock Hill',
  '2024-05-02',
  now(),
  now()
),
(
  gen_random_uuid(),
  'food',
  'Senegalese Specialties',
  'https://momaa.org/wp-content/uploads/2023/04/11tmag-senega-1.jpeg',
  'Charlotte Uptown',
  '2024-05-03',
  now(),
  now()
),
(
  gen_random_uuid(),
  'food',
  'Jamaican Curry & Jerk',
  'https://www.shutterstock.com/image-photo/traditional-jamaican-curried-goat-jerk-600nw-1429398311.jpg',
  'Rock Hill',
  '2024-05-04',
  now(),
  now()
),
(
  gen_random_uuid(),
  'event',
  'Community Gathering',
  'https://images.squarespace-cdn.com/content/v1/63b25619bc6cb02b178c8b13/cc8e71b1-c551-444b-a59d-89bf54ad895a/classic+village.jpg',
  'Charlotte Uptown',
  '2024-05-05',
  now(),
  now()
);