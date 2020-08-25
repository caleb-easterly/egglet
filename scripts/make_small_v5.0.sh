#!/bin/bash 
sqlite3 $1 << "EOF"

CREATE TEMP TABLE og 
AS SELECT * FROM og
WHERE description = 'Cytidylyltransferase'
AND level LIKE "651137"
LIMIT 1;

CREATE TEMP TABLE eggnog
AS SELECT * FROM eggnog
WHERE groups LIKE "%41T2K%";

CREATE TEMP TABLE event 
AS SELECT * FROM event 
WHERE level=651137
AND og='41T2K'
LIMIT 20;

CREATE TEMP TABLE orthologs
AS SELECT * FROM orthologs
WHERE name = "436308.Nmar_0135";

CREATE TEMP TABLE bigg
AS SELECT * FROM bigg
WHERE name = "436308.Nmar_0135";

CREATE TEMP TABLE gene_ontology
AS SELECT * FROM gene_ontology
WHERE name = "436308.Nmar_0135";

CREATE TEMP TABLE kegg
AS SELECT * FROM kegg
WHERE name = "436308.Nmar_0135";

CREATE TEMP TABLE seq
AS SELECT * FROM seq
WHERE name = "436308.Nmar_0135";

CREATE TEMP TABLE version
AS SELECT * FROM version;

.backup temp eggnog_tiny.db
EOF
