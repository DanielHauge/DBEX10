# Database Exercise 10 (Modelling OECD data)
This repository is a exercise project for Software development (PBA) Database course. Daniel (cph-dh136)

## Description
This assignments task is to have a full round with sql. From conceptual idea to physical data mode and finaly extract some usefull information. It is based on a Assignment description [Here](https://gyazo.com/e0cee0579ce7be1aaed93cf92e481554). Data is allready existing, and can be found on peergrade.

## Assignment
#### Entity Relationship Diagram

![](https://raw.githubusercontent.com/DanielHauge/DBEX10/master/Chenerdiagram1.png)

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
Value DOUBLE PRECISION
);

CREATE TABLE Life(
location INTEGER REFERENCES Locations(id),
subject INTEGER REFERENCES Subjects(id),
Time VARCHAR,
Value DOUBLE PRECISION
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

- Note: X axis is the level of education and Y axis is the life expectency.

Least grown country: Brasilian. With A GDP growth of roughly 23% from 1960 to 2015

[![https://gyazo.com/1f586085e92c1729bca29a08da836157](https://i.gyazo.com/1f586085e92c1729bca29a08da836157.png)](https://gyazo.com/1f586085e92c1729bca29a08da836157)

Most grown country: Korea. With a GDP growth of roughly 9873% from 1960 to 2015.

[![https://gyazo.com/2bdc11dcf2c1c9ee2d44c88b86add385](https://i.gyazo.com/2bdc11dcf2c1c9ee2d44c88b86add385.png)](https://gyazo.com/2bdc11dcf2c1c9ee2d44c88b86add385)

#### Comments to plots.

There was not any education data for brasilian before 2007, so the results are little scewered. However, it is clear to say. That it might indicate that with general national higher education, you can expect to live longer. But we can also infer that with GDP growth comes education level growth.

#### Notes

- The database is setup with these commands. Assumed that it is run with vagrantfile from this reposity, and in the synced folder.

```
docker run -p 5432:5432 --rm -d -v $(pwd)/:/root/ --name psql postgres:alpine
docker exec -it psql bash
psql -U postgres < /root/Creation.sql
```
- All executions after database setup, can be found in the jupyter notebook [here](https://github.com/DanielHauge/DBEX10/blob/master/DBEX10Jupyter.ipynb)
