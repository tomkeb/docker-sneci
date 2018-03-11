<?php

namespace App\Model\Services;

use Nette;

class PhotoDir {

    private $wwwDir;
	  const PHOTO_DIR = 'photos';

    public function __construct($wwwDir) {
        $this->wwwDir = $wwwDir;
    }

    public function getPath($subdirectory=''){
        return "vydra";
        // return $this->wwwDir.DIRECTORY_SEPARATOR.self::PHOTO_DIR.DIRECTORY_SEPARATOR.$subdirectory;
    }

}
