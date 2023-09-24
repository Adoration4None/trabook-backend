INSERT INTO clients (first_name, middle_name, last_name)
VALUES
  ('John', 'Doe', 'Smith'),
  ('Jane', 'Marie', 'Johnson'),
  ('Michael', NULL, 'Brown'),
  ('Sarah', 'Jane', 'Davis'),
  ('David', 'Lee', 'Williams'),
  ('Emily', NULL, 'Taylor'),
  ('James', 'Robert', 'Anderson'),
  ('Jennifer', NULL, 'Clark'),
  ('Daniel', 'Thomas', 'White'),
  ('Olivia', 'Grace', 'Martin'),
  ('Liam', 'Ethan', 'Smith'),
  ('Noah', 'James', 'Brown'),
  ('Ava', NULL, 'Taylor'),
  ('Isabella', 'Sophia', 'Miller'),
  ('Sophia', 'Mia', 'Anderson'),
  ('Mia', 'Harper', 'Davis'),
  ('Charlotte', NULL, 'Martinez'),
  ('Amelia', NULL, 'Hernandez'),
  ('Evelyn', NULL, 'Garcia');


INSERT INTO payment_methods (name)
VALUES
  ('Credit Card'),
  ('Debit Card'),
  ('PayPal'),
  ('PSE'),
  ('Bank Transfer'),
  ('Cryptocurrency');


INSERT INTO continents (name)
VALUES
  ('Africa'),
  ('Antarctica'),
  ('Asia'),
  ('Europe'),
  ('North America'),
  ('Oceania'),
  ('South America');


INSERT INTO countries (name, continent_id)
VALUES
  ('France', 4),        -- Europe
  ('Argentina', 7),     -- South America
  ('Canada', 5),        -- North America
  ('China', 3),         -- Asia
  ('Germany', 4),       -- Europe
  ('Australia', 6),     -- Oceania
  ('Egypt', 1),         -- Africa
  ('Greenland', 2),     -- Antarctica
  ('India', 3),         -- Asia
  ('Italy', 4),         -- Europe
  ('Japan', 3),         -- Asia
  ('Mexico', 5),        -- North America
  ('Netherlands', 4),   -- Europe
  ('New Zealand', 6),   -- Oceania
  ('Peru', 7),          -- South America
  ('Russia', 3),        -- Asia
  ('South Africa', 1),  -- Africa
  ('Spain', 4),         -- Europe
  ('United Kingdom', 4),-- Europe
  ('United States', 5); -- North America


INSERT INTO destinations (name, image, country_id)
VALUES
  ('Victoria Falls', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413052/destinations-img/ezmu0w9zddlpehllpqqt.jpg', 17),            -- Victoria Falls, South Africa
  ('Kruger National Park', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413052/destinations-img/zwlkjmnbgevp12vq76bw.jpg', 17),      -- Kruger National Park, South Africa
  ('Cape Town', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413051/destinations-img/wow9nrkjpo666akgihpd.jpg', 17),                 -- Cape Town, South Africa
  ('Machu Picchu', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413051/destinations-img/lfgqyhwzwr3pzqf1cezh.jpg', 15),              -- Machu Picchu, Peru
  ('Amazon Rainforest', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413053/destinations-img/pxfj6onskadmqia8jtty.jpg', 15),         -- Amazon Rainforest, Peru
  ('Lake Titicaca', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413053/destinations-img/comvvhajo9gtkqljzaat.jpg', 15),             -- Lake Titicaca, Peru
  ('Grand Canyon', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413051/destinations-img/p3mtuxe7xpsiyjlahu0y.jpg', 20),              -- Grand Canyon, United States
  ('New York City', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413050/destinations-img/rq7xzswpeetbyzi7v4nv.jpg',20),              -- New York City, United States
  ('Yellowstone National Park', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413050/destinations-img/yg2tjromfrvr6muv5mug.jpg', 20), -- Yellowstone National Park, United States
  ('Niagara Falls', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413049/destinations-img/i463i5n2pwgdfsv2sjyz.jpg', 20),             -- Niagara Falls, United States
  ('Los Angeles', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413049/destinations-img/cyqetdslrxghzmsiczdw.jpg', 20),               -- Los Angeles, United States
  ('Tokyo', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413048/destinations-img/kenprivkkxztlgflmwce.jpg', 11),                     -- Tokyo, Japan
  ('Kyoto', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413048/destinations-img/xraznwouujcaoiihvq53.jpg', 11),                     -- Kyoto, Japan
  ('Osaka', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413049/destinations-img/mbewwzgnkso1ue56itr0.jpg', 11),                     -- Osaka, Japan
  ('Great Wall of China', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413048/destinations-img/ss24nsszp2wpojjoe501.jpg', 4),        -- Great Wall of China, China
  ('Beijing', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413048/destinations-img/x9gdj9sewd8v1odbzatm.jpg', 4),                    -- Beijing, China
  ('Shanghai', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413048/destinations-img/ubmsdkce7ahppg9xnls9.jpg', 4),                   -- Shanghai, China
  ('Rome', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413048/destinations-img/rniw26uet1jysuk1jywy.jpg', 10),                      -- Rome, Italy
  ('Venice', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413047/destinations-img/wsjnoy80xsqoqw5ioesd.jpg', 10),                    -- Venice, Italy
  ('Firenze', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413047/destinations-img/yigjlfbnpxqrftwl3aov.jpg', 10),                   -- Firenze, Italy
  ('Paris', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413047/destinations-img/xsoanykqyefmdokpdpln.jpg', 1),                      -- Paris, France
  ('London', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413047/destinations-img/gkplyvjhsg7ykkpuovbv.jpg', 19),                    -- London, UK
  ('Madrid', 'https://res.cloudinary.com/di7fysrpl/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1695413046/destinations-img/kmbykofyfju8iuomq3rn.jpg', 18);                    -- Madrid, Spain


INSERT INTO hotels (name, address, stars_number, destination_id)
VALUES
  ('Victoria Falls Hotel', '123 Main Street, Victoria Falls', 5, 1),         -- Victoria Falls, Southafrica
  ('Kruger Lodge', '456 Safari Avenue, Kruger National Park', 4, 2),         -- Kruger National Park, Southafrica
  ('Cape Town Resort', '789 Beach Road, Cape Town', 4, 3),                   -- Cape Town, Southafrica
  ('Machu Picchu Inn', '101 Inca Trail, Machu Picchu', 3, 4),                -- Machu Picchu, Peru
  ('Amazon Eco-Lodge', '202 Rainforest Avenue, Amazon Rainforest', 3, 5),    -- Amazon Rainforest, Peru
  ('Lake Titicaca Lodge', '303 Lakeview Terrace, Lake Titicaca', 4, 6),      -- Lake Titicaca, Peru
  ('Grand Canyon Hotel', '404 Canyon Road, Grand Canyon', 4, 7),             -- Grand Canyon, USA
  ('NYC Downtown Hotel', '505 Broadway, New York City', 4, 8),               -- New York, USA
  ('Yellowstone Lodge', '606 National Park Drive, Yellowstone', 4, 9),       -- Yellowstone, USA
  ('Niagara Falls Resort', '707 Fallsview Boulevard, Niagara Falls', 4, 10), -- Niagara Falls, USA
  ('LA Beach Resort', '808 Oceanfront Avenue, Los Angeles', 4, 11),          -- Los Angeles, USA
  ('Tokyo Tower Hotel', '909 Sakura Street, Tokyo', 4, 12),                  -- Tokyo, Japan
  ('Kyoto Heritage Inn', '101 Bamboo Grove, Kyoto', 3, 13),                  -- Kyoto, Japan
  ('Shanghai Skyscraper Hotel', '202 Cloudview Road, Shanghai', 5, 17),      -- Shanghai, China
  ('Beijing Dynasty Hotel', '303 Forbidden City Drive, Beijing', 4, 16),     -- Beijing, China
  ('Rome Colosseum Plaza', '404 Gladiator Street, Rome', 4, 18),             -- Rome, Italy
  ('Venice Canalside Inn', '505 Gondola Way, Venice', 4, 19),                -- Venice, Italy
  ('Florence Renaissance Hotel', '606 Art Avenue, Firenze', 4, 20),          -- Firenze, Italy
  ('Paris Luxury Palace Hotel', '1 Rue de la Tour Eiffel, Paris', 4, 21),    -- Paris, France
  ('London Royal Hotel', '2 Parliament Square, London', 4, 22),              -- London, UK
  ('Madrid Plaza Mayor Hotel', '3 Calle Mayor, Madrid', 4, 23);              -- Madrid, Spain


INSERT INTO flights (fly_date, total_seats, tourist_class_seats, first_class_seats, destination_id)
VALUES
  ('2023-09-22 10:45:00', 160, 110, 50, 3),  -- Vuelo a Ciudad del Cabo, Sudáfrica
  ('2023-09-23 08:00:00', 200, 130, 70, 4),  -- Vuelo a Machu Picchu, Perú
  ('2023-09-27 16:00:00', 240, 150, 90, 8),  -- Vuelo a Nueva York, Estados Unidos
  ('2023-10-10 14:00:00', 200, 140, 60, 12), -- Vuelo a Tokio, Japón
  ('2023-10-11 16:30:00', 180, 120, 60, 17), -- Vuelo a Shanghái, China
  ('2023-10-12 11:45:00', 220, 150, 70, 18), -- Vuelo a Roma, Italia
  ('2023-10-13 10:15:00', 180, 120, 60, 19), -- Vuelo a Venecia, Italia
  ('2023-10-14 09:30:00', 160, 110, 50, 20), -- Vuelo a Florencia, Italia
  ('2023-10-15 08:45:00', 230, 140, 90, 21), -- Vuelo a París, Francia
  ('2023-10-16 07:00:00', 250, 160, 90, 22), -- Vuelo a Londres, Reino Unido
  ('2023-10-17 05:30:00', 220, 150, 70, 23); -- Vuelo a Madrid, España


INSERT INTO plans (name, trip_days, remaining_seats, description, price, previous_price, hotel_id, destination_id, departure_flight_id, return_flight_id)
VALUES
  ('Cape Town Adventure',       7, 100, 'Embark on a thrilling adventure in the stunning landscapes of Cape Town, South Africa.',     1000.00, 1600.00, 3,  3,  1,  NULL), -- Viaje a Ciudad del Cabo
  ('Inca Trail Expedition',     5, 80,  'Embark on a journey along the historic Inca Trail leading to the magnificent Machu Picchu.', 980.00,  1200.00, 4,  4,  2,  NULL), -- Viaje a Machu Picchu, Perú
  ('Big Apple Getaway',         4, 70,  'Explore the iconic landmarks and vibrant culture of New York City.',                         1500.00, 1800.00, 8,  8,  3,  NULL), -- Viaje a Nueva York, Estados Unidos
  ('Tokyo Discovery',           6, 90,  'Immerse yourself in the bustling metropolis of Tokyo, Japan.',                               1100.00, 1600.00, 12, 12, 4,  NULL), -- Viaje a Tokio, Japón
  ('Shanghai Spectacular',      5, 80,  'Experience the blend of traditional and modern in the vibrant city of Shanghai.',            990.00,  1400.00, 14, 17, 5,  NULL), -- Viaje a Shanghái, China
  ('Roman Holiday',             7, 100, 'Step back in time and explore the ancient history of Rome, Italy.',                          1200.00, 1700.00, 16, 18, 6,  NULL), -- Viaje a Roma, Italia
  ('Venetian Escape',           5, 80,  'Navigate the charming canals and alleyways of Venice, Italy.',                               1120.00, 1500.00, 17, 19, 7,  NULL), -- Viaje a Venecia, Italia
  ('Art & Culture in Firenze',  6, 90,  'Discover the Renaissance treasures in the heart of Florence, Italy.',                        980.00,  1600.00, 18, 20, 8,  NULL), -- Viaje a Florencia, Italia
  ('Parisian Romance',          7, 100, 'Experience the enchanting atmosphere of Paris, France.',                                     1500.00, 1900.00, 19, 21, 9,  NULL), -- Viaje a París, Francia
  ('London Explorer',           8, 110, 'Uncover the rich history and diverse culture of London, UK.',                                1600.00, 2000.00, 20, 22, 10, NULL), -- Viaje a Londres, Reino Unido
  ('Madrid Getaway',            6, 90,  'Enjoy the vibrant energy and warm hospitality of Madrid, Spain.',                            1200.00, 1700.00, 21, 23, 11, NULL); -- Viaje a Madrid, España


INSERT INTO bookings (booking_date, seats_booked, total_cost, payment_method_id, client_id, plan_id)
VALUES
  ('2023-09-20 14:30:00', 2, 3600.00, 1, 1, 3), -- Visa, John Doe Smith, Viaje a Nueva York
  ('2023-09-21 11:00:00', 3, 4800.00, 2, 3, 4), -- MasterCard, Michael Brown, Viaje a Tokio
  ('2023-09-22 08:45:00', 1, 1400.00, 3, 5, 5), -- PayPal, David Lee Williams, Viaje a Shanghái
  ('2023-09-23 16:15:00', 2, 3400.00, 4, 6, 6), -- PSE, Emily Taylor, Viaje a Roma
  ('2023-09-24 13:30:00', 2, 3000.00, 5, 7, 7), -- Transferencia, James Robert Anderson, Viaje a Venecia
  ('2023-09-25 10:45:00', 1, 1600.00, 6, 8, 8); -- Criptomoneda, Jennifer Clark, Viaje a Florencia


INSERT INTO reviews (rating, comment, plan_id, client_id)
VALUES
  (4.0, 'Great trip, amazing views!',       1, 11),   -- Viaje a Ciudad del Cabo, Liam Ethan Smith
  (4.5, 'Incredible experience!',           2, 12),   -- Viaje a Machu Picchu, Noah James Brown
  (3.0, 'Enjoyed my time in NYC.',          3, 13),   -- Viaje a Nueva York, Ava Taylor
  (4.5, 'Tokyo was awesome!',               4, 14),   -- Viaje a Tokio, Isabella Sophia Miller
  (4.0, 'Shanghai was a blast!',            5, 15),   -- Viaje a Shanghái, Sophia Mia Anderson
  (5.0, 'Loved exploring Rome!',            6, 16),   -- Viaje a Roma, Mia Harper Davis
  (4.5, 'Venice is magical.',               7, 17),   -- Viaje a Venecia, Charlotte Martinez
  (4.0, 'Florencia is a must-see!',         8, 18),   -- Viaje a Florencia, Amelia Hernandez
  (5.0, 'Paris was a dream come true!',     9, 19),   -- Viaje a París, Evelyn Garcia
  (4.5, 'London exceeded my expectations.', 10, 10);  -- Viaje a Londres, Olivia Grace Martin
