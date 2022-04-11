<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Persistence\ManagerRegistry;
use App\Form\EventType;
use App\Entity\Event;

class EventController extends AbstractController
{
  #[Route('/', name: 'events')]
  public function index(ManagerRegistry $doctrine): Response
  {
    $events = $doctrine->getRepository(Event::class)->findAll();
    return $this->render('event/index.html.twig',
      ['events' => $events]
    );
  }

  #[Route('/details/{id}', name: 'event_view')]
  public function details(ManagerRegistry $doctrine, $id): Response
  {
    $event = $doctrine->getRepository(Event::class)->find($id);
    return $this->render('event/view.html.twig', 
      ['event' => $event]
    );
  }

  #[Route('/add', name: 'event_add')]
  public function create(Request $request, ManagerRegistry $doctrine): Response
  {
    $event = new Event();
    $form = $this->createForm(EventType::class, $event);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      $now = new \DateTime('now');
      $event = $form->getData();
      $event->setCreateDate($now);
      $em = $doctrine->getManager();
      $em->persist($event);
      $em->flush();
      $this->addFlash('Success', 'Event added');
      return $this->redirectToRoute('events');
    }
    return $this->render('event/create.html.twig', 
      ['form' => $form->createView()]
    );
  }

  #[Route('/edit/{id}', name: 'event_edit')]
  public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
  {
    $event = $doctrine->getRepository(Event::class)->find($id);
    $form = $this->createForm(EventType::class, $event);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      $now = new \DateTime('now');
      $event = $form->getData();
      $event->setCreateDate($now);
      $em = $doctrine->getManager();
      $em->persist($event);
      $em->flush();
      $this->addFlash('Success', 'Event updated');
      return $this->redirectToRoute('events');
    }
    return $this->render('event/edit.html.twig', 
      ['form' => $form->createView()]
    );
  }

  #[Route('/delete/{id}', name: 'event_delete')]
  public function delete(ManagerRegistry $doctrine, $id)
  {
    $em = $doctrine->getManager();
    $event = $em->getRepository(Event::class)->find($id);
    $em->remove($event);
    $em->flush();
    $this->addFlash('Success', 'Event removed');
    return $this->redirectToRoute('events');
  }
}
