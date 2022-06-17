-- liquibase formatted sql

--changeset dennisneise:1
create table test.person(id int primary key, name varchar);
insert into test.person values (1, 'Dennis');
insert into test.person values (2, 'Tim');
insert into test.person values (3, 'Julian');
insert into test.person values (4, 'Niels');
insert into test.person values (5, 'Kai');
--rollback drop table test.person;

--changeset dennisneise:2
alter table test.person add geburtsdatum timestamp;
--rollback alter table test.person drop geburtsdatum;

--changeset dennisneise:4 runOnChange:true
alter table test.person add column if not exists schuhgroesse varchar;
--comment: KOMMENTAR!
--rollback alter table test.person drop column schuhgroesse;
