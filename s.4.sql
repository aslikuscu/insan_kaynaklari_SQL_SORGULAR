-- her bir pozisyonda calisan kisi sayisini ve ortalama maaslarini getir


select pos.POSITION,
COUNT(p.ID) as position_count,
ROUND(AVG(p.SALARY),0) as avg_salary
from HR.dbo.POSITION as pos
inner join HR.dbo.PERSONN as p on p.POSITIONID=pos.ID
group by pos.POSITION
order by pos.POSITION
