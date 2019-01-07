<?php

namespace app\controllers;
abstract class Controller

{
    private $action;
    private $defaultAction = "index";
    // Имя шаблона
    private $layout = "main";
    protected $useLayout = true;
    public function run($action = null)
    {
        // Если action пустой, то запускается action по default
        $this->action = $action ?: $this->defaultAction;
        $action = ucwords(str_replace("-", " ", $action));
        $action = "action" . str_replace(" ", "", $action);
        $this->$action();
    }

    // Формирование шаблона.
    public function render($template, $params)
    {
        if($this->useLayout){
            return $this->renderTemplate("layouts/{$this->layout}",
                ['content' => $this->renderTemplate($template, $params)]
            );
        }else{
            return $this->renderTemplate($template, $params);
        }
    }
    // Метод отображения шаблона
    public function renderTemplate($template, $params)
    {
        extract($params);
        ob_start();
        // Формируем путь до шаблона
        $templatePath = ROOT_DIR . "/views/{$template}.php";
        include $templatePath;
        return ob_get_clean();
    }
}