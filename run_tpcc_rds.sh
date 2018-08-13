#for i in `seq 3600 100 5000`
#do
i=3700
./tpcc.lua --mysql-host=cl2.cluster-cdy17lilqrl7.us-east-1.rds.amazonaws.com --mysql-user=sbtest --mysql-password=sbtestsbtest --mysql-db=sbtest --time=900 --threads=500 --rate=$i --report-interval=1 --tables=10 --scale=100 --use_fk=0 --mysql_table_options="COLLATE latin1_bin" --trx_level=RC run | tee -a res_high_rate_${i}.txt
#done
