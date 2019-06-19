INSERT INTO blogful_articles (title, content, date_published)
VALUES
  ('butter', 'creamy and delicious', now() - '21 days'::INTERVAL ),
  ('banana', 'yellow fruit', now() - '21 days'::INTERVAL ),
  ('water', 'wet stuff', now() - '21 days'::INTERVAL ),
  ('thunder', 'loud loud loud', now() - '17 days'::INTERVAL ),
  ('sky', 'big blue', now() - '16 days'::INTERVAL ),
  ('ocean', 'big blue, wet and salty', now() - '15 days'::INTERVAL ),
  ('tomato', 'tomato', now() - '15 days'::INTERVAL ),
  ('tornado', 'fast, circular wind', now() - '15 days'::INTERVAL ),
  ('blinker', 'going left', now() - '8 days'::INTERVAL ),
  ('ostrich', 'ground bird', now() - '5 days'::INTERVAL ),
  ('starfish', '5', now() - '5 days'::INTERVAL ),
  ('soup', 'alphabet or chicken tortilla', now() - '4 days'::INTERVAL ),
  ('soil', 'dirty? or loamy?', now() - '2 days'::INTERVAL ),
  ('rollercoaster', 'up and down', now() - '1 days'::INTERVAL ),
  ('elevator', 'up and down', now() - '1 days'::INTERVAL ),
  ('phone', 'tele, cell, rotary, pay', now() - '1 days'::INTERVAL ),
  ('hamburger', 'helper, bun', now()),
  ('cape', 'd crusader', now()),
  ('spider-man', 'friendly, neighborhood web-slinger', now()),
  ('I, Robot', 'Isaac Asimov', now())
  ;