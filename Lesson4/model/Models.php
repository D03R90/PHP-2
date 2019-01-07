<?php

namespace app\model;
use app\interfaces\IModel;
use app\engine\Db;

abstract class Models implements IModel
{
    public function __construct()
    {
    }
    public static function getOne($id){
        $tableName = static::getTableName();

        return static::getDb()->fetchObject(
            "SELECT * FROM {$tableName} WHERE id = :id",
            [':id' => $id],

            get_called_class()
        );
    }
    // Делаем метод статическим
    public static function getAll(){
        // меняем $this на static
        $tableName = static::getTableName();
        return static::getDb()->fetchObjectAll("SELECT * FROM {$tableName}", [], get_called_class());
    }
    public static function freeQuery($query){
        $tableName = static::getTableName();
        return static::getDb()->fetchObjectAll($query, [], get_called_class());
    }
    private static function getDb(){
        return Db::getInstance();
    }
}