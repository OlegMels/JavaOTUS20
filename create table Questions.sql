create table if not exists Questions (
     ID int generated always as identity
	,Question varchar(255) not null
	,primary key (ID)
);

select * from Questions;
