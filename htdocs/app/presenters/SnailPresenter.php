<?php

namespace App\Presenters;

use Nette;


class SnailPresenter extends BasePresenter
{
  private $database;

  public function __construct(Nette\Database\Context $database)
    {
        $this->database = $database;
    }

  public function renderDefault()
  {
      $this->template->snails = $this->database->table('snails');
  }
}
