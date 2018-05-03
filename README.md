# Database Exercise 10 (Modelling OECD data)
This repository is a exercise project for Software development (PBA) Database course. Daniel (cph-dh136)

## Description
This assignments task is to have a full round with sql. From conceptual idea to physical data mode and finaly extract some usefull information. It is based on a Assignment description [Here](https://gyazo.com/e0cee0579ce7be1aaed93cf92e481554). Data is allready existing, and can be found on peergrade.

## Assignment
#### Entity Relationship Diagram
picture of idea modeler here

#### Physical Data model
```
CREATE TABLE Locations(
id INTEGER PRIMARY KEY,
Countrycode VARCHAR
);

CREATE TABLE Subjects(
id INTEGER PRIMARY KEY,
SubjectType VARCHAR
);

CREATE TABLE Education(
location INTEGER REFERENCES Locations(id),
subject INTEGER REFERENCES Subjects(id),
Time VARCHAR,
Value DOUBLE PRECISION,
);

CREATE TABLE Life(
location INTEGER REFERENCES Locations(id),
subject INTEGER REFERENCES Subjects(id),
Time VARCHAR,
Value DOUBLE PRECISION,
);

CREATE TABLE GDP(
location INTEGER REFERENCES Locations(id),
subject INTEGER REFERENCES Subjects(id),
Meassure_Type VARCHAR,
Time VARCHAR,
Value DOUBLE PRECISION
);
```

#### Plot
picture of plot from jupyter here

#### Notes

- The database is setup with these commands

```
commands
```

- All executions after database setup, can be found in the jupyter notebook [here]()
