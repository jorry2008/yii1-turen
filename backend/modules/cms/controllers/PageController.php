<?php

namespace backend\modules\cms\controllers;

use Yii;
use common\models\cms\Page;
use common\models\cms\PageSearch;
use backend\components\Controller;
use yii\web\NotFoundHttpException;
use common\helpers\General;

/**
 * PageController implements the CRUD actions for Page model.
 */
class PageController extends Controller
{
	/**
	 * @inheritdoc
	 */
	public function actions()
	{
		return [
			'file-upload' => [
    			'class' => 'backend\components\FileUploadAction',
    		],
			'ueditor' => [
				'class' => \backend\components\ueditor\UeditorAction::className(),
			],
			'switch-status' => [
				'class' => \backend\components\SwitchAction::className(),
				'className' => Page::className(),
				'id' => Yii::$app->getRequest()->get('id'),
				'feild' => 'status',
				//'route' => '/cms/column/index',
			],
		];
	}
	
    /**
     * Lists all Page models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PageSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Page model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Updates an existing Page model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
        	return $this->redirect(['index']);
//             return $this->redirect(['view', 'id' => $model->id]);
        } else {
//         	$web = Yii::getAlias('@web');
//         	$model->content = preg_replace('/(<img.+src=\"?)(.+)(\/upload\/.+\.(jpg|gif|bmp|bnp|png)\"?.+>)/i',"\${1}".$web."\${3}", $model->content);
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Finds the Page model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Page the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Page::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
