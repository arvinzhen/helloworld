<?php 
namespace app\pay\controller;
use think\Controller;
use think\Request;
use think\Db;

class Index extends Controller{
	/**
	 * [参数介绍]
	 * $out_trade_no     商户订单号
	 * $subject          订单名称
	 * $total_amount     订单金额
	 * $body             商品描述
	 */
	protected function _initialize(){

	}

	public function index(){
		return $this->fetch('index');
	}

	//支付宝在线付款

    public function alipayWeb(Request $request){
    	$out_trade_no = $request->post('WIDout_trade_no');//根据用户的id + time
    	$subject = $request->post('WIDsubject');
    	$total_amount = $request->post('WIDtotal_amount');
    	$body = $request->post('WIDbody');
    	// $out_trade_no = "123".time();
    	// $subject = "这是一个测试";
    	// $total_amount = 0.01;
    	// $body = "这是第一个测试";
    	$row = true;
        if($row){

            if(checkWap() === true){

              alipayWappay($out_trade_no,$subject,$total_amount,$body);

            }else{

             alipayPagepay($out_trade_no,$subject,$total_amount,$body);

            }

        }else{

            exit("订单不存在!");

        }

    }

	/**

	 * @function    alipayNotifyCallback

	 * @intro        支付宝回调

	 * @return  string

	 */

	public function alipayNotifyCallback()

	{

		alipayNotifyCallBackLog(json_encode($_POST));//这里是记录日志（可选）

	    require Env::get('root_path') .'extend/AlipayTradePagePay/pagepay/service/AlipayTradeService.php';

	    $config                              = alipay_confing();

	    $aop                                = new \AlipayTradeService($config);

	    $result = $aop->check($_POST);

	    if($result == 1){
		    if($_POST['trade_status'] == 'TRADE_SUCCESS' || $_POST['trade_status'] == 'TRADE_FINISHED'){//付款成功
			    //保存支付宝返回的信息
				$alipayData = [];
				$alipayData['trade_no'] = $_POST['trade_no'];
				$alipayData['app_id'] = $_POST['app_id'];
				$alipayData['out_trade_no'] = $_POST['out_trade_no'];
				$alipayData['out_biz_no'] = isset($_POST['out_biz_no']) ? $_POST['out_biz_no'] : '';
				$alipayData['buyer_id'] = isset($_POST['buyer_id']) ? $_POST['buyer_id'] : '';
				$alipayData['seller_id'] = isset($_POST['seller_id']) ? $_POST['seller_id'] : '';
				$alipayData['trade_status'] = isset($_POST['trade_status']) ? $_POST['trade_status'] : '';
				$alipayData['total_amount'] = isset($_POST['total_amount']) ? $_POST['total_amount'] : '';
				$alipayData['receipt_amount'] = isset($_POST['receipt_amount']) ? $_POST['receipt_amount'] : '';
				$alipayData['invoice_amount'] = isset($_POST['invoice_amount']) ? $_POST['invoice_amount'] : '';
				$alipayData['buyer_pay_amount'] = isset($_POST['buyer_pay_amount']) ? $_POST['buyer_pay_amount'] : '';
				$alipayData['point_amount'] = isset($_POST['point_amount']) ? $_POST['point_amount'] : '';
				$alipayData['refund_fee'] = isset($_POST['refund_fee']) ? $_POST['refund_fee'] : '';
				$alipayData['subject'] = isset($_POST['subject']) ? $_POST['subject'] : '';
				$alipayData['body'] = isset($_POST['body']) ? $_POST['body'] : '';
				$alipayData['gmt_create'] = isset($_POST['gmt_create']) ? strtotime($_POST['gmt_create']) : '';
				$alipayData['gmt_payment'] = isset($_POST['gmt_payment']) ? strtotime($_POST['gmt_payment']) : '';
				$alipayData['gmt_refund'] = isset($_POST['gmt_refund']) ? $_POST['gmt_refund'] : '';
				$alipayData['gmt_close'] = isset($_POST['gmt_close']) ? $_POST['gmt_close'] : '';
				$alipayData['fund_bill_list'] = isset($_POST['fund_bill_list']) ? $_POST['fund_bill_list'] : '';
				$alipayData['voucher_detail_list'] = isset($_POST['voucher_detail_list']) ? $_POST['voucher_detail_list'] : '';
				$alipayData['passback_params'] = isset($_POST['passback_params']) ? $_POST['passback_params'] : '';
				$id = db('alipay_record')->insertGetId($alipayData);
				if(!$id){
					echo 'fail';
					exit();
				}

				//这里是你的业务逻辑

				echo "success";

		    }else{

		    	//验证失败

				echo "fail";

		    }

		}

	}



	//以上是程序方面的逻辑，付款成功之后跳转的页面程序里需判断一下支付是否成功

	public function alipayCheckOrder()

	{

	    require Env::get('root_path') .'extend/AlipayTradePagePay/pagepay/service/AlipayTradeService.php';

	    $config                              = alipay_confing();

	    $aop                                  = new \AlipayTradeService($config);

	    $result = $aop->check($_GET);

	    if($result){

	       echo "支付是成功的";

	    }else{

	        echo "支付失败了";

	     }

	}
}

 ?>