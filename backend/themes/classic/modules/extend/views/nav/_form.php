<?php

use yii\helpers\Html;
//use yii\widgets\ActiveForm;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

use common\helpers\General;
use common\models\extend\Nav;
use kartik\file\FileInput;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model common\models\extend\Nav */
/* @var $form yii\widgets\ActiveForm */

if($model->isNewRecord) {
	$model->status = true;
	$model->order = 10;
	$model->link_url = 'http://turen.pw?r=';
	$model->re_link_url = 'http://turen.pw?r=';
}

$parentIds = ArrayHelper::merge(['0'=>Yii::t('extend', 'Top Nav')], ArrayHelper::map(General::recursiveObj(Nav::find()->orderBy(['order'=>SORT_ASC])->all()), 'id', 'name'));

$target = [
	'_blank' => Yii::t('extend', 'Blank'),
	'_parent' => Yii::t('extend', 'Parent'),
	'_self' => Yii::t('extend', 'Self'),
];
?>

<div class="row nav-form">
    <div class="col-md-12">
        <?php $form = ActiveForm::begin([
			'layout' => 'horizontal',
			'fieldConfig' => [
				'template' => "{label} {beginWrapper} {input} {hint} {error} {endWrapper}",
				'horizontalCssClasses' => [
					'label' => 'col-sm-2',
					'offset' => 'col-sm-offset-2',
					'wrapper' => 'col-sm-8',
					'error' => '',//col-sm-8 col-sm-offset-2
					'hint' => '',//col-sm-8 col-sm-offset-2
				],
			],
		]);
		?>
    	
        <?= $form->field($model, 'parent_id')->dropDownList($parentIds) ?>
		
	    <?= $form->field($model, 'name')->hint('<i class="fa fa-info-circle"></i> '.Yii::t('extend', 'Through the title calls this menu'))->textInput(['maxlength' => true]) ?>
		
	    <?= $form->field($model, 'link_url')->textInput(['maxlength' => true]) ?>
		
	    <?= $form->field($model, 're_link_url')->hint('<i class="fa fa-info-circle"></i> '.Yii::t('extend', 'URL Rewrite'))->textInput(['maxlength' => true]) ?>
		
	    <?= $form->field($model, 'pic_url')->hint('<i class="fa fa-info-circle"></i> '.Yii::t('fileinput', 'Note: Limit upload one picture.'))->widget(FileInput::classname(), [
		    'options'=>[
	    		'accept' => 'image/*',//只接收图片类型
	    		'multiple' => false,//这里不需要多选
	    	],
	    	'pluginOptions' => [
	    		'uploadUrl' => Url::to(['/extend/nav/file-upload']),
	    		'uploadAsync' => true,//异步上传
	    		'initialPreview' => General::showImages($model->pic_url),
	    		'initialPreviewConfig' => General::showLinks($model->pic_url, 'pic_url', 'img', '/extend/nav/file-upload'),
	    		'previewFileType' => 'any',//预览所有类型文件
	    		//'initialCaption'=>"原有的图片",
	    		'overwriteInitial'=>true,//直接覆盖原有的图片
	    		'maxFileSize' => Yii::$app->params['config']['config_pic_size'],//限制大小
	    		'allowedFileExtensions' => explode(',', Yii::$app->params['config']['config_pic_extension']),//限制后缀名
	    		'allowedFileTypes' => ['image'],//限制文件类型（图片）
	    		'maxFileCount' => 1,//此处限制一张
	    		'uploadExtraData' => [
	    			'dir' => 'nav',//目录标识，广告
	    			'name' => 'Nav[pic_url]',//指定资源获取标识名
	    			'route' => '/extend/nav/file-upload',
	    			'field' => 'pic_url',
	    		],
	    	],
		]) ?>
		
	    <?= $form->field($model, 'target')->dropDownList(ArrayHelper::merge([''=>Yii::t('extend', 'Open Type')], $target)) ?>
		
	    <?= $form->field($model, 'order')->input('number', ['maxlength' => true]) ?>
		
		<?= $form->field($model, 'status')->hint('<i class="fa fa-info-circle"></i> '.Yii::t('common', 'Don\'t show in the frontend,If you don\'t choose'))->radioList([1=>Yii::t('common', 'Yes'), 0=>Yii::t('common', 'No')]) ?>
		
	    <div class="form-group">
	        <div class="col-sm-8 col-sm-offset-2">
	        	<?= Html::submitButton($model->isNewRecord ? Yii::t('common', 'Create') : Yii::t('common', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
			</div>
        </div>
    
        <?php ActiveForm::end(); ?>
    </div>
</div>
