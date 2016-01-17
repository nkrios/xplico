--
-- Tabel of source (IP o name)
--
CREATE TABLE IF NOT EXISTS sources (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  ip VARCHAR( 255 ) NOT NULL,
  name VARCHAR( 255 ) NOT NULL
);