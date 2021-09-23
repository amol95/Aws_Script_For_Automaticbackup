DATE=`date +"%d_%b_%Y_%H%M"`
SQLFILE=/home/amolait/testdir/aws_bck_${DATE}.sql
DATABASE="demodb"
USER="funde"
PASSWORD="funde123"
mysqldump --no-tablespaces --skip-lock-tables -u ${USER} -p${PASSWORD} ${DATABASE}|gzip > ${SQLFILE}.gz
aws s3 cp ${SQLFILE}.gz s3://backuptest12
sudo find /home/amolait/testdir/. -mtime +10 -exec rm {} \; 

