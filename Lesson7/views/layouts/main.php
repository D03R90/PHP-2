<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
Хедер<br>
<?=$content;?>
<p>футер</p>
<script>
    $(document).ready(function(){
        $(".action").on('click', function(){
            var idx = $(this).attr('data-idx')
            $.ajax({
                url: "/product/buy/",
                type: "POST",
                dataType : "json",
                data:{
                    idx: idx
                },
                error: function() {alert('error');},
                success: function(answer){
                    {window.location.reload()}
                }

            })
        });
       });

        $(document).ready(function(){
        $(".delete").on('click', function(){
            var idx = $(this).attr('data-idx')
            $.ajax({
                url: "/basket/delete/",
                type: "POST",
                dataType : "json",
                data:{
                    idx: idx
                },
                error: function() {alert('error');},
                success: function(answer){
                    {window.location.reload()}
                }

            })
        });
       });

</script>
</body>
</html>