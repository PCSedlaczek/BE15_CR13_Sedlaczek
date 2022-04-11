<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220410232347 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE date (id INT AUTO_INCREMENT NOT NULL, date DATE NOT NULL, start TIME DEFAULT NULL, end TIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE event ADD date DATE DEFAULT NULL, ADD start TIME DEFAULT NULL, ADD end TIME DEFAULT NULL, ADD timezone VARCHAR(5) DEFAULT NULL, ADD lead VARCHAR(255) DEFAULT NULL, ADD category LONGTEXT DEFAULT NULL COMMENT \'(DC2Type:array)\', CHANGE name name VARCHAR(100) NOT NULL, CHANGE type type VARCHAR(50) DEFAULT NULL');
        $this->addSql('ALTER TABLE location ADD name VARCHAR(50) NOT NULL, CHANGE country country VARCHAR(53) DEFAULT NULL');
        $this->addSql('ALTER TABLE organizer ADD location_id INT DEFAULT NULL, ADD contact VARCHAR(50) DEFAULT NULL, ADD description LONGTEXT DEFAULT NULL, ADD url VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE organizer ADD CONSTRAINT FK_99D4717364D218E FOREIGN KEY (location_id) REFERENCES location (id)');
        $this->addSql('CREATE INDEX IDX_99D4717364D218E ON organizer (location_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE date');
        $this->addSql('ALTER TABLE event DROP date, DROP start, DROP end, DROP timezone, DROP lead, DROP category, CHANGE name name VARCHAR(50) NOT NULL, CHANGE type type VARCHAR(25) NOT NULL');
        $this->addSql('ALTER TABLE location DROP name, CHANGE country country VARCHAR(53) DEFAULT \'Austria\'');
        $this->addSql('ALTER TABLE organizer DROP FOREIGN KEY FK_99D4717364D218E');
        $this->addSql('DROP INDEX IDX_99D4717364D218E ON organizer');
        $this->addSql('ALTER TABLE organizer DROP location_id, DROP contact, DROP description, DROP url');
    }
}
