<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ChampionsRepository")
 */
class Champions
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
         * @return Champions
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
         * @return Champions
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
         * @return Champions
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
         * @return Champions
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
         * @return Champions
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
         * @return Champions
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
         * @return Champions
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

}
