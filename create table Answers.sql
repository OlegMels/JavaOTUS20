create table if not exists Answers (
     ID int generated always as identity
	,Answer varchar(255) not null
	,QuestionID int not null
	,IsCorrect boolean
	,primary key (ID)
);

select * from Answers;
