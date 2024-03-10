--Name: Hammad Hafeez
--ID: FA22-BCS-186

-- 1) Select all data from the table:

Select *from TennisData

-- 2) Select distinct outlook values:

Select distinct outlook from TennisData

-- 3) Count the number of occurrences for each outlook:

Select count(outlook) from TennisData

-- 4) Select days where tennis was played:

Select day from TennisData
where Tennis = 'Yes'

-- 5) Select days where tennis was not played and the weather was sunny:

Select day from TennisData
where Tennis = 'No'

-- 6) Select days with high humidity where tennis was played:

Select day from TennisData
where Humidity = 'High'

-- 7) Select days with a cool temperature and strong wind where tennis was played:

Select *from TennisData
where Temp = 'cool' AND Tennis = 'Yes'

-- 8) Count the total number of days in the dataset:

Select count(Day) from TennisData

-- 9) Select days with overcast weather where tennis was played and the temperature was hot:

Select Day from TennisData
where Outlook = 'Overcast' and Temp = 'Hot'

-- 10) Select days where tennis was played and the wind was weak or the humidity was normal:

Select Day from TennisData
where tennis = 'Yes' and Wind = 'Weak' or Humidity = 'Normal'

-- 11) Select days where tennis was not played and the outlook was either sunny or overcast:

Select Day from TennisData
where tennis = 'NO' and (Outlook = 'Sunny' or Outlook = 'Overcast')

-- 12) Select days with mild temperature where tennis was played and the wind was not strong:

Select Day from TennisData
where Temp = 'Mild' and Wind = 'weak'

-- 13) Count the number of days where tennis was played in each temperature category:

Select Temp,Count(Day) as [Number of Days] from TennisData where tennis = 'Yes'
group by Temp

-- 14) Select days where tennis was played and the outlook was not rainy:

Select Day from TennisData
where Tennis = 'Yes' and Outlook != 'Rainy'

-- 15) Select days where tennis was played and the humidity was high or the wind was strong:

Select Day from TennisData
where tennis = 'Yes' and Humidity = 'High' or Wind = 'Strong'

-- 16) Count the number of days where tennis was not played:

Select Count(Day) from TennisData
where tennis = 'No'

-- 17) Select days where tennis was played and the outlook was either sunny or overcast, and the wind was weak:

Select Day from TennisData
where tennis = 'Yes' and (Outlook = 'Sunny' or Outlook = 'Overcast') and Wind = 'weak'

-- 18) Select days where tennis was not played and the temperature was mild or the wind was strong:

Select Day from TennisData
where tennis = 'No' and (Temp = 'Mild' or wind = 'Strong')

-- 19) Count the number of days where tennis was played with each combination of outlook and humidity:

SELECT Outlook,Humidity, COUNT(*) AS Number_of_Days
FROM TennisData
WHERE tennis = 'Yes'
GROUP BY Outlook, Humidity;

-- 20) Select days where tennis was played and the temperature was hot, and the humidity was not high:

Select Day from TennisData
where tennis = 'Yes' and Temp = 'hot' and Humidity != 'high'

-- 21) Select days where tennis was played and the weather was not rainy or the wind was not strong:

Select Day from TennisData
where tennis = 'Yes' and Outlook != 'Rainy' or Wind != 'Strong'

-- 22) Select days where tennis was not played and the outlook was rainy or the temperature was cool:

Select Day from TennisData
where tennis = 'No' and Outlook = 'Rainy' and Temp = 'Cool'

-- 23) Count the number of days where tennis was played in each humidity category:

Select Humidity,count(Day) as [Number of Days] from TennisData
where Tennis = 'Yes'
group by Humidity

-- 24) Select days where tennis was played and the outlook was sunny, and the humidity was normal:

Select Day from TennisData
where tennis = 'Yes' and Outlook = 'Sunny' and Humidity = 'Normal' 

-- 25) Select days where tennis was played and the temperature was cool or the wind was weak:

Select Day from TennisData
where tennis = 'Yes' and Temp = 'Cool' or Wind = 'Weak'

-- 26) Count the number of days where tennis was not played with each combination of outlook and wind:

Select  Outlook,Wind, count(Day) as [Number of Days] from TennisData
where tennis = 'No'
group by Outlook,Wind

-- 27) Select days where tennis was not played and the outlook was overcast, and the humidity was high:

Select Day from TennisData
where Tennis = 'No' and Outlook = 'Overcast' and Humidity = 'High'

-- 28) Select days where tennis was played and the temperature was mild, and the humidity was not high:

Select Day from TennisData
where Tennis = 'Yes' and Temp = 'Mild' and Humidity != 'High'

-- 29) Count the number of days where tennis was played with each combination of temperature and wind:

Select Temp,Wind, Count(Day) as [Number of Days] from TennisData
where Tennis = 'Yes'
group by Temp,Wind

-- 30) Select days where tennis was not played and the outlook was rainy, and the wind was strong:

Select Day from TennisData
where Tennis = 'No' and Outlook = 'Rainy' and Wind = 'Strong'

-- 31) Select days where tennis was played and the outlook was not rainy or the temperature was hot:
       select Day From TennisData
	   Where Tennis = 'Yes' AND Outlook != 'Rainy' OR temp = 'Hot'


-- 32) Select days where tennis was played and the humidity was high, and the wind was not strong:
       select Day from TennisData
	   Where Tennis = 'Yes' AND Humidity = 'High' AND wind != 'Strong'


-- 33) Count the number of days where tennis was played in each wind category:
       Select wind, Count(Day) as [Num of days] From TennisData
	   Where Tennis = 'Yes'
	   group by Wind


-- 34) Select days where tennis was played and the outlook was sunny, and the humidity was high:
       select Day from TennisData 
	   Where Tennis = 'Yes' AND Outlook = 'Sunny' AND Humidity = 'High' ;



-- 35) Select days where tennis was played and the temperature was mild, and the wind was weak:
       select day from TennisData
	   where Tennis = 'Yes' AND Temp = 'mild' AND wind = 'Weak' 



-- 36) Count the number of days where tennis was not played in each temperature category:
       Select temp, Count(Day) as [Num of days] From TennisData
	   Where Tennis = 'NO' 
	   group by Temp



-- 37) Select days where tennis was played and the outlook was overcast, and the wind was strong:
       select Day From TennisData 
	   Where Tennis = 'Yes' AND Outlook = 'overcast' AND wind = 'Strong' 



-- 38) Select days where tennis was not played and the temperature was hot, and the humidity was not high:
       select Day from TennisData
	   Where Tennis = 'NO' AND Temp = 'Hot' AND Humidity!= 'High'   


-- 39) Count the number of days where tennis was not played with each combination of outlook and humidity:
       Select outlook, humidity, Count(Day) as [Num of days] From TennisData
	   where tennis = 'NO' 
	   group by outlook,Humidity  



-- 40) Select days where tennis was not played and the outlook was rainy, and the humidity was normal:
       select Day from TennisData
	   Where Tennis = 'NO' AND Outlook = 'Rainy' AND Humidity = 'Normal' 


-- 41) Select days where tennis was played and the temperature was cool, and the wind was not strong:

Select Day from TennisData
where Tennis = 'Yes' and Temp = 'Cool' and Wind != 'Strong'


-- 42) Count the number of days where tennis was played with each combination of outlook and wind:


Select Outlook,Wind, count(*) as [Number of Days] from TennisData
where Tennis = 'Yes'
group by Outlook,Wind

-- 43) Select days where tennis was played and the outlook was sunny, and the humidity was normal:

Select Day from TennisData
where Tennis = 'Yes' and Outlook = 'Sunny' and Humidity = 'Normal'

-- 44) Select days where tennis was not played and the temperature was mild, and the wind was strong:

Select Day from TennisData
where Tennis = 'No' and Temp = 'Mild' and Wind = 'Strong'

-- 45) Count the number of days where tennis was not played in each wind category:

Select Wind, count(Day) as [Number of Days] from TennisData
where Tennis = 'No'
group by Wind

-- 46) Select days where tennis was played and the outlook was overcast, and the humidity was normal:

Select Day from TennisData
where Tennis = 'Yes' and Outlook = 'Overcast' and Humidity = 'Normal'

-- 47) Select days where tennis was played and the temperature was hot, and the wind was weak:

Select Day from TennisData
where Tennis = 'Yes' and Temp = 'Hot' and Wind = 'Weak' 

-- 48) Count the number of days where tennis was played with each combination of temperature and humidity:

Select Temp,Humidity, COUNT(Day) from TennisData
where Tennis = 'Yes'
group by Temp,Humidity

-- 49) Select days where tennis was played and the outlook was sunny, and the wind was not strong:

Select Day from TennisData
where Tennis = 'Yes' and Outlook = 'Sunny' and Wind != 'Strong'

-- 50) Select days where tennis was not played and the temperature was cool, and the humidity was high:

Select Day from TennisData
where Tennis = 'No' and Temp = 'Cool' and Humidity = 'High'


