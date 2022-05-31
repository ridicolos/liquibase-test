-- liquibase formatted sql

-- changeset dennisneise:1 (tag v.0.1)
create schema test;
create table test.person(id int primary key, name varchar);
insert into test.person values (1, 'Dennis');
insert into test.person values (2, 'Tim');
insert into test.person values (3, 'Julian');
insert into test.person values (4, 'Niels');
insert into test.person values (5, 'Kai');

--changeset dennisneise:2
alter table test.person add geburtsdatum timestamp;
--rollback alter table test.person drop geburtsdatum;