  Kellys 3rd Purchase
hard


At Kelly's Ice Cream Shop, Kelly gives a 33% discount on each customer's 3rd purchase.

Write a query to select the 3rd transaction for each customer that received that discount. Output the customer id, transaction id, amount, and the amount after the discount as "discounted_amount".

Order output on customer ID in ascending order.

Note: Transaction IDs occur sequentially. The lowest transaction ID is the earliest ID.



purchases table
customer_id	     transaction_id	      amount
1001	           339473	            89
1002	           359433	            5
1003	           43176	            52
1004	           27169	            19
1001	           530588	            4
1004	           528902	            78
1005	           584167	            72
1003	           55479	            45
1005	           500607	            98
1004	           544617	            65
1001	           374711	            94
1002	           328456	            42
1005	           412764	            43
1001	           225602	            19
1004	           642498	            55
1002	           415562	            50
1005	           272319	            78
1001	           445346	            92
1002	           458215	            30
1004	           173711	            91
1003	           102487	            39
1005	           566617	            58


Field	           Data Type
customer_id	       int
transaction_id	   int
amount	           int



The answer

-- filter: apply a discount - 33%
-- row_number -- filtering when it equals 3
-- output: all colums with "discounted_amount"
-- Order by customer ID

SELECT customer_id ,transaction_id ,amount
  ,amount *0.67 As discounted_amount
  FROM (SELECT *,
  ROW_NUMBER() over (PARTITION by customer_id ORDER by transaction_id asc) as row_num
  FROM purchases) AS ROW_NUMBERS
  WHERE row_num=3
  Order by customer_ID ASC
  ;






Temperature Fluctuations
hard


Write a query to find all dates with higher temperatures compared to the previous dates (yesterday).

Order dates in ascending order.



temperatures table
date	             temperature
2022-01-01	            65
2022-01-02	            70
2022-01-03	            55
2022-01-04	            58
2022-01-05	            90
2022-01-06	            88
2022-01-07	            76
2022-01-08	            82
2022-01-09	            88
2022-01-10	            72
Field	            Data Type
date	            datetime
temperature      	int



The answer 

-- self join - wher day is 1 day off
-- use the temperatures  to sya where one is higher than the other
-- output: just date colum
-- ORDER by DATAs ASS

SELECT t1.date
  FROM temperatures t1
  INNER JOIN temperatures t2  
  ON DATEDIFF(t1.date,t2.date) =1
  AND t1.temperature > t2.temperature
  ORDER BY t1.date ASC
  ;