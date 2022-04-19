<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\EventType;
use App\Entity\Event;

class EventController extends AbstractController
{
  #[Route("/", name: "events")]
  public function index(ManagerRegistry $doctrine): Response
  {
    $events = $doctrine->getRepository(Event::class)->findAll();
    return $this->render("event/index.html.twig",
      ["events" => $events]
    );
  }

  #[Route("/admin", name: "event_admin")]
  public function admin(ManagerRegistry $doctrine): Response
  {
    $events = $doctrine->getRepository(Event::class)->findAll();
    return $this->render("event/admin.html.twig",
      ["events" => $events]
    );
  }

  #[Route("/filter/{type}", name: "event_filter")]
  public function filter(ManagerRegistry $doctrine, $type): Response
  {
    $events = $doctrine->getRepository(Event::class)->findBy(['type' => $type]);
    return $this->render("event/filter.html.twig", 
      ["events" => $events]
    );
  }

  #[Route("/event/{id}", name: "event_view")]
  public function view(ManagerRegistry $doctrine, $id): Response
  {
    $event = $doctrine->getRepository(Event::class)->find($id);
    return $this->render("event/view.html.twig", 
      ["event" => $event]
    );
  }

  #[Route("/add", name: "event_add")]
  public function create(Request $request, ManagerRegistry $doctrine): Response
  {
    $event = new Event();
    $form = $this->createForm(EventType::class, $event);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      $em = $doctrine->getManager();
      $event = $form->getData();
      $em->persist($event);
      $em->flush();
      $this->addFlash("success", "Event added");
      return $this->redirectToRoute("event_admin");
    }
    return $this->render("event/add.html.twig", 
      ["form" => $form->createView()]
    );
  }

  #[Route("/edit/{id}", name: "event_edit")]
  public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
  {
    $event = $doctrine->getRepository(Event::class)->find($id);
    $form = $this->createForm(EventType::class, $event);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      $em = $doctrine->getManager();
      $event = $form->getData();
      $em->persist($event);
      $em->flush();
      $this->addFlash("success", "Event updated");
      return $this->redirectToRoute("event_admin");
    }
    return $this->render("event/edit.html.twig", 
      ["form" => $form->createView()]
    );
  }

  #[Route("/delete/{id}", name: "event_delete")]
  public function delete(ManagerRegistry $doctrine, $id): Response
  {
    $event = $doctrine->getRepository(Event::class)->find($id);
    return $this->render("event/delete.html.twig", 
      ["event" => $event]
    );
  }

  #[Route("/remove/{id}", name: "event_remove")]
  public function remove(ManagerRegistry $doctrine, $id)
  {
    $em = $doctrine->getManager();
    $event = $em->getRepository(Event::class)->find($id);
    $em->remove($event);
    $em->flush();
    $this->addFlash("success", "Event deleted");
    return $this->redirectToRoute("event_admin");
  }
}