<?php

use yii\db\Migration;

class m170919_174251_products extends Migration
{
    public function safeUp()
    {
        $this->createTable('products',[
            'id' => $this->primaryKey(),
            'ASIN' => $this->string(10),
            'Title' => $this->string(),
            'Price' => $this->decimal(5,2),
            'Picture' => $this->string(200),
            'EAN' => $this->string(13),
            'Brand'=>$this->string(200),
        ]);
    }

    public function safeDown()
    {
        echo "m170919_174251_products cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m170919_174251_products cannot be reverted.\n";

        return false;
    }
    */
}
