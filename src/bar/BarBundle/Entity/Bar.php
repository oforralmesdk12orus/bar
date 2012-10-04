<?php

namespace bar\BarBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * bar\BarBundle\Entity\Bar
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="bar\BarBundle\Entity\BarRepository")
 */
class Bar
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string $bar
     *
     * @ORM\Column(name="bar", type="string", length=255)
     */
    private $bar;


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
     * Set bar
     *
     * @param string $bar
     * @return Bar
     */
    public function setBar($bar)
    {
        $this->bar = $bar;
    
        return $this;
    }

    /**
     * Get bar
     *
     * @return string 
     */
    public function getBar()
    {
        return $this->bar;
    }
}
