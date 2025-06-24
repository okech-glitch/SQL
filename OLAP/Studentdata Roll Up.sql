SELECT Studentname, AdmissionYear,StudentType, AVG (FeesPaid) as FeesPaid
from Studentdata
GROUP BY ROLLUP (Studentname, AdmissionYear,StudentType)