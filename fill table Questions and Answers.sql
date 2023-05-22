
insert into Questions (
     Question
)
select 'Что является важным условием для произрастания водорослей?'
where not exists( select 1
				    from Questions
				   where Question = 'Что является важным условием для произрастания водорослей?')
union all
select 'Выберите признак, характерный для водорослей?'
where not exists( select 1
				    from Questions
				   where Question = 'Выберите признак, характерный для водорослей?')
union all
select 'Клеточная пластида, вмещающая пигменты, называется: '
where not exists( select 1
				    from Questions
				   where Question = 'Клеточная пластида, вмещающая пигменты, называется: ')
union all
select 'Как расшифровывается с греческого языка название «хламидомонада»?'
where not exists( select 1
				    from Questions
				   where Question = 'Как расшифровывается с греческого языка название «хламидомонада»?')
union all
select 'При помощи чего передвигаются хламидомонады в воде?'
where not exists( select 1
				    from Questions
				   where Question = 'При помощи чего передвигаются хламидомонады в воде?');
				   
select * from Questions;


insert into Answers (
     Answer 
	,QuestionID 
	,IsCorrect
)
select 'Влажность'
       ,(select ID
		   from Questions
		  where Question = 'Что является важным условием для произрастания водорослей?')
	   ,true
where not exists( select 1
				    from Answers
				   where Answer = 'Влажность')
union all
 select 'Плодородие грунта'
       ,(select ID
		   from Questions
		  where Question = 'Что является важным условием для произрастания водорослей?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Плодородие грунта')
union all
 select 'Жара'
       ,(select ID
		   from Questions
		  where Question = 'Что является важным условием для произрастания водорослей?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Жара');
 

insert into Answers (
     Answer 
	,QuestionID 
	,IsCorrect
)
select 'Имеют корень, стебель, листья, цветы'
       ,(select ID
		   from Questions
		  where Question = 'Выберите признак, характерный для водорослей?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Имеют корень, стебель, листья, цветы')
union all
 select 'Их строение может быть одноклеточным или многоклеточным'
       ,(select ID
		   from Questions
		  where Question = 'Выберите признак, характерный для водорослей?')
	   ,true
where not exists( select 1
				    from Answers
				   where Answer = 'Их строение может быть одноклеточным или многоклеточным')
union all
 select 'Размножаются исключительно спорами или делением клеток'
       ,(select ID
		   from Questions
		  where Question = 'Выберите признак, характерный для водорослей?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Размножаются исключительно спорами или делением клеток');
				
 
insert into Answers (
     Answer 
	,QuestionID 
	,IsCorrect
)
select 'Хлоропласт'
       ,(select ID
		   from Questions
		  where Question = 'Клеточная пластида, вмещающая пигменты, называется: ')	
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Хлоропласт')
union all
 select 'Вакуоль'
       ,(select ID
		   from Questions
		  where Question = 'Клеточная пластида, вмещающая пигменты, называется: ')	
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Вакуоль')
union all
 select 'Хроматофор'
       ,(select ID
		   from Questions
		  where Question = 'Клеточная пластида, вмещающая пигменты, называется: ')	
	   ,true
where not exists( select 1
				    from Answers
				   where Answer = 'Хроматофор');


insert into Answers (
     Answer 
	,QuestionID 
	,IsCorrect
)
select 'Водоросль, имеющая зеленую окраску'
       ,(select ID
		   from Questions
 		  where Question = 'Как расшифровывается с греческого языка название «хламидомонада»?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Водоросль, имеющая зеленую окраску')
union all
 select 'Простейший организм, покрытый одеждой (оболочкой)'
       ,(select ID
		   from Questions
 		  where Question = 'Как расшифровывается с греческого языка название «хламидомонада»?')
	   ,true
where not exists( select 1
				    from Answers
				   where Answer = 'Простейший организм, покрытый одеждой (оболочкой)')
union all
 select 'Растение, живущее в воде'
       ,(select ID
		   from Questions
 		  where Question = 'Как расшифровывается с греческого языка название «хламидомонада»?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Растение, живущее в воде');
										

insert into Answers (
     Answer 
	,QuestionID 
	,IsCorrect
)
select 'Ресничек'
       ,(select ID
  		   from Questions
 		  where Question = 'При помощи чего передвигаются хламидомонады в воде?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Ресничек')
union all
 select 'Жгутиков'
       ,(select ID
  		   from Questions
 		  where Question = 'При помощи чего передвигаются хламидомонады в воде?')
	   ,false
where not exists( select 1
				    from Answers
				   where Answer = 'Жгутиков')
union all
 select 'Хвостика'
       ,(select ID
  		   from Questions
 		  where Question = 'При помощи чего передвигаются хламидомонады в воде?')
	   ,true
where not exists( select 1
				    from Answers
				   where Answer = 'Хвостика');

select * from Answers;