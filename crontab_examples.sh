# run hello.sh at midnight on the first of the month
0 0 1 * * /usr/scripts/jobs/hello.sh
 # run to.py at 10:30AM on the 10th of the month  
30 10 10 * * /usr/scripts/jobs/to.py
# run cron.sh every day at 9:30AM
30 9 * * * /usr/scripts/jobs/cron.sh
