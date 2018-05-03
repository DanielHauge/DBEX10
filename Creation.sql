CREATE TABLE Locations(id INTEGER PRIMARY KEY,Countrycode VARCHAR);
CREATE TABLE Subjects(id INTEGER PRIMARY KEY,SubjectType VARCHAR);
CREATE TABLE Education(location INTEGER REFERENCES Locations(id), subject INTEGER REFERENCES Subjects(id), Time VARCHAR, Value DOUBLE PRECISION);
CREATE TABLE Life(location INTEGER REFERENCES Locations(id),subject INTEGER REFERENCES Subjects(id),Time VARCHAR,Value DOUBLE PRECISION);
CREATE TABLE GDP(location INTEGER REFERENCES Locations(id),subject INTEGER REFERENCES Subjects(id),Meassure_Type VARCHAR,Time VARCHAR,Value DOUBLE PRECISION);
\copy Locations FROM /root/locations.csv CSV
\copy Subjects FROM /root/subjects.csv  CSV
\copy Life FROM /root/Life.csv CSV
\copy Education FROM /root/Edu.csv CSV
\copy GDP FROM /root/GDPS.csv CSV
