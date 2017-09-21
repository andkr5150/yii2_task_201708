<?php
use yii\helpers\Url;
use yii\widgets\LinkPager;
?>
<div class="site-index">
    <form action="<?=Url::to('view')?>" method="GET">
        <div class="col-xs-3">
            <input class="form-control" id="ex2" type="text" name="value">
        </div>
        <input class="btn btn-success" type= "submit" value= "Add new product">
    </form>
    <div class="jumbotron">
        <hr>
        <?php foreach ($products as $product):?>
        <div class="row">
            <div class="col-sm-4"><img src="<?=$product->Picture ?>" alt="lorem"></div>
            <div class="col-sm-4"><?=$product->Title?></div>
            <div class="col-sm-4">EUR <?=$product->Price?></div>
        </div>
        <hr>
        <?php endforeach;?>
    </div>
    <?php
        echo LinkPager::widget([
            'pagination' => $pages,
        ]);
    ?>
</div>


