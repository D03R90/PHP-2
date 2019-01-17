<?php
use app\engine\Render;

class TemplateRendererTest extends \PHPUnit\Framework\TestCase

{
    protected $sharedFixture;
    /**
     * @dataProvider providerRender
     */
    public function testRender($template, $params, $content)
    {
        $this->assertContains($content, $this->sharedFixture->render($template, $params));
    }
    public function providerRender()
    {
        return array(
            array("card", [], "<br>"),
            array("login", [], "</form>")
        );
    }

}