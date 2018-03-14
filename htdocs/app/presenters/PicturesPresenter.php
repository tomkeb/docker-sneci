<?php

namespace App\Presenters;

class PicturesPresenter extends BasePresenter
{
  /** @var \App\Model\Services\PhotoDir @inject */
  public $photoDir;

  public function renderDefault()
  {
      $this->template->photoDir = $this->photoDir;
  }
}
