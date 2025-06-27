CREATE TABLE Tool
(
ToolID INT PRIMARY KEY,
ToolName VARCHAR(30),
Type VARCHAR(30),
PricePerHour DECIMAL(10,2)
)

INSERT INTO Tool (ToolID,ToolName,Type,PricePerHour)
VALUES
(1,'HandElectricDrill','HomeDIY',10)
INSERT INTO Tool (ToolID,ToolName,Type,PricePerHour)
VALUES
(2,'PneumaticDrill','Industrial',50)
INSERT INTO Tool (ToolID,ToolName,Type,PricePerHour)
VALUES
(3,'RoadRoller','Industrial',80)
INSERT INTO Tool (ToolID,ToolName,Type,PricePerHour)

UPDATE Tool
SET ToolName='Pliers'
WHERE ToolName='HandElectricDrill'

ALTER TABLE Tool
ADD Quantity INT

SELECT *
FROM Tool

SELECT COUNT(ToolName) AS NoOfTools
FROM Tool
WHERE PricePerHour<20







