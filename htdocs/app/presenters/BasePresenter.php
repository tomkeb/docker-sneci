<?php

namespace App\Presenters;

use Nette;


abstract class BasePresenter extends Nette\Application\UI\Presenter
{
  public function beforeRender(){
    parent::beforeRender();
    $this->template->menuItems = array(
            'Domů' => 'Homepage:',
            'Šnekejši' => 'Snail:',
            'Kontakty' => 'Contact:',
        );
      }
}
