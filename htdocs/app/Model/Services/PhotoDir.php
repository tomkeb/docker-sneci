<?php

namespace App\Model\Services;

use Nette;

class PhotoDir {

  private $wwwDir;
  private $path;
  private $partialPath;
  private $fileNames = array();
  private $photos = array();
    private $diffArray = array();
  private $scannedDir = array();

  private $baseSize;
  private $totalSize;
  private $totalCount;

  const PHOTO_DIR = 'photos';

  public function __construct($wwwDir) {
      $this->wwwDir = $wwwDir;
  }

  private function getPath(string $subdirectory){
      $this->partialPath = DIRECTORY_SEPARATOR.self::PHOTO_DIR.DIRECTORY_SEPARATOR;
      return $this->wwwDir.$this->partialPath.$subdirectory;
  }

  private function getFileNames(string $path){
      $this->path = $path;
      $this->scannedDir = scandir($this->path);
      foreach ($this->scannedDir as $key => $value){
        if (strpos($value, ".") == null){$this->diffArray []= $value;} //podle tečky nejde rozeznat, zda je to soubor -> jinak
      }
      $this->fileNames = array_values(array_diff($this->scannedDir, $this->diffArray));
      return $this;
  }

  public function getPhotos(string $subdirectory){
    $this->getFileNames($this->getPath($subdirectory));

    unset($this->photos);

    if (!empty($subdirectory)) {$this->subdirectory = $subdirectory.DIRECTORY_SEPARATOR;}else{$this->subdirectory = NULL;}
    foreach ($this->fileNames as $key => $value) {
        $this->photos[$key][0] = $this->partialPath.$this->subdirectory.$value;
        $this->photos[$key][1] = $this->partialPath.$this->subdirectory."thumbnails".DIRECTORY_SEPARATOR.$value;
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

  private function iterate(){
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
