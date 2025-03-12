
select  * from (
SELECT show_id, listed_in_1 as category FROM [netflix_data].[netflix_data].[listed_in] 
union 
SELECT show_id, listed_in_2 as category FROM [netflix_data].[netflix_data].[listed_in]
union 
SELECT show_id, listed_in_3 as category FROM [netflix_data].[netflix_data].[listed_in]
)a 
where category IS NOT NULL



SELECT  *      -- <<== select as many columns as you want
        INTO [netflix_data].[netflix_data].netflix_listed_in 
FROM  (
SELECT show_id, listed_in_1 as category FROM [netflix_data].[netflix_data].[listed_in] 
union 
SELECT show_id, listed_in_2 as category FROM [netflix_data].[netflix_data].[listed_in]
union 
SELECT show_id, listed_in_3 as category FROM [netflix_data].[netflix_data].[listed_in]
) p
where category IS NOT NULL
