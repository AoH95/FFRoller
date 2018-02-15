<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ClubsRepository")
 * @ORM\Table(name="ffroller_clubs")
 */
class Clubs
{
        /**
         * @ORM\Id
         * @ORM\GeneratedValue
         * @ORM\Column(type="integer")
         */
        private $id;

        /**
         * @var string
         *
         * @ORM\Column(name="title", type="string", length=255, nullable=false, options={"comment":"Titre"})
         */
        private $title;
    
        /**
         * @var string
         *
         * @ORM\Column(name="slug", type="string", length=255, nullable=false, options={"comment":"Lien formaté"})
         */
        private $slug;
    
        /**
         * @var boolean
         *
         * @ORM\Column(name="status", type="boolean", nullable=false, options={"comment":"Statut 0 : Inactif - 1 : Actif"})
         */
        private $status;
    
        /**
         * @var string
         *
         * @ORM\Column(name="description", type="text", nullable=false, options={"comment":"Contenu"})
         */
        private $description;
    
        /**
         * @var \DateTime
         *
         * @ORM\Column(name="createdAt", type="datetime", nullable=false, options={"comment":"Date de création"})
         */  
        private $createdAt;
    
        /**
         * @var \DateTime
         *
         * @ORM\Column(name="updatedAt", type="datetime", nullable=true, options={"comment":"Date de msie à jour"})
         */
        private $updatedat;
    
        /**
         * @var \DateTime
         *
         * @ORM\Column(name="deletedAt", type="datetime", nullable=true, options={"comment":"Date de suppression"})
         */
        private $deletedat;

        /**
         * @var string
         *
         * @ORM\Column(name="lattitude", type="string", length=255, nullable=false, options={"comment":"Lattitude"})
         */
        private $lattitude;

        /**
         * @var string
         *
         * @ORM\Column(name="longitude", type="string", length=255, nullable=false, options={"comment":"Longitude"})
         */
        private $longitude;

        /**
         * @var string
         *
         * @ORM\Column(name="tel", type="string", length=255, nullable=false, options={"comment":"N° de Téléphone"})
         */
        private $tel;

        /**
         * @var string
         *
         * @ORM\Column(name="mail", type="string", length=255, nullable=false, options={"comment":"Adresse e-mail"})
         */
        private $mail;

        /**
         * @var string
         *
         * @ORM\Column(name="site", type="string", length=255, nullable=false, options={"comment":"Site Web"})
         */
        private $site;

        /**
         * Get id
         *
         * @return integer
         */
        public function getId()
        {
            return $this->id;
        }

        /**
         * Set title
         *
         * @param string $title
         *
         * @return Clubs
         */
        public function setTitle($title)
        {
            $this->title = $title;
            return $this;
        }
    
        /**
         * Get title
         *
         * @return string
         */
        public function getTitle()
        {
            return $this->title;
        }
    
        /**
         * Set slug
         *
         * @param string $slug
         *
         * @return Clubs
         */
        public function setSlug($slug)
        {
            $this->slug = $slug;
    
            return $this;
        }
    
        /**
         * Get slug
         *
         * @return string
         */
        public function getSlug()
        {
            return $this->slug;
        }
    
        /**
         * Set status
         *
         * @param integer $status
         *
         * @return Clubs
         */
        public function setStatus($status)
        {
            $this->status = $status;
    
            return $this;
        }
    
        /**
         * Get status
         *
         * @return integer
         */
        public function getStatus()
        {
            return $this->status;
        }
    
        /**
         * Set description
         *
         * @param string $description
         *
         * @return Clubs
         */
        public function setDescription($description)
        {
            $this->description = $description;
    
            return $this;
        }
    
        /**
         * Get description
         *
         * @return string
         */
        public function getDescription()
        {
            return $this->description;
        }
    
        /**
         * Set createdat
         *
         * @param \DateTime $createdAt
         *
         * @return Clubs
         */
        public function setCreatedAt($createdAt)
        {
            $this->createdAt = $createdAt;
    
            return $this;
        }
    
        /**
         * Get createdAt
         *
         * @return \DateTime
         */
        public function getCreatedAt()
        {
            return $this->createdAt;
        }
    
        /**
         * Set updatedat
         *
         * @param \DateTime $updatedat
         *
         * @return Clubs
         */
        public function setUpdatedat($updatedat)
        {
            $this->updatedat = $updatedat;
    
            return $this;
        }
    
        /**
         * Get updatedat
         *
         * @return \DateTime
         */
        public function getUpdatedat()
        {
            return $this->updatedat;
        }
    
        /**
         * Set deletedat
         *
         * @param \DateTime $deletedat
         *
         * @return Clubs
         */
        public function setDeletedat($deletedat)
        {
            $this->deletedat = $deletedat;
    
            return $this;
        }
    
        /**
         * Get deletedat
         *
         * @return \DateTime
         */
        public function getDeletedat()
        {
            return $this->deletedat;
        }

        /**
         * Set longitude
         *
         * @param  string  $longitude
         *
         * @return Clubs
         */ 
        public function setLongitude($longitude)
        {
                $this->longitude = $longitude;

                return $this;
        }

        /**
         * Get longitude
         *
         * @return string
         */ 
        public function getLongitude()
        {
                return $this->longitude;
        }

        /**
         * Set lattitude
         *
         * @param  string  $lattitude
         *
         * @return Clubs
         */ 
        public function setLattitude($lattitude)
        {
                $this->lattitude = $lattitude;

                return $this;
        }

        /**
         * Get lattitude
         *
         * @return string
         */ 
        public function getLattitude()
        {
                return $this->lattitude;
        }

        /**
         * Set tel
         *
         * @param string $tel
         *
         * @return Clubs
         */
        public function setTel($tel)
        {
            $this->tel = $tel;
            return $this;
        }
    
        /**
         * Get tel
         *
         * @return string
         */
        public function getTel()
        {
            return $this->tel;
        }

        /**
         * Set mail
         *
         * @param string $mail
         *
         * @return Clubs
         */
        public function setMail($mail)
        {
            $this->mail = $mail;
            return $this;
        }
    
        /**
         * Get mail
         *
         * @return string
         */
        public function getMail()
        {
            return $this->mail;
        }

        /**
         * Set site
         *
         * @param string $site
         *
         * @return Clubs
         */
        public function setSite($site)
        {
            $this->site = $site;
            return $this;
        }
    
        /**
         * Get site
         *
         * @return string
         */
        public function getSite()
        {
            return $this->site;
        }
}
