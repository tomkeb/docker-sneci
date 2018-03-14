<?php

namespace App\Presenters;

use Nette;
use TexyConfigurator;

abstract class BasePresenter extends Nette\Application\UI\Presenter
{
  private $texy;

  public function injectTexy(\Texy $texy)
    {
      $this->texy = $texy;
      $texy->allowed['list'] = false;
      $texy->htmlOutputModule->lineWrap = false;
      $texy->phraseModule->tags['phrase/em'] = 'i';
      $texy->phraseModule->tags['phrase/em-alt'] = 'i';
      $texy->phraseModule->tags['phrase/em-alt2'] = 'i';
    }

  public function beforeRender(){
    parent::beforeRender();
    $this->template->menuItems = array(
            'Úvod' => 'Homepage:',
            'Plži' => 'Snail:',
            'Klíč' => 'Key:',
            'Výukové materiály' => 'Material:',
            'Fotografie' => 'Pictures:',
            'O stránkách' => 'Contact:',
        );

    $this->template->addFilter('texy', function ($text) {
                return Nette\Utils\Html::el()->setHtml($this->texy->process($text));
            });
      }
}
