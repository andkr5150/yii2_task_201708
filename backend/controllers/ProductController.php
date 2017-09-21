<?php

namespace backend\controllers;

use MarcL\AmazonAPI;
use MarcL\AmazonUrlBuilder;
use GuzzleHttp\Client;
use backend\models\Products;
use yii\data\Pagination;


class ProductController extends CatalogController
{

    public function actionIndex()
    {
        $query = Products::find();
        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count(), 'pageSize' => 5]);
        $pages->pageSizeParam = false;
        $products = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();

        return $this->render('index', [
            'products' => $products,
            'pages' => $pages,
        ]);
    }

    public function actionView($value)
    {
        $keyId = 'AKIAIN4I5FALO4URFNSA';
        $secretKey = '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';
        $associateId = 'bridge-rating-21';

        $urlBuilder = new AmazonUrlBuilder(
            $keyId,
            $secretKey,
            $associateId,
            'de'
        );

        $amazonAPI = new AmazonAPI($urlBuilder, 'simple');
        $items = $amazonAPI->ItemLookUp($value);

        if (empty($items)) {
            return $this->render('error');
        }

        $asin = $items[0]['asin'];
        $title = $items[0]['title'];
        $price = (float)$items[0]['lowestPrice'];
        $mediumImage = $items[0]['mediumImage'];
        $url = $items[0]['url'];

        $client = new Client();
        $res = $client->request('GET', $url);
        $body = $res->getBody();
        $document = \phpQuery::newDocumentHTML($body);
        $brand= $document->find("a#brand");
        $brand = $brand->text();
        $brand = trim($brand);

        $sql = "INSERT INTO `products`(`id`, `ASIN`, `Title`, `Price`, `Picture`, `EAN`, `Brand`) VALUES (0 ,'$asin', '$title', $price, '$mediumImage','EAN', '$brand')";
        $res = Products::getDb()->createCommand($sql)->execute();


        $mediumImage = str_replace("._SL160_","",$mediumImage);
        return $this->render('view', ['asin'=>$asin ,'brand'=>$brand ,'items'=>$title, 'price'=>$price, 'url'=>$url, 'mediumImage'=>$mediumImage]);
    }
}