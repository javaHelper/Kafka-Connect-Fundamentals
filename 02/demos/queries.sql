GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT  ON *.* TO 'globomantics' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON globomantics.* TO 'globomantics'@'%';

USE globomantics;

CREATE  TABLE `articles` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `author` VARCHAR(255) NOT NULL ,
  `title` VARCHAR(255) NOT NULL,
  `diagram` VARCHAR(255) ,
  `body` VARCHAR(255) ,
  `footnote` VARCHAR(255) )
ENGINE = InnoDB;

DESCRIBE `articles`;

INSERT INTO articles ( author, title, diagram, body, footnote ) VALUES
( "Tom", "Digital Transformation", "https://globomantics.com/digital-transformation.png", "A new era of computers..." , "1 - Internet Of Things" ),
( "Maria", "Being Data Driven", "https://globomantics.com/data-driven.png", "The decision making process ..." , "1 - large ses of data" );

INSERT INTO articles ( author, title, diagram, body, footnote ) VALUES
( "Paul", "Kafka Connect", "https://globomantics.com/kafka-connect.png", "It will never get easier..." , "1 - High Throughput" );

UPDATE articles SET  footnote = “1 - large sets of data” WHERE author = “Maria”;

DELETE FROM articles WHERE author=Tom;
