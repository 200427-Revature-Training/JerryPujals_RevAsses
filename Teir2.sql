


select app_user from app_user  inner join user_role on app_user.role_id = user_role.role_id  where user_role."name" = 'BASIC_USER';


INSERT INTO public.app_user
(username, "password", first_name, last_name, role_id)
VALUES('Evilartnboy', 'guymandude', 'Jerry', 'Pujals', 4);

select *  from study_set inner join app_user on study_set.owner_id = app_user.user_id where app_user.user_id = 4;

/*select app_user.username, user_role."name", category."name", flashcard.question , flashcard.answer from flashcard where study_set.study_set_id = 1;
