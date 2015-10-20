<?php
return array(
	//'配置项'=>'配置值'
	'DB_TYPE'               => 'mysql',     // 数据库类型
    'DB_HOST'               => '127.0.0.1', // 服务器地址
    'DB_NAME'               => 'tp_zxmb',          // 数据库名
    'DB_USER'               => 'root',      // 用户名
    'DB_PWD'                => 'root',          // 密码
    'DB_PREFIX'             => 'tp_',    // 数据库表前缀
    'SHOW_PAGE_TRACE' =>true,//调试页面Trace
    'URL_CASE_INSENSITIVE'  =>  true,  //URL地址不区分大小写
    //类库
    'AUTOLOAD_NAMESPACE' => array( 
       'Lib'     => APP_PATH.'Lib',
       ),
    'TMPL_PARSE_STRING'=>array(
        '__Public__' => __ROOT__.'/Public',
        '__Css__' => __ROOT__.'/Public/css',
        '__Js__' => __ROOT__.'/Public/js',
        '__Image__'=>__ROOT__.'/Public/image'
        ),
    // 'TMPL_ACTION_ERROR'     =>  APP_PATH.'Tpl/dispatch_jump.tpl', // 默认错误跳转对应的模板文件
    // 'TMPL_ACTION_SUCCESS'   =>  APP_PATH.'Tpl/dispatch_jump.tpl', // 默认成功跳转对应的模板文件
    // 'TMPL_EXCEPTION_FILE'   =>  APP_PATH.'Tpl/think_exception.tpl',// 异常页面的模板文件
);