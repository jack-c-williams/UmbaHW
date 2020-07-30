SELECT DISTINCT loans.id as loan_id, -- I used distinct because there seemed to be repeats in the loan_id
       loans.amount as loan_amount,
	   users.id as user_id,
	   users.created as user_created,
	   transactions.transaction_fee,
       transactions.t_type
     
FROM loans JOIN transactions ON loans.id = transactions.loan_id -- here I used an inner join to join all three tables
 		  JOIN users ON users.id = loans.user_id
 			
WHERE (loans.loan_status = 'active' OR loans.loan_status = 'repaid') AND (transactions.t_type = 'disbursement') 
-- the above statement accounts for the conditions that were provided: loan status had to be active or repaid, and transaction type had to be disbursememnt

ORDER BY users.created ASC 



