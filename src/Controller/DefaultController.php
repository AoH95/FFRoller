<?php
namespace App\Controller;

//N.B : Je n'ai utilisé qu'un seul controller pour le projet étant donné qu'il n'y avait pas beaucoup
// de fonctionnalités différentes, mais oui dans la véritable logique j'aurais utilisé un controller par table
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bridge\Doctrine\RegistryInterface;

//appel des repos + entity nécessaire
use App\Entity\Category;
use App\Repository\CategoryRepository;

use App\Entity\Articles;
use App\Repository\ArticleRepository;

use App\Entity\Champions;
use App\Repository\ChampionsRepository;

use App\Entity\Clubs;
use App\Repository\ClubsRepository;

use App\Entity\Competitions;
use App\Repository\CompetitionsRepository;

class DefaultController extends Controller {
    
    public function index(CompetitionsRepository $CompetitionsRepository){
        $listeCompetitions = $CompetitionsRepository->findAll();
        return $this->render('default.html.twig', array(
            'listeCompetitions' => $listeCompetitions
        ));
    }

//affiche une table entière
    public function sports(CategoryRepository $CategoryRepository){
        $listeSports = $CategoryRepository->findAll();
        return $this->render('Sports/sports.html.twig', array(
            'listeSports' => $listeSports
        ));

    }

    public function articles(ArticleRepository $ArticleRepository){
        $listeArticles = $ArticleRepository->findAll();
        return $this->render('Articles/articles.html.twig', array(
            'listeArticles' => $listeArticles
            ));
    }

    //affiche une table entière
    public function competitions(CompetitionsRepository $CompetitionsRepository){
        $listeCompetitions = $CompetitionsRepository->findAll();
        return $this->render('Competitions/competitions.html.twig', array(
            'listeCompetitions' => $listeCompetitions
        ));

    }

    //affiche une table entière
    public function clubs(ClubsRepository $ClubsRepository){
        $listeClubs = $ClubsRepository->findAll();

        $arTmp = array(); $jsonObj = array();

        foreach($listeClubs as $value){
            $arTmp['title'] = $value->getTitle();
            $arTmp['description'] = $value->getDescription();
            $arTmp['longitude'] = $value->getLongitude();
            $arTmp['lattitude'] = $value->getLattitude();

            $jsonObj[] = $arTmp;
        }

        return $this->render('Clubs/clubs.html.twig', array(
            'listeClubs' => $listeClubs,
            'jsonObj' => $jsonObj
        ));

    }

    public function champions(ChampionsRepository $ChampionsRepository){
        $listeChampions = $ChampionsRepository->findAll();
        return $this->render('Champions/champions.html.twig', array(
            'listeChampions' => $listeChampions
        ));

    }

    public function espaceClub(){
        return $this->render('License/espaceClub.html.twig');
    }

    public function contact(){
        return $this->render('Contact/contact.html.twig');
    }


//Fonction pour afficher la fiche d'un sport
    public function ficheSport(CategoryRepository $CategoryRepository, ArticleRepository $ArticleRepository, $slug){
        //appel en fonction du slug (tu peux changer par ce que tu veux)
        $listeSports = $CategoryRepository->findBy(['slug'=>$slug], []);
        //$listeArticles = $ArticleRepository->findAll();
        $listeArticles = $ArticleRepository->findBy(array(), array('createdAt' => 'DESC'), 3);
        return $this->render('Sports/ficheSport.html.twig', array(
            'listeSports' => $listeSports[0],
            'listeArticles' => $listeArticles
        ));
    }

    public function ficheArticle(ArticleRepository $ArticleRepository, $slug){
        //appel en fonction du slug (tu peux changer par ce que tu veux)
        $listeArticles = $ArticleRepository->findBy(['slug'=>$slug], []);
        return $this->render('Articles/ficheArticle.html.twig', array(
            'listeArticles' => $listeArticles[0]
        ));
    }


}