<?php

namespace App\Entity;

use App\Repository\LocationRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LocationRepository::class)]
class Location
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 50)]
    private $name;

    #[ORM\Column(type: 'string', length: 100, nullable: true)]
    private $address;

    #[ORM\Column(type: 'integer', nullable: true)]
    private $zip;

    #[ORM\Column(type: 'string', length: 45, nullable: true)]
    private $city;

    #[ORM\Column(type: 'string', length: 53, nullable: true)]
    private $country;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private $url;

    #[ORM\OneToMany(mappedBy: 'location', targetEntity: Event::class)]
    private $location;

    #[ORM\OneToMany(mappedBy: 'location', targetEntity: Organizer::class)]
    private $organizers;

    public function __construct()
    {
        $this->location = new ArrayCollection();
        $this->organizers = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;
        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(string $address): self
    {
        $this->address = $address;
        return $this;
    }

    public function getZip(): ?int
    {
        return $this->zip;
    }

    public function setZip(?int $zip): self
    {
        $this->zip = $zip;
        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): self
    {
        $this->city = $city;
        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(?string $country): self
    {
        $this->country = $country;
        return $this;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(?string $url): self
    {
        $this->url = $url;
        return $this;
    }

    /**
     * @return Collection<int, Event>
     */
    public function getLocation(): Collection
    {
        return $this->location;
    }

    public function addLocation(Event $location): self
    {
        if (!$this->location->contains($location)) {
            $this->location[] = $location;
            $location->setLocation($this);
        }
        return $this;
    }

    public function removeLocation(Event $location): self
    {
        if ($this->location->removeElement($location)) {
            // set the owning side to null (unless already changed)
            if ($location->getLocation() === $this) {
                $location->setLocation(null);
            }
        }
        return $this;
    }

    /**
     * @return Collection<int, Organizer>
     */
    public function getOrganizers(): Collection
    {
        return $this->organizers;
    }

    public function addOrganizer(Organizer $organizer): self
    {
        if (!$this->organizers->contains($organizer)) {
            $this->organizers[] = $organizer;
            $organizer->setLocation($this);
        }

        return $this;
    }

    public function removeOrganizer(Organizer $organizer): self
    {
        if ($this->organizers->removeElement($organizer)) {
            // set the owning side to null (unless already changed)
            if ($organizer->getLocation() === $this) {
                $organizer->setLocation(null);
            }
        }

        return $this;
    }
}
