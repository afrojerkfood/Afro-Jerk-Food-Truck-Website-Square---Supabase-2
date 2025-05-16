/*
  # Create Gallery Items Table

  1. New Tables
    - gallery_items
      - id (uuid, primary key)
      - title (text)
      - image_url (text)
      - type (text)
      - location (text)
      - created_at (timestamp)
      - updated_at (timestamp)

  2. Security
    - Enable RLS
    - Add public read access policy
*/

-- Create gallery items table
CREATE TABLE IF NOT EXISTS gallery_items (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  image_url text NOT NULL,
  type text NOT NULL,
  location text NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE gallery_items ENABLE ROW LEVEL SECURITY;

-- Add RLS policies
CREATE POLICY "Allow public read access" ON gallery_items
  FOR SELECT TO public USING (true);

CREATE POLICY "Allow authenticated users to manage gallery" ON gallery_items
  FOR ALL TO authenticated USING (true) WITH CHECK (true);

-- Add index for date-based queries
CREATE INDEX gallery_items_created_at_idx ON gallery_items(created_at);