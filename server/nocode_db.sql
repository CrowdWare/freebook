CREATE TABLE session_data (
    session_id VARCHAR(128) PRIMARY KEY,
    user_uuid VARCHAR(36) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE customer(
    uuid CHAR(52) NOT NULL PRIMARY KEY, 
    name varchar(250) NOT NULL, 
    pwd varchar(250) NOT NULL,
    email varchar(250) NOT NULL,
    dob DATETIME NOT NULL,
    locale VARCHAR(2) NOT NULL
);

CREATE TABLE item (
    uuid CHAR(52) NOT NULL PRIMARY KEY,
    type ENUM('course', 'book') NOT NULL, -- Flag zur Unterscheidung
    name CHAR(250) NOT NULL,
    description VARCHAR(1024) NOT NULL,
    url VARCHAR(250) NOT NULL,
    account CHAR(52) NOT NULL, 
    locale VARCHAR(2) NOT NULL,
    date DATETIME,
    FOREIGN KEY (account) REFERENCES account(uuid)
);

CREATE TABLE topic(
    uuid CHAR(52) NOT NULL PRIMARY KEY,
    name CHAR(250) NOT NULL,
    page CHAR(250) NOT NULL,
    sortorder INTEGER NOT NULL,
    item CHAR(52) NOT NULL,
    FOREIGN KEY (item) REFERENCES item(uuid)
);

CREATE TABLE subtopic(
    uuid CHAR(52) NOT NULL PRIMARY KEY,
    name CHAR(250) NOT NULL,
    sortorder INTEGER NOT NULL,
    topic CHAR(52) NOT NULL,
    FOREIGN KEY (topic) REFERENCES topic(uuid)
);


CREATE TABLE topic_readed(
    uuid CHAR(52) NOT NULL PRIMARY KEY,
    topic CHAR(52) NOT NULL,
    account CHAR(52) NOT null,
    readed BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (topic) REFERENCES topic(uuid),
    FOREIGN KEY (account) REFERENCES account(uuid)
);

CREATE TABLE subtopic_readed(
    uuid CHAR(52) NOT NULL PRIMARY KEY,
    subtopic CHAR(52) NOT NULL,
    account CHAR(52) NOT null,
    readed BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (subtopic) REFERENCES subtopic(uuid),
    FOREIGN KEY (account) REFERENCES account(uuid)
);

DROP TABLE subtopic_readed;
DROP TABLE topic_readed;
DROP TABLE topic;
DROP TABLE subtopic;

INSERT INTO account(uuid, email, name) VALUES('3171ac3f-b51a-464c-bb9d-690c4b28dc04','japp.olaf@gmail.com', 'Adam Art Ananda');
INSERT INTO item(uuid, type, account, name, description, locale) VALUES('3171ac3f-b51a-464c-bb9d-690c4b28dc05','course','3171ac3f-b51a-464c-bb9d-690c4b28dc04','Sacred Sexuality','This online course is designed to help you explore the deep connections between body, mind, and spirit through practices involving energy work, mindful massage, dearmouring, and conscious sexuality. You’ll learn about chakras, nadis, and Kundalini to understand and optimize your own energy flow. Through rituals and a gentle, trauma-informed approach, the course supports the release of emotional blockages and fosters authentic intimacy. Whether you’re single or in a relationship, you’ll discover practical tools, exercises, and community support to experience greater self-awareness, deeper relationships, and holistic well-being.', 'en');
INSERT INTO topic(uuid, sortorder,name, item) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc34',1,'Introduction','3171ac3f-b51a-464c-bb9d-690c4b28dc05');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc33',1,'Who I Am','3171ac3f-b51a-464c-bb9d-690c4b28dc34');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc32',2,'My Mission','3171ac3f-b51a-464c-bb9d-690c4b28dc34');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc31',3,'For Whom This Workshop Is','3171ac3f-b51a-464c-bb9d-690c4b28dc34');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc30',4,'For Whom This Workshop Isn’t','3171ac3f-b51a-464c-bb9d-690c4b28dc34');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc29',5,'Summary','3171ac3f-b51a-464c-bb9d-690c4b28dc34');

INSERT INTO topic(uuid, sortorder,name, item) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc25',1,'DeArmoring','3171ac3f-b51a-464c-bb9d-690c4b28dc05');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc24',1,'DeArmoring a Part of the Back','3171ac3f-b51a-464c-bb9d-690c4b28dc25');
INSERT INTO subtopic(uuid, sortorder, name, topic) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc23',1,'DeArmoring the Yoni','3171ac3f-b51a-464c-bb9d-690c4b28dc25');

INSERT INTO topic(uuid, sortorder,name, item) VALUES ('3171ac3f-b51a-464c-bb9d-690c4b28dc22',1,'Community and Networking','3171ac3f-b51a-464c-bb9d-690c4b28dc05');