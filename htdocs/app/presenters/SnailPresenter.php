<?php

namespace App\Presenters;

use Nette;
use Texy;

class SnailPresenter extends BasePresenter
{
  private $database;

  public function __construct(Nette\Database\Context $database)
    {
        $this->database = $database;
    }

  public function renderDefault()
  {
      $this->template->snails = $this->database->table('snails')->order('latinname');
      $this->template->families = $this->database->table('families')->order('latinname');
  }
}
