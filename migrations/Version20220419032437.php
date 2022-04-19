<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220419032437 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE organizer (id INT AUTO_INCREMENT NOT NULL, location_id INT DEFAULT NULL, name VARCHAR(50) NOT NULL, description LONGTEXT DEFAULT NULL, contact VARCHAR(50) DEFAULT NULL, email VARCHAR(255) DEFAULT NULL, phone VARCHAR(26) DEFAULT NULL, url VARCHAR(255) DEFAULT NULL, INDEX IDX_99D4717364D218E (location_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE organizer ADD CONSTRAINT FK_99D4717364D218E FOREIGN KEY (location_id) REFERENCES location (id)');
        $this->addSql('ALTER TABLE event ADD organizer VARCHAR(255) DEFAULT NULL, CHANGE price price NUMERIC(6, 2) DEFAULT NULL');
        $this->addSql('ALTER TABLE location CHANGE country country VARCHAR(53) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE organizer');
        $this->addSql('ALTER TABLE event DROP organizer, CHANGE price price NUMERIC(6, 2) DEFAULT \'0.00\'');
        $this->addSql('ALTER TABLE location CHANGE country country VARCHAR(53) DEFAULT \'"Austria"\'');
    }
}
