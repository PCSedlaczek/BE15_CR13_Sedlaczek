<?php

namespace App\Form;

use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
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
      ->add("title", TextType::class, [
        "label" => "Event title",
        "required" => true,
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("subtitle", TextType::class, [
        "label" => "Event subtitle",
        "required" => false,
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("type", TextType::class, [
        "label" => "Event type",
        "required" => false,
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("location", EntityType::class, [
        "class" => Location::class,
        "choice_label" => "name",
        "label" => "Location: ",
        "placeholder" => "Choose location",
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("organizer", EntityType::class, [
        "class" => Organizer::class,
        "choice_label" => "name",
        "label" => "Organizer: ",
        "placeholder" => "Choose organizer",
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("date", DateType::class, [
        "label" => "Event date",
        "placeholder" => [
          'month' => 'Month', 
          'day' => 'Day',
          'year' => 'Year',
        ],
        "required" => true,
        "attr" => [
          "class" => "mb-1"
        ]
      ])
      ->add("start", TimeType::class, [
        "label" => "Start time",
        "required" => false,
        "placeholder" => [
          "hour" => "Hour", 
          "minute" => "Minute"
        ],
        "attr" => [
          "class" => "mb-1"
        ]
      ])
      ->add("end", TimeType::class, [
        "label" => "End time",
        "required" => false,
        "placeholder" => [
          "hour" => "Hour", 
          "minute" => "Minute"
        ],
        "attr" => [
          "class" => "mb-1"
        ]
      ])
      ->add("lead", TextType::class, [
        "label" => "Lead paragraph",
        "required" => false,
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("description", TextareaType::class, [
        "label" => "Event description",
        "required" => false,
        "attr" => [
          "class" => "form-control mb-1",
          "style" => "height: 250px"
        ]
      ])
      ->add("capacity", TextType::class, [
        "label" => "Event capacity",
        "required" => false,
        "attr" => [
          "class" => "form-control mb-1",
          "type" => "number"
        ]
      ])
      ->add("price", MoneyType::class, [
        "label" => "Event price",
        "required" => false,
        "html5" => true,
        "divisor" => 100,
        "data" => 0.00,
        "attr" => [
          "class" => "form-control mb-1"
        ]
      ])
      ->add("img", TextType::class, [
        "label" => "Event image",
        "required" => false,
        "attr" => [
          "class" => "form-control mb-1",
          "type" => "url"
        ]
      ])
      ->add("url", TextType::class, [
        "label" => "Event URL",
        "required" => true,
        "attr" => [
          "class" => "form-control mb-1",
          "type" => "url"
        ]
      ])
      ->add("save", SubmitType::class, [
        "label" => "Save",
        "attr" => [
          "class" => "btn btn-success my-1"
        ]
      ]);
  }

  public function configureOptions(OptionsResolver $resolver): void
  {
    $resolver->setDefaults(["data_class" => Event::class]);
  }
}