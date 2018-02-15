<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CompetitionsRepository")
 * @Vich\Uploadable
 * @ORM\Table(name="ffroller_competitions")
 */
class Competitions
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
        * @ORM\Column(type="string", length=255)
        */
        private $image;

        /**
         * @var File
        *
        * @Vich\UploadableField(mapping="competitions", fileNameProperty="image")
        */
        private $imageFile;

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
         * @var string
         *
         * @ORM\Column(name="intro", type="text", nullable=false, options={"comment":"intro"})
         */
        private $intro;
    
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
         * @var \DateTime
         *
         * @ORM\Column(name="date", type="datetime", nullable=true, options={"comment":"Date"})
         */
        private $date;

        /**
         * Get id
         *
         * @return integer
         */
        public function getId()
        {
            return $this->id;
        }

        public function setImageFile(File $image = null)
        {
            $this->imageFile = $image;
    
            // VERY IMPORTANT:
            // It is required that at least one field changes if you are using Doctrine,
            // otherwise the event listeners won't be called and the file is lost
            if ($image) {
                // if 'updatedAt' is not defined in your entity, use another property
                $this->updatedat = new \DateTime('now');
            }
        }
    
        public function getImageFile()
        {
            return $this->imageFile;
        }
    
        public function setImage($image)
        {
            $this->image = $image;
        }
    
        public function getImage()
        {
            return $this->image;
        }

        /**
         * Set title
         *
         * @param string $title
         *
         * @return Competitions
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
         * @return Competitions
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
         * Set intro
         *
         * @param string $intro
         *
         * @return Competitions
         */
        public function setIntro($intro)
        {
            $this->intro = $intro;
    
            return $this;
        }
    
        /**
         * Get intro
         *
         * @return string
         */
        public function getIntro()
        {
            return $this->intro;
        }

        /**
         * Set status
         *
         * @param integer $status
         *
         * @return Competitions
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
         * @return Competitions
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
         * @return Competitions
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
         * @return Competitions
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
         * @return Competitions
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
         * Set the value of date
         *
         * @param  \DateTime  $date
         *
         * @return  self
         */ 
        public function setDate(\DateTime $date)
        {
                $this->date = $date;

                return $this;
        }

        /**
         * Get the value of date
         *
         * @return  \DateTime
         */ 
        public function getDate()
        {
                return $this->date;
        }
        
        public function __toString(){
            return (string) $this->getTitle();
        }
}
