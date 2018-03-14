<?php

namespace App\Model\Services;

use Nette;

class PhotoDir {

  private $wwwDir;
  private $path;
  private $partialPath;
  private $fileNames = array();
  private $photos = array();
  private $baseSize;
  private $totalSize;
  private $totalCount;

  private $diffArray = array();
  private $scannedDir = array();

  const PHOTO_DIR = 'photos';

  public function __construct($wwwDir) {
      $this->wwwDir = $wwwDir;
  }

  public function getPath(string $subdirectory){
      $this->partialPath = DIRECTORY_SEPARATOR.self::PHOTO_DIR.DIRECTORY_SEPARATOR;
      return $this->wwwDir.$this->partialPath.$subdirectory;
  }

  public function getFileNames(string $path){
      $this->path = $path;
      $this->scannedDir = scandir($this->path);
      foreach ($this->scannedDir as $key => $value){
        if (strpos($value, ".") == null){$this->diffArray []= $value;}
      }
      $this->fileNames = array_values(array_diff($this->scannedDir, $this->diffArray));
      return $this;
  }

  public function getPhotos(){
    $this->getFileNames($this->getPath(''));

    foreach ($this->fileNames as $key => $value) {
        $this->photos[$key][0] = $this->partialPath.$value;
        $this->photos[$key][1] = $this->partialPath."thumbnails".DIRECTORY_SEPARATOR.$value;
      }
    return $this->photos;
  }

  public function getBaseSize(){
    $this->getFileNames($this->getPath(''));
    foreach ($this->fileNames as $value) {
        $this->baseSize += filesize($this->path.$value);
      }
    return $this->baseSize;
  }

  public function getBaseCount(){
    $this->getFileNames($this->getPath(''));
    return count($this->fileNames);
  }

  public function iterate(){
    $this->getPath('');
    $this->iterator = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($this->getPath(''), \RecursiveDirectoryIterator::SKIP_DOTS));
  }

  public function getTotalSize(){
    $this->iterate();
    foreach ($this->iterator as $file) {
      $this->totalSize += $file->getSize();
    }
    return $this->totalSize;
  }

  public function getTotalCount(){
    $this->iterate();
    foreach ($this->iterator as $file) {
      $this->totalCount += 1;
    }
    return $this->totalCount;
  }
}
