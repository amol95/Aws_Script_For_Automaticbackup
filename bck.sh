DATE=`date +"%d_%b_%Y_%H%M"`
SQLFILE=/home/amolait/testdir/db_bck_${DATE}.sql
DATABASE="demodb"
USER="funde"
PASSWORD="funde123"

mysqldump --no-tablespaces --skip-lock-tables -u ${USER} -p${PASSWORD} ${DATABASE}|gzip > ${SQLFILE}.gz

sudo find /home/amolait/testdir/. -mtime +2 -exec rm {} \;


