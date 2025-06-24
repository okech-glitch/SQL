SELECT CourseName, Programming, Dataanalytics
FROM Course
PIVOT
(
SUM(Price) FOR CourseCategory in (Programming, Dataanalytics)
)
AS CoursePivot