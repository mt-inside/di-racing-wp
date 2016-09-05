docker run -it --network diracingwp_default --link diracingwp_db_1:mysql --rm mysql mysqldump -hmysql -uroot -pwordpress wordpress
