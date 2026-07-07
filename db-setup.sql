-- IWINNI D1 Database Initialization & First Story Setup

-- 1. Create the articles table with the correct schema
CREATE TABLE IF NOT EXISTS articles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  date TEXT NOT NULL,
  category TEXT NOT NULL,
  summary TEXT NOT NULL,
  main_story TEXT NOT NULL,
  feel_good TEXT,
  hero_image TEXT
);

-- 2. Seed the database with the first story (Patagonia Backcountry Brief)
INSERT OR IGNORE INTO articles (title, slug, date, category, summary, main_story, feel_good, hero_image)
VALUES (
  'Patagonia Backcountry Brief: Torres del Paine Circuit Update',
  'patagonia-backcountry-brief',
  '2026-07-01',
  'Global Travel',
  'Current conditions, permit windows, and key route intelligence for the O Circuit in Chilean Patagonia — the world''s most dramatic long-distance trek.',
  'The O Circuit in Torres del Paine National Park ranks among the planet''s most demanding and rewarding multi-day routes. Spanning approximately 130 kilometers through glacially carved valleys, ancient lenga beech forests, and exposed granite ridgelines, it demands serious preparation and current intelligence. Here is what explorers need to know for the 2026 austral summer season.

Trail infrastructure across the park remains well-maintained following CONAF''s extensive off-season work program. The northern arc of the circuit — from Los Perros camp through the John Gardner Pass to Dickson — is in excellent condition after a relatively dry autumn. Snow accumulation on the pass is currently minimal, but conditions can shift rapidly; morning departures from Los Perros are strongly recommended to cross Gardner before afternoon winds intensify.',
  'The park''s administration has implemented enhanced waste management protocols this season. Pack-out requirements now extend to all organic waste at wild areas. The ranger stations at Dickson and Los Perros are staffed year-round.',
  '/hero-patagonia.jpg'
);
