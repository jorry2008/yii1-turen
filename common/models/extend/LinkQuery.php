<?php

namespace common\models\extend;

/**
 * This is the ActiveQuery class for [[Link]].
 *
 * @see Link
 */
class LinkQuery extends \yii\db\ActiveQuery
{
    /**
	 * 前台显示
	 * @return \common\models\extend\NavQuery
	 */
    public function active()
    {
        $this->andWhere([Link::tableName().'.status'=>1,Link::tableName().'.deleted'=>0]);
        return $this;
    }
    
    /**
     * 没有被删除
     * @return \common\models\extend\NavQuery
     */
    public function alive()
    {
    	$this->andWhere('[[deleted]]=0');
    	return $this;
    }

    /**
     * @inheritdoc
     * @return Link[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return Link|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}