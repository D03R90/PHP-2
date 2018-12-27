<?php

namespace app\services;
class Autoload
{
    private $fileExtension = ".php";
    function loadClass($className)
    {
        $className = str_replace("app\\", ROOT_DIR, $className);
        $className = str_replace("\\", "/", $className) . $this->fileExtension;
        include $className;
    }
}