<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220410154211 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE location (id INT AUTO_INCREMENT NOT NULL, address VARCHAR(100) NOT NULL, zip INT DEFAULT NULL, city VARCHAR(45) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE event DROP location, DROP city, CHANGE start start TIME NOT NULL, CHANGE end end TIME NOT NULL, CHANGE url url VARCHAR(255) NOT NULL, CHANGE type type VARCHAR(25) NOT NULL, CHANGE zip location_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE event ADD CONSTRAINT FK_3BAE0AA764D218E FOREIGN KEY (location_id) REFERENCES location (id)');
        $this->addSql('CREATE INDEX IDX_3BAE0AA764D218E ON event (location_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event DROP FOREIGN KEY FK_3BAE0AA764D218E');
        $this->addSql('DROP TABLE location');
        $this->addSql('DROP INDEX IDX_3BAE0AA764D218E ON event');
        $this->addSql('ALTER TABLE event ADD location VARCHAR(100) NOT NULL, ADD city VARCHAR(45) DEFAULT NULL, CHANGE start start TIME DEFAULT NULL, CHANGE end end TIME DEFAULT NULL, CHANGE url url VARCHAR(255) DEFAULT NULL, CHANGE type type VARCHAR(25) DEFAULT NULL, CHANGE location_id zip INT DEFAULT NULL');
    }
}
