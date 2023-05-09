select * from fraud_trans;

-- Question(1)-how many transaction occured per transcation type
select amount, type
from fraud_trans;

select type, count('type')
from fraud_trans
group by type
order by count(type) desc;

--Question(2) - which transaction type has the highest number of fraudulent transaction
select * from fraud_trans;

select type, count('type')
from fraud_trans
group by type
order by count('type') desc
limit 1;

---- Questions(3) What is the average fraudulent transaction amount
select * from fraud_trans;

select type, round(avg(amount)) 
from fraud_trans
where isfraud = 1
group by type;


-- Question(4) - what is the maximum fraudulent transaction amount
select * from fraud_trans;

select max(amount) from fraud_trans;

-- Question(5) What is the minimum fraudulent transaction amount
select min(amount)
from fraud_trans;

-- Question(6) Who are the Top 10 customer with highest amount defrauded
select * from fraud_trans;

select nameorig, sum(amount)
from fraud_trans
where isfraud = 1
group by nameorig
order by sum(amount) desc
limit 10;

-- Question(7) How effective is the bank in flagging fraud?
select *
from fraud_trans

select sum(isflaggedfraud) as flagged_as_fraud, sum(isfraud) as fraud, sum(isfraud)/sum(isflaggedfraud)
from fraud_trans;
-- Question(8) Who are the Top 20 fraudster
select namedest, sum(amount) as total_amount
from fraud_trans
where isfraud = 1
group by 1
order by sum(amount) desc
limit 20;
