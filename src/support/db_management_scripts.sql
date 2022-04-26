--Create database orders_management
CREATE DATABASE orders_management;

--Drop database orders_management
DROP DATABASE orders_management;

--Rename database orders_management
ALTER DATABASE orders_management RENAME TO orders_management_new;

--Backup database orders_management
docker exec -i sql-task  /bin/bash -c "PGPASSWORD=123456  pg_dump --username postgres orders_management"
    > <desired_path>{/Users/ilianamarkova/Desktop/testDump/order_management.sql}

