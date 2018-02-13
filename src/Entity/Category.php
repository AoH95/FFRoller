<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CategoryRepository")
 */
class Category
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
         * @var string
         *
         * @ORM\Column(name="ksp1", type="text", nullable=false, options={"comment":"Key Selling Point 1"})
         */
        private $ksp1;

        /**
         * @var string
         *
         * @ORM\Column(name="ksp2", type="text", nullable=false, options={"comment":"Key Selling Point 2"})
         */
        private $ksp2;

        /**
         * @var string
         *
         * @ORM\Column(name="ksp3", type="text", nullable=false, options={"comment":"Key Selling Point 3"})
         */
        private $ksp3;
        

        /**
         * @var string
         *
         * @ORM\Column(name="titlek1", type="text", nullable=false, options={"comment":"Title Key Selling Point 3"})
         */
        private $titlek1;

                /**
         * @var string
         *
         * @ORM\Column(name="titlek2", type="text", nullable=false, options={"comment":"Title Key Selling Point 2"})
         */
        private $titlek2;

                /**
         * @var string
         *
         * @ORM\Column(name="titlek3", type="text", nullable=false, options={"comment":"Title Key Selling Point 3"})
         */
        private $titlek3;
        

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
         * @return Category
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
         * @return Category
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
         * @return Category
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
         * @return Category
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
         * Set ksp1
         *
         * @param string $ksp1
         *
         * @return Category
         */
        public function setKsp1($ksp1)
        {
            $this->ksp1 = $ksp1;
    
            return $this;
        }
    
        /**
         * Get ksp1
         *
         * @return string
         */
        public function getKsp1()
        {
            return $this->ksp1;
        }

        /**
         * Set ksp2
         *
         * @param string $ksp2
         *
         * @return Category
         */
        public function setKsp2($ksp2)
        {
            $this->ksp2 = $ksp2;
    
            return $this;
        }
    
        /**
         * Get ksp2
         *
         * @return string
         */
        public function getKsp2()
        {
            return $this->ksp2;
        }

        /**
         * Set ksp3
         *
         * @param string $ksp3
         *
         * @return Category
         */
        public function setKsp3($ksp3)
        {
            $this->ksp3 = $ksp3;
    
            return $this;
        }
    
        /**
         * Get ksp3
         *
         * @return string
         */
        public function getKsp3()
        {
            return $this->ksp3;
        }

        /**
         * Set titlek1
         *
         * @param string $titlek1
         *
         * @return Category
         */
        public function setTitlek1($titlek1)
        {
            $this->titlek1 = $titlek1;
    
            return $this;
        }
    
        /**
         * Get titlek1
         *
         * @return string
         */
        public function getTitlek1()
        {
            return $this->titlek1;
        }

        /**
         * Set titlek2
         *
         * @param string $titlek2
         *
         * @return Category
         */
        public function setTitlek2($titlek2)
        {
            $this->titlek2 = $titlek2;
    
            return $this;
        }
    
        /**
         * Get titlek2
         *
         * @return string
         */
        public function getTitlek2()
        {
            return $this->titlek2;
        }

        /**
         * Set titlek3
         *
         * @param string $titlek3
         *
         * @return Category
         */
        public function setTitlek3($titlek3)
        {
            $this->titlek3 = $titlek3;
    
            return $this;
        }
    
        /**
         * Get titlek3
         *
         * @return string
         */
        public function getTitlek3()
        {
            return $this->titlek3;
        }


        /**
         * Set createdat
         *
         * @param \DateTime $createdAt
         *
         * @return Category
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
         * @return Category
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
         * @return Category
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

        public function __toString(){
            return (string) $this->getTitle();
        }

    
}
