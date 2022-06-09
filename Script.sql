
CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL primary key,
	Performer_name VARCHAR(80) not null
);
CREATE TABLE IF NOT EXISTS Genre_Performer (
	GenreID integer references Genre(id),
	Performer_id integer references Performer(id),
	constraint GP PRIMARY KEY (GenreID, Performer_id)
); 
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL primary key,
	Album_name varchar(80) not null,
	Release_year integer not null
);
create table if not exists Performer_Album (
    Performer_id integer references Performer(id),
    Album_id integer references Album(id),
    constraint PA primary key (Performer_id, Album_id)
);
create table if not exists Track (
	id serial primary key,
	Track_name varchar(100) not null unique,
	Time_ integer not null,
	Album_id integer references Album(id)
);
create table if not exists Collection(
	id serial primary key,
	Coll_Name varchar(80) not null unique,
	Realese_year integer not null
);
create table if not exists Collection_and_Track (
	Track_ID integer references Track(id),
	Collection_ID integer references Collection(id),
	constraint TC primary key (Track_ID, Collection_ID)
)