<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\order\Info */

$this->title = Yii::t('order', 'Create Info');
$this->params['breadcrumbs'][] = ['label' => Yii::t('order', 'Info List'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
    <div class="col-md-12">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
               <li data-original-title="<?= Yii::t('common', 'Click').'('.Yii::t('common', 'Index').')'?>" data-toggle="tooltip">
                    <?= Html::a(Yii::t('common', 'Index'), ['index']) ?>
               </li>
               
               <li class="active">
                   <?= Html::a(Yii::t('common', 'Create'), 'javascript:;') ?>
               </li>
            </ul>
           
            <div class="tab-content clearfix">
                <div class="tab-pane active info-create">
                    
                    <?= $this->render('_form', [
                        'model' => $model,
                    ]) ?>
                    
                </div>
            </div>
            
        </div>
    </div>
</div>

