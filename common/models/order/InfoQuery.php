<?php

namespace common\models\order;

/**
 * This is the ActiveQuery class for [[Info]].
 *
 * @see Info
 */
class InfoQuery extends \yii\db\ActiveQuery
{
	/**
	 * 前台显示
	 * @return \common\models\extend\NavQuery
	 */
	public function active()
	{
		$this->andWhere(['status'=>1,'deleted'=>0]);
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
     * @return Info[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return Info|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}