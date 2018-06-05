curl "http://localhost:8983/solr/collection1_shard1_replica1/update?commit=true" -H "Content-Type: text/xml" --data-binary '<delete><query>*:*</query></delete>'

