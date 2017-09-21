<?php
use yii\helpers\Url;
?>
<form action="<?=Url::to('index')?>">
    <input class="btn btn-success" type= "submit" value= "View Catalog">
</form>

<div class="row">
    <hr>
    <div class="col-sm-6">
        <img src="<?= $mediumImage ?>" alt="lorem">
    </div>
    <div class="col-sm-6">
        ASIN: <?=$asin?>
        <br/><?= $items ?><br/>
        <br/>von <b><?= $brand ?></b><br/>EUR <?=$price ?>
        <br/>
        <a href="<?= $url ?>" target="_blank">view in amazon</a>
    </div>
    <hr>
</div>

