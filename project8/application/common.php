<?php
// 应用公共文件

function alipay_confing(){

    $config['app_id']                   = config('alipay.alipay_config.app_id');

    $config['merchant_private_key']     = config('alipay.alipay_config.merchant_private_key');

    $config['notify_url']               = config('alipay.alipay_config.notify_url');

    $config['return_url']               = config('alipay.alipay_config.return_url');

    $config['charset']                  = config('alipay.alipay_config.charset');

    $config['sign_type']                = config('alipay.alipay_config.sign_type');

    $config['gatewayUrl']               = config('alipay.alipay_config.gatewayUrl');

    $config['alipay_public_key']        = config('alipay.alipay_config.alipay_public_key');

    return $config;

}



/**

 * 支付宝 电脑网站支付

 * @param $out_trade_no     商户订单号

 * @param $subject          订单名称

 * @param $total_amount     订单金额

 * @param $body             商品描述

 * @example alipayPagepay('201791711599526','商品标题','0.01','商品描述');

 */

function alipayPagepay($out_trade_no,$subject,$total_amount,$body)

{

    //step1:获取配置

    require Env::get('root_path') .'extend/AlipayTradePagePay/pagepay/service/AlipayTradeService.php';

    $config                             = alipay_confing();

    $aop                                = new \AlipayTradeService($config);

    //step2:加载表单，构造参数

    require Env::get('root_path') .'extend/AlipayTradePagePay/pagepay/buildermodel/AlipayTradePagePayContentBuilder.php';// 支付宝电脑网站支付

    $payRequestBuilder                  = new \AlipayTradePagePayContentBuilder();

    $payRequestBuilder->setBody($body);

    $payRequestBuilder->setSubject($subject);

    $payRequestBuilder->setTotalAmount($total_amount);

    $payRequestBuilder->setOutTradeNo($out_trade_no);

    //step3:创建支付

    $response                           = $aop->pagePay($payRequestBuilder,$config['return_url'],$config['notify_url']);

    //输出表单

    var_dump($response);

}



/**
 * 读取支付宝（WAP）支付参数
 */

function alipay_wapconfing(){

    $config['app_id']                   = config('alipay.alipay_config.app_id');

    $config['merchant_private_key']     = config('alipay.alipay_config.merchant_private_key');

    $config['notify_url']               = config('alipay.alipay_config.wap_notify_url');

    $config['return_url']               = config('alipay.alipay_config.wap_return_url');

    $config['charset']                  = config('alipay.alipay_config.charset');

    $config['sign_type']                = config('alipay.alipay_config.sign_type');

    $config['gatewayUrl']               = config('alipay.alipay_config.gatewayUrl');

    $config['alipay_public_key']        = config('alipay.alipay_config.alipay_public_key');

    return $config;

}



/**

 * 支付宝 手机支付

 * @param $out_trade_no     商户订单号

 * @param $subject          订单名称

 * @param $total_amount     订单金额

 * @param $body             商品描述

 * @example alipayPagepay('201791711599526','商品标题','0.01','商品描述');

 */

function alipayWappay($out_trade_no,$subject,$total_amount,$body)

{

    //超时时间

    $timeout_express                    = "10m";

    //step1:获取配置

    require Env::get('root_path') .'extend/AlipayTradeWapPay/wappay/service/AlipayTradeService.php';

    $config                             = alipay_wapconfing();

    $aop                                = new \AlipayTradeService($config);

    //step2:加载表单，构造参数

    require Env::get('root_path') .'extend/AlipayTradeWapPay/wappay/buildermodel/AlipayTradeWapPayContentBuilder.php';// 支付宝手机支付

    $payRequestBuilder                  = new \AlipayTradeWapPayContentBuilder();

    $payRequestBuilder->setBody($body);

    $payRequestBuilder->setSubject($subject);

    $payRequestBuilder->setTotalAmount($total_amount);

    $payRequestBuilder->setOutTradeNo($out_trade_no);

    $payRequestBuilder->setTimeExpress($timeout_express);

    //step3:创建支付

    $response                           = $aop->wapPay($payRequestBuilder,$config['return_url'],$config['notify_url']);

    //输出表单

    var_dump($response);

}



/**

 * 判断是否手机端（网上找的方法）

 */

function checkWap(){

    if(isset($_SERVER['HTTP_VIA'])){

        // 先检查是否为wap代理，准确度高

        if(stristr($_SERVER['HTTP_VIA'],"wap")){

                return true;

        }

        // 检查浏览器是否接受 WML.   

        elseif(strpos(strtoupper($_SERVER['HTTP_ACCEPT']),"VND.WAP.WML") > 0){

            return true;

        }

        //检查USER_AGENT

        elseif(preg_match('/(blackberry|configuration\/cldc|hp |hp-|htc |htc_|htc-|iemobile|kindle|midp|mmp|motorola|mobile|nokia|opera mini|opera |Googlebot-Mobile|YahooSeeker\/M1A1-R2D2|android|iphone|ipod|mobi|palm|palmos|pocket|portalmmm|ppc;|smartphone|sonyericsson|sqh|spv|symbian|treo|up.browser|up.link|vodafone|windows ce|xda |xda_)/i', $_SERVER['HTTP_USER_AGENT'])){

            return true;           

        }

        else{

            return false;  

        }

    }else{

        if(preg_match('/(blackberry|configuration\/cldc|hp |hp-|htc |htc_|htc-|iemobile|kindle|midp|mmp|motorola|mobile|nokia|opera mini|opera |Googlebot-Mobile|YahooSeeker\/M1A1-R2D2|android|iphone|ipod|mobi|palm|palmos|pocket|portalmmm|ppc;|smartphone|sonyericsson|sqh|spv|symbian|treo|up.browser|up.link|vodafone|windows ce|xda |xda_)/i', $_SERVER['HTTP_USER_AGENT'])){

            return true;           

        }

        else{

            return false;  

        }

    }

}


//转成 window
function winDz($str){
    return str_replace("\\", "/", $str);
}
//转成linux
function linuxDz($str){
    return str_replace("/", "\\", $str);
}
