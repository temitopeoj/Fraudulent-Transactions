select * from fraud_trans;

-- Question(1)-how many transaction occured per transcation type
select amount, type
from fraud_trans;

select type, count('type')
from fraud_trans
group by type;

--Question(2) - which transaction type has the highest number of fraudulent transaction
select * from fraud_trans;

select type, count ('isfraud')
from fraud_trans
where type in ('PAYMENT')
group by type;

---- Questions(3) What is the average fraudulent transaction amount
select * from fraud_trans;

select avg(amount) from fraud_trans;


-- Question(4) - what is the maximum fraudulent transaction amount
select * from fraud_trans;

select max(amount) from fraud_trans;

-- Question(5) What is the minimum fraudulent transaction amount
select min(amount) from fraud_trans
where amount > 0;

-- Question(6) Who are the Top 10 customer with highest amount defrauded
select * from fraud_trans;

select type, amount, nameorig
from fraud_trans
order by amount desc
limit 10;

-- Question(7) How effective is the bank in flagging fraud?
-- VERY POOR

-- Question(8) Who are the Top 20 fraudster
select type, amount, namedest, isfraud, isflaggedfraud
from fraud_trans
order by amount desc
limit 20;
