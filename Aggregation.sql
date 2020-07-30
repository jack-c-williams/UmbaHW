SELECT EXTRACT(month FROM created) as month,
	  EXTRACT(year FROM created) as year,
	  COUNT(*) as num_loans, -- these are just the different aggregations that were asked for
	  SUM(amount) as sum_loans,
	  AVG(amount) as average_loan_amnt,
	  MIN(amount) as min_loan_amnt,
	  MAX(amount) as max_loan_amnt
	  
	   
FROM Loans
GROUP BY 2,1 -- this is the most crucial step that will give each stat by month
ORDER BY 2,1 -- orders by month
;

SELECT EXTRACT(month FROM created) as month,
	  COUNT(*) as num_loans,
	  SUM(amount) as sum_loans,
	  AVG(amount) as average_loan_amnt,
	  MIN(amount) as min_loan_amnt,
	  MAX(amount) as max_loan_amnt
	   
FROM Loans
GROUP BY 1 
ORDER BY 1 


-- A quick note: I provide two queries, the first where it is grouped by year and by month, and the second where I group by month over all the years. 
 