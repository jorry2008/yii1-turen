<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\StringHelper;

use common\models\extend\Fragment;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('extend', 'Fragment List');
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
    <div class="col-md-12">
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
               <li class="active">
                   <?= Html::a(Yii::t('common', 'Index'), 'javascript:;') ?>
               </li>
               <li data-original-title="<?= Yii::t('common', 'Click').'('.Yii::t('common', 'Create').')'?>" data-toggle="tooltip">
                    <?= Html::a(Yii::t('common', 'Create'), ['create']) ?>
               </li>
            </ul>
           
            <div class="tab-content clearfix">
                <div class="tab-pane active fragment-index">
                
	            <!-- 
	                <p>
	                    <?= Html::a(Yii::t('extend', 'Create Fragment'), ['create'], ['class' => 'btn btn-success']) ?>
	                </p>
	             -->
            	<?php Pjax::begin() ?>
				<?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    
                    'options' => ['class' => 'grid-view box-body table-responsive no-padding'],//整个grid view样式//\yii\helpers\Html::renderTagAttributes()
                    'tableOptions' => ['class'=>'table table-hover table-striped table-bordered'],//表格总样式
                    
                    'headerRowOptions' => [],//头部单行样式//\yii\helpers\Html::renderTagAttributes()
                    'footerRowOptions' => [],//底部单行样式//\yii\helpers\Html::renderTagAttributes()
                    
                    'showHeader' => true,
                    'showFooter' => false,
                    
                    'layout' => "{summary}\n{errors}\n{items}\n{pager}",//布局
                    
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
// 							'id',
                    		[
	                    		'attribute' => 'title',
	                    		'format' => 'raw',
	                    		'value' => function($model){
	                    			$length = Yii::$app->params['config']['config_site_title_length'];
	                    			$title = StringHelper::truncate($model->title, $length);
	                    			return Html::a($title, ['update', 'id'=>$model->id], ['data-pjax' => '0']);
	                    		},
                    		],
                    		'short_code',
// 				            'pic_url:url',
// 				            'link_url:url',
// 				            'content:ntext',
                    		[
	                    		'attribute' => 'status',
	                    		'format' => 'html',
	                    		'value' => function($model){
	                    			$on = Html::a('<small class="label bg-green">'.Yii::t('common', 'Yes').'</small>', ['switch-status', 'id'=>$model->id], ['title'=>Yii::t('common', 'Update Status'),'data-pjax' => '0']);
	                    			$off = Html::a('<small class="label bg-red">'.Yii::t('common', 'No').'</small>', ['switch-status', 'id'=>$model->id], ['title'=>Yii::t('common', 'Update Status'),'data-pjax' => '0']);
	                    			return $model->status?$on:$off;
	                    		},
                    		],
				            // 'deleted',
				            // 'created_at',
				            'created_at:datetime',
            
                        [
                            'class' => 'yii\grid\ActionColumn',
                        	'template' => '{delete}',
                            'header' => Yii::t('common', 'Opration'),
                        ],
                    ],
                ]); ?>
				<?php Pjax::end() ?>
                </div>
                
            </div>
        </div>
	        
    </div>
</div>



