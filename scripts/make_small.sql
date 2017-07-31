#!/bin/bash 
sqlite3 $1 << "EOF"
CREATE TEMP TABLE og 
AS SELECT * FROM og
WHERE level LIKE "thaNOG"
LIMIT 1;

CREATE TEMP TABLE event 
AS SELECT * FROM event 
WHERE level LIKE "thaNOG" AND 
og LIKE "ENOG411CB2I"
LIMIT 20;

CREATE TEMP TABLE member
AS SELECT * FROM member
WHERE groups LIKE "%1CB2I%"; 

.backup temp eggnog.db
EOF
