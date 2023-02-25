CREATE TABLE users(
    id serial primary key,
    name varchar(255) not null,
    username varchar(255) not null unique,
    password_hash varchar(255) not null
);

CREATE TABLE todo_lists(
    id serial primary key,
    title varchar(255) not null,
    description varchar(255)
);

CREATE TABLE todo_items(
    id serial primary key,
    title varchar(255) not null,
    description varchar(255),
    done boolean not null default false
);

CREATE TABLE users_list(
    id serial primary key,
    user_id int,
    list_id int,
    foreign key (user_id) REFERENCES users on delete cascade,
    foreign key (list_id) REFERENCES todo_lists on delete cascade
);

CREATE TABLE items_list(
    id serial primary key,
    item_id int,
    list_id int,
    foreign key (item_id) REFERENCES todo_items on delete cascade,
    foreign key (list_id) REFERENCES todo_lists on delete cascade
);