select * from OnlineShopCustomerSalesData


-- Change The Gender To M and F 

select Distinct Gender, count(Gender)
from OnlineShopCustomerSalesData
group by Gender


select Gender,
 case when Gender = '0' then 'M'
  when Gender = '1' then 'F'
  else Gender
  end
from OnlineShopCustomerSalesData


update OnlineShopCustomerSalesData
set Gender = case when Gender = '0' then 'M'
  when Gender = '1' then 'F'
  else Gender
  end

  select * from OnlineShopCustomerSalesData


  --Change the pay Method 

  select  Distinct Pay_Method,count(Pay_Method)
  from  OnlineShopCustomerSalesData
  group by  Pay_Method 
  order by Pay_Method ASC 


  select Pay_Method,
  case when Pay_Method = '3' then 'Other'
	   when Pay_Method = '2' then 'PayPal'
	   when Pay_Method ='1'	 then 'Card'
	   when Pay_Method ='0'	 then ' Digital Wallets'
	   else Pay_Method
	   end
  from  OnlineShopCustomerSalesData


  update OnlineShopCustomerSalesData
  set Pay_Method=  case when Pay_Method = '3' then 'Other'
	   when Pay_Method = '2' then 'PayPal'
	   when Pay_Method ='1'	 then 'Card'
	   when Pay_Method ='0'	 then ' Digital Wallets'
	   else Pay_Method
	   end
	   
select * from OnlineShopCustomerSalesData

-- Browser change to Edge ,Safari,Chrome,Other   

  select  Distinct Browser,count(Browser)
  from  OnlineShopCustomerSalesData
  group by  Browser 
  order by Browser ASC 

 select Browser,
  case when Browser = '3' then 'Other'
	   when Browser = '2' then 'Edge'
	   when Browser ='1'  then 'Safari'
	   when Browser ='0'  then 'Chrome'
	   else Browser
	   end
  from  OnlineShopCustomerSalesData


  update OnlineShopCustomerSalesData
  set Browser= case when Browser = '3' then 'Other'
	   when Browser = '2' then 'Edge'
	   when Browser ='1'  then 'Safari'
	   when Browser ='0'  then 'Chrome'
	   else Browser
	   end 
	   
select * from OnlineShopCustomerSalesData


-- Newsletter change to subscribed and not not subscribed
 select  Distinct Newsletter,count(Newsletter)
  from  OnlineShopCustomerSalesData
  group by  Newsletter 
  order by Newsletter ASC 

 select Newsletter,
  case
	   when Newsletter ='1'  then 'subscribed'
	   when Newsletter ='0'  then 'not subscribed'
	   else Newsletter
	   end
  from  OnlineShopCustomerSalesData


  update OnlineShopCustomerSalesData
  set Newsletter= case
	   when Newsletter ='1'  then 'subscribed'
	   when Newsletter ='0'  then 'not subscribed'
	   else Newsletter
	   end

	   select * from OnlineShopCustomerSalesData


	   --  drop column Voucher

	   alter table OnlineShopCustomerSalesData
	   drop column Voucher

-- Average of Age is 39
 select avg(cast(Age as int ))
 from OnlineShopCustomerSalesData

 -- the max age is 52 and the min age is 26
  select STDEV(cast(Age as int ))
 from OnlineShopCustomerSalesData


 select * from OnlineShopCustomerSalesData

 -- Max Spend Time 
 select max(Time_Spent)
 from OnlineShopCustomerSalesData

  select min(Time_Spent)
 from OnlineShopCustomerSalesData

 --Average Time Spent For Genders

  select Gender,count(Gender) as NumberOfGender,avg(cast(Time_Spent as int)) as TimeSpentForGenders
 from OnlineShopCustomerSalesData
 group by Gender



 -- change the date fromat
 select REPLACE(Purchase_DATE, '.', '/') 
 from OnlineShopCustomerSalesData


 update OnlineShopCustomerSalesData
 set Purchase_DATE =REPLACE(Purchase_DATE, '.', '/') 

 -- Average Purchase Value 

 select avg(cast(Purchase_VALUE as float))
 from OnlineShopCustomerSalesData

  -- Max and min for Purchase Value 

   select max(cast(Purchase_VALUE as float))
 from OnlineShopCustomerSalesData



   select min(cast(Purchase_VALUE as float))
 from OnlineShopCustomerSalesData


 -- Number of Purchases
 
select Distinct N_Purchases, count(N_Purchases)
from OnlineShopCustomerSalesData
group by N_Purchases
order by N_Purchases desc


-- 
select Distinct Gender , count(Gender)
from OnlineShopCustomerSalesData
where Newsletter = 'not subscribed'
group by Gender


select Distinct Gender , count(Gender)
from OnlineShopCustomerSalesData
where Newsletter = 'subscribed'
group by Gender


select    avg(cast(Revenue_Total as float))
from OnlineShopCustomerSalesData



select  max( Revenue_Total)
from OnlineShopCustomerSalesData
