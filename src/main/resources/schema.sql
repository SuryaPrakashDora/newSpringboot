CREATE TABLE event (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    date DATE
);

CREATE TABLE sponsor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    industry VARCHAR(255)
);

CREATE TABLE event_sponsor(
    eventId INT,
    sponsorId INT,
    PRIMARY KEY(eventId, sponsorId),
    FOREIGN KEY(eventId) REFERENCE event(id),
    FOREIGN KEY(sponsorId) REFERENCE sponsor(id)
);