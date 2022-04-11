<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220410160055 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE date (id INT AUTO_INCREMENT NOT NULL, date DATE NOT NULL, start TIME DEFAULT NULL, end TIME DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE event ADD date_id INT DEFAULT NULL, DROP date, DROP start, DROP end');
        $this->addSql('ALTER TABLE event ADD CONSTRAINT FK_3BAE0AA7B897366B FOREIGN KEY (date_id) REFERENCES date (id)');
        $this->addSql('CREATE INDEX IDX_3BAE0AA7B897366B ON event (date_id)');
        $this->addSql('ALTER TABLE location ADD country VARCHAR(53) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event DROP FOREIGN KEY FK_3BAE0AA7B897366B');
        $this->addSql('DROP TABLE date');
        $this->addSql('DROP INDEX IDX_3BAE0AA7B897366B ON event');
        $this->addSql('ALTER TABLE event ADD date DATE NOT NULL, ADD start TIME NOT NULL, ADD end TIME NOT NULL, DROP date_id');
        $this->addSql('ALTER TABLE location DROP country');
    }
}
