Select count(*) as Total_Rows,
count(Description) as NON_null_description,
count(*) - Count(Description) as NO_description_rows
FROM retail_dataset