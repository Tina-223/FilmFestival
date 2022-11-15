create table film_festival (
	id bigint auto_increment,	
	name varchar(255),
	country varchar(255),
	primary key (id)
);

create table academy_best_award (
	id bigint auto_increment,
	year int,
	round int,
	film_id bigint,	
	film_festival_id bigint,
	primary key (id)
);

create table venice_best_award (
	id bigint auto_increment,
	year int,
	round int,
	film_id bigint,	
	film_festival_id bigint,
	primary key (id)
);

create table berlin_best_award (
	id bigint auto_increment,
	year int,
	round int,
	film_id bigint,	
	film_festival_id bigint,
	primary key (id)
);

create table cannes_best_award (
	id bigint auto_increment,
	year int,
	round int,
	film_id bigint,	
	film_festival_id bigint,
	primary key (id)
);

create table user (
	id bigint auto_increment,
	username varchar(255),
	password varchar(255),
	primary key (id)
);

create table review_academy (
	id bigint auto_increment,
	grade int,
	one_line_review varchar(1000),
	academy_award_id bigint,
	user_id bigint,
	primary key (id)
);

create table review_venice (
	id bigint auto_increment,
	grade int,
	one_line_review varchar(1000),
	venice_award_id bigint,
	user_id bigint,
	primary key (id)
);

create table review_berlin (
	id bigint auto_increment,
	grade int,
	one_line_review varchar(1000),
	berlin_award_id bigint,
	user_id bigint,
	primary key (id)
);

create table review_cannes (
	id bigint auto_increment,
	grade int,
	one_line_review varchar(1000),
	cannes_award_id bigint,
	user_id bigint,
	primary key (id)
);

create table film (
	id bigint auto_increment,
	name varchar(255),
	grade int,
	gender char(1),
	director_id bigint,	
	primary key (id)
);

create table director (
	id bigint auto_increment,
	name varchar(255),
	nationality varchar(255),
	primary key (ID)
);

create table film_hit (
	id bigint auto_increment,
	sales bigint,
	spectator_num int,
	film_id bigint,	
	primary key (id)
);

alter table academy_best_award add foreign key(film_id) references film(id) on delete cascade;
alter table academy_best_award add foreign key(film_festival_id) references film_festival(id) on delete cascade;

alter table venice_best_award add foreign key(film_id) references film(id) on delete cascade;
alter table venice_best_award add foreign key(film_festival_id) references film_festival(id) on delete cascade;

alter table berlin_best_award add foreign key(film_id) references film(id) on delete cascade;
alter table berlin_best_award add foreign key(film_festival_id) references film_festival(id) on delete cascade;

alter table cannes_best_award add foreign key(film_id) references film(id) on delete cascade;
alter table cannes_best_award add foreign key(film_festival_id) references film_festival(id) on delete cascade;

alter table review_academy add foreign key(academy_award_id) references academy_best_award(id) on delete cascade;
alter table review_academy add foreign key(user_id) references user(id) on delete cascade;

alter table review_venice add foreign key(venice_award_id) references venice_best_award(id) on delete cascade;
alter table review_venice add foreign key(user_id) references user(id) on delete cascade;

alter table review_berlin add foreign key(berlin_award_id) references berlin_best_award(id) on delete cascade;
alter table review_berlin add foreign key(user_id) references user(id) on delete cascade;

alter table review_cannes add foreign key(cannes_award_id) references cannes_best_award(id) on delete cascade;
alter table review_cannes add foreign key(user_id) references user(id) on delete cascade;

alter table film add foreign key(director_id) references director(id) on delete cascade;

alter table film_hit add foreign key(film_id) references film(id) on delete cascade;




















