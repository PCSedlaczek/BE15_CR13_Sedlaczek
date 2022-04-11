<?php

namespace App\Form;

use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\AbstractType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Location;
use App\Entity\Organizer;
use App\Entity\Event;

class EventType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options): void
  {
    $builder
      ->add('name', TextType::class, [
        'attr' => ['class' => 'form-control mb-5']
      ])
      ->add('type', TextType::class, [
        'attr' => ['class' => 'form-control mb-5']
      ])
      ->add('description', TextType::class, [
        'attr' => ['class' => 'form-control mb-5']
      ])
      ->add('date', DateType::class, [
        'attr' => ['class' => 'mb-5']
      ])
      ->add('start', TimeType::class, [
        'attr' => ['class' => 'mb-5']
      ])
      ->add('end', TimeType::class, [
        'attr' => ['class' => 'mb-5']
      ])
      ->add('location', EntityType::class, [
        'class' => Location::class,
        'choice_label' => 'name',
      ])   
      ->add('organizer', EntityType::class, [
        'class' => Organizer::class,
        'choice_label' => 'name',
      ])   
      ->add('save', SubmitType::class, [
        'choice_label' => 'Create event',
        'attr' => ['class' => 'btn-primary mb-5']
      ]);
  }

  public function configureOptions(OptionsResolver $resolver): void
  {
    $resolver->setDefaults(['data_class' => Event::class]);
  }
}