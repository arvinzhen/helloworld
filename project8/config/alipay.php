<?php 
	
	return [
		//支付宝参数
    	'alipay_config' => [
	        //应用ID,您的APPID。
	        'app_id' => "2088022147695749",
	        //商户私钥
	        'merchant_private_key' => "MIIEpQIBAAKCAQEAowx++bhpczVWHaSLnXVVCNki/cRZSZyttXeWdHkYQap0Vpyh2mXLZgXjelIu/qJbCDrs/VRUnDegzFVJCUb4KVMQoW5xIUPXj3Hh8Gqtz+4PaGvrZifPAg0sqjTUSj2+1DlYU/TZj1m2lgslhUjclHxnRZY1csoPp694R0M6kSn8t9aZWGLswkJnikE/B3jgK6z52dpTwVJM/HuPzOZlvCKWkrDgVGZO83RJHfZ2Tt7lRXw65Afnzj4P/JrFsnMISusRKD3yOU/7y2Bt3p9mIz9CHzE4c4x1ws0Av49EUajzPnq7HB68YK5xE7StKsc1dxmLXm9x2p4yRZKFWZ2klwIDAQABAoIBAQCfFo06CTZSpAL/b1KOczJiLMNYieF40rgnLKUPxivlvnQ/IhtGZjZcuHgpHNEfwLhDwoMD9umLdzecx8Y4mBeA8rxyVrlpdLF6E+sZUm1/SU+dWldX2JXB8arX9C4CtlZg6gcF/AzfMvDVW9DjSKF4/B0jp5lFBGTb/3jDR5R4l8PcbVrFuiA0Gmt7GRwI4wbVXAIA9OKmLFKqYna5c0Ql1yPo/ba7r2llZ1/fs81vNIw9LaXZX0mD3f9dTpxj1XTrAScaI8G/qDbU60FbmsDXfQNWYQAWQcTFAA8+rBXY27AbUj8pnFHagjRmoSfFAmAeDWioMMF6OYQewZQ1aVrJAoGBAPGlkQOQ+cijeZY0PU5IuuDGAwmeCXUC53o5goYFdQwoqsABKJP5oL9buGdMRrUReezsvh+eflKXSvYioLrzqrBfobrkDcs5/B+5lIacP6Z0Vx2NMVfWt1E0y6k8gx0g6qpIS32MarqQIjhkN7KmjThcp/KeOJ8gScVmzEHtgbGVAoGBAKy7yN1214UtwkH7lE3PH78sIYoskTaE3jDqaw5FcnTa5XciSlJ1TlJ1/mwT3V2Q7iZ0kzGL9BIiJUuRqJ8H6PjzngqViuYVfJzayvo6ZxjoLTX94P40fMx74+58mcG3Jg7uh05kcrN76CH9m+58SobBgVTUf3iN74d40/u5h4p7AoGBAKBt4WbSu2K/VZupNwJgOuG71IxwBatPsEpvH/7GZL0byrEKk9waIOSqijTaaR8RaTcovdjUKt2+YCAlQTydRTcvZnpjqdzAtGiDlt3/oipqluOht56viKk7OfMzn4CZN/KxaJ0Dul/+DRoPPwM2nA9NRJtI/CJ5F0EdTIKAolg5AoGAAoReAfQoYdVv3jxHRfb9tHB1MKlDmHLJNhdEZhnW+CL0cw753Ee/U25KvdJwSFvDTKYoOvGaJeV/e6FsvpyD5ZTPOcJCGuY3QaXijVDqja9ccUv4yluDcgtgH+qK5wq/MDqDmD3YegsVL+GdMxV2lI4fT1glX2FaGzREioeClR8CgYEAr6iIjCuppNvKD2MOXHxo1kL/2kPHygBnhQbJsUg3Ou5+wglaGlbrVR99ABg4gqh2qoj0DMHohmBdg/rq6RsySO+iQFxizcsC4BtUV/3kEre7Up+SJ2pq6wMM0scL8Juw6gtmxKTfGE2tZTyXQJzK5wHn9VYnXKaUCnUN+RWO/Oc=",
	        //异步通知地址
	        'notify_url' => "http://pro8.top/alipay.trade.page.pay-PHP-UTF-8/notify_url.php",
	        //同步跳转
	        'return_url' => "http://pro8.top/alipay.trade.page.pay-PHP-UTF-8/return_url.php",
	        //编码格式
	        'charset' => "UTF-8",
	        //签名方式
	        'sign_type'=>"RSA2",
	        //支付宝网关
	        'gatewayUrl' => "https://openapi.alipay.com/gateway.do",
	        //支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	        'alipay_public_key' => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgKYCL8quj5F8U0G9tiDhdcIgcWWJ2tb0GUuU6G/ZGy7FtjPpng1MNNd0hLWDm7juyG3ToT1wNV3yQNGUSMk3X5+/SDI1Qcbal45IyuHTEwgHuVkezgGiSUwJwUpBBd1TpMHjijsCujOLUkvIk24YSXlOGN8bZhT9VSOdUTDTY6m2exDt+gDwun6nBQuprOpIuUD76XYXHdbMAXkC+Lgd3IzUj/l8si2VL6w/FRLmerfHQ0meIHcy2Xh12c1Jn8XK+LtnJDTHORsU2y0nQeMMlhDj6J38kX5RdQWfZCxmdNUU+hgJkxH4yutvkFazodTQ4cp/GGBAajc1aZY/GZwD/wIDAQAB",
	    ],
	];