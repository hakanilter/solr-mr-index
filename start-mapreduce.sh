NNHOST=hdfs://quickstart.cloudera:8020
ZKHOST=localhost:2181

hadoop --config /etc/hadoop/conf.cloudera.yarn \
	jar /usr/lib/solr/contrib/mr/search-mr-*-job.jar \
	org.apache.solr.hadoop.MapReduceIndexerTool \
	-Dmapreduce.map.java.opts=-Xmx1G \
	-Dmapreduce.reduce.java.opts=-Xmx1G \
	--log4j /usr/share/doc/search-*/examples/solr-nrt/log4j.properties \
	--morphline-file solr-parquet.conf \
	--output-dir $NNHOST/user/cloudera/outdir \
	--verbose \
	--go-live \
	--zk-host $ZKHOST/solr \
	--collection collection1 \
	$NNHOST/user/hive/warehouse/nyse_parquet 
