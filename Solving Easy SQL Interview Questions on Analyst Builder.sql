  Apply Discount
easy

A Computer store is offering a 25% discount for all new customers over the age of 65 or customers that spend more than $200 on their first purchase.

The owner wants to know how many customers received that discount since they started the promotion.

Write a query to see how many customers received that discount.


customers table
customer_id	   age	   total_purchase
1001	        72	   1053
1002	        86	   826
1003	        37	   713
1004	        61	   923
1005	        50	   90
1006	        45	   1057
1007	        39	   673
1008	        69	   952
1009	        29	   874
1010	        23	   524
1011	        81	   496
1012	        62	   384
1013	        80	   1059
1014	        99	   1071
1015	        75	   1015


Field	        Data Type
customer_id	    int
age         	int
total_purchase	int


the answer:

-- filter: over 65 or spend  more than $200
-- outpout:count on the number of customers that fit that filter

SELECT COUNT(customer_id)
  FROM customers
  WHERE age >65
  or total_purchase >200
  ;







   Car Failure
easy


Cars need to be inspected every year in order to pass inspection and be street legal. If a car has any critical issues it will fail inspection or if it has more than 3 minor issues it will also fail.

Write a query to identify all of the cars that passed inspection.

Output should include the owner name and vehicle name. Order by the owner name alphabetically.


cars table
owner_name	      vehicle	         minor_issues	  critical_issues
Jim	              2012 Ford Fusion	       3  	            0
Mikaela	          2021 Dodge Stratus	   2	            0
Karen	          2008 Ford Escape	       5  	            0
Michael	          2021 Kia Telluride	   2	            1
Sally	          2023 Tesla Model S	   0	            0
Joseph	          2015 Toyota Highlander   2	            0
David	          1998 Ford F-150	       2	            0
Lauren	          2004 Honda Pilot         4	            0
Chuck	          2016 Buick Enclave	   0	            1
Caleb	          2007 Toyota Forerunner   4	            0
Hannah	          2018 Honda Accord	       2	            0



Field	           Data Type
owner_name	       text
vehicle	           text
minor_issues	   int
critical_issues	   int



the answer:
-- Filter: No critical issues and  more than 3 minor issues
-- outPout: owner name and vehicle name
-- Order by the owner name alphabetically(asc).

SELECT owner_name ,vehicle 
FROM  inspections
where critical_issues =0 
AND minor_issues <=3
ORDER by owner_name ASC;

