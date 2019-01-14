<?php


function prepareVariables($page_name){
    $vars = [];
    switch ($page_name){
        case "news":
            $vars["newsfeed"] = getNews();
            $vars["test"] = 123;
            break;
        case "newspage":
            $content = getNewsContent($_GET['id_news']);
            $vars["news_title"] = $content["news_title"];
            $vars["news_content"] = $content["news_content"];

            break;
        case "feedback":
			doFeedbackAction($vars);
			$vars["feedbackfeed"] = getFeedbacksFeed();
          
            break;

        case "index":
        case "products":

        $vars["response"] = getAllProducts();
          
        break;
		
    }

    return $vars;
}

function getAllProducts() {
    $sql = "SELECT * FROM `goods` WHERE 1";
    $res["goods"] = getAssocResult($sql);

    return $res;
}

function doFeedbackAction(&$vars) {
	$vars["response"] ="";
	$vars["action"] ="Отправить";
	$vars["edit_name"] ="";
	$vars["edit_message"] ="";
	if ($_GET["status"]=="ok") $vars["response"] = "Отзыв добавлен!";
	if ($_GET["status"]=="error") $vars["response"] = "Ошибка";
	if ($_GET["status"]=="delete") $vars["response"] = "Отзыв удален";
	if ($_GET["status"]=="edit") $vars["response"] = "Отзыв изменен";
	
	if ($_REQUEST["send"] == "Править") {
			 updateFeedback($_POST["idx"]);
			header("Location: /feedback/?status=edit");
		 }
		 else {
			 if(isset($_POST['name'])) {
		
		if (setFeedback()) 
				header("Location: /feedback/?status=ok");
			else
				header("Location: /feedback/?status=error");
	}
		 }
	
	
       

	if (isset($_GET["action"])) {
		if ($_GET["action"] == "delete") {
			if (deleteFeedback($_GET["id"]))
				header("Location: /feedback/?status=delete");
			else
				header("Location: /feedback/?status=error");
		} elseif ($_GET["action"] == "edit") {
			 $feed = getFeedBack($_GET["id"]);
			 $vars["edit_name"] = $feed["feedback_user"];
			 $vars["edit_message"] = $feed["feedback_body"];
			 $vars["action"] ="Править";
			 $vars["id"] = $_GET["id"];
		}
		
	}		

   
}

function updateFeedback($id) {
	$id = (int)$id;
	$db_link = getConnection();

    $feedback_user = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['name'])));
    $feedback_body = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['review'])));

    $sql = "UPDATE `feedback` SET `feedback_user` = '{$feedback_user}', `feedback_body` = '{$feedback_body}' WHERE `feedback`.`id_feedback` = {$id};";
    $res = executeQuery($sql, $db_link);
	if(!$res)
        $response = false;
    else
        $response = true;

    return $response;
}

function getFeedBack($id) {
	$id = (int)$id;
	$sql = "SELECT * FROM feedback WHERE id_feedback = {$id}";
	$res = getAssocResult($sql);
	
	$result = [];
    if(isset($res[0]))
        $result = $res[0];

    return $result;

}

function deleteFeedback($id) {
	$id = (int)$id;
	$sql = "DELETE FROM feedback WHERE id_feedback={$id}";
	$res = executeQuery($sql);

    if(!$res)
        $response = false;
    else
        $response = true;

    return $response;
}

function getNews(){
    $sql = "SELECT id_news, news_title, news_preview FROM news";
    $news = getAssocResult($sql);

    return $news;
}

function getNewsContent($id_news){
    $id_news = (int)$id_news;

    $sql = "SELECT * FROM news WHERE id_news = ".$id_news;
    $news = getAssocResult($sql);

    $result = [];
    if(isset($news[0]))
        $result = $news[0];

    return $result;
}

function getFeedbacksFeed(){
    $sql = "SELECT * FROM feedback ORDER BY id_feedback DESC";
    $feed = getAssocResult($sql);

    return $feed;
}

function setFeedback(){
    $response = "";
    $db_link = getConnection();

    $feedback_user = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['name'])));
    $feedback_body = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['review'])));

    $sql = "INSERT INTO feedback (feedback_body, feedback_user) VALUES('{$feedback_body}', '{$feedback_user}')";
    $res = executeQuery($sql, $db_link);

    if(!$res)
        $response = false;
    else
        $response = true;

    return $response;
}