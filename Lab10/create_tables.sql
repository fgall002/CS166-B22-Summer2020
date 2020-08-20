drop table if exists part_nyc;
create table part_nyc (part_number integer, 
                       supplier integer, 
                       color integer, 
                       on_hand integer, 
                       descr text); 
COPY part_nyc
FROM 'part_nyc.dat'
WITH DELIMITER ',';

drop table if exists part_sfo;
create table part_sfo (part_number integer, 
                       supplier integer,
                       color integer, 
                       on_hand integer, 
                       descr text); 
COPY part_sfo
FROM 'part_sfo.dat'
WITH DELIMITER ',';

drop table if exists supplier; 
create table supplier (supplier_id integer,
                       supplier_name varchar(20));
insert into supplier values (0, 'Bob');
insert into supplier values (1, 'Ted');
insert into supplier values (2, 'Carol');
insert into supplier values (3, 'Alice');
insert into supplier values (4, 'Jerry');
insert into supplier values (5, 'Mickey');
insert into supplier values (6, 'Phil');
insert into supplier values (7, 'Vince');
insert into supplier values (8, 'Bill');
insert into supplier values (9, 'Donna');

                       
drop table if exists color; 
create table color (color_id integer, 
                    color_name varchar(20));
insert into color values (0, 'Red'); 
insert into color values (1, 'Green');
