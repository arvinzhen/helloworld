<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>修改密码--DedsecAdmin</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="/public/layui2/css/layui.css" media="all" />
	<link rel="stylesheet" href="/public/css/public.css" media="all" />
</head>
<body class="childrenBody">
<div class="layui-card">
	<div class="layui-card-body">
		<form class="layui-form layui-row changePwd" id="changePwd">
			<div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
				<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-block">
						<input type="text" value="<?php echo $_SESSION['s_id'] ?>" disabled class="layui-input layui-disabled">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">旧密码</label>
					<div class="layui-input-block">
						<input type="password" id="oldpwd" value="" placeholder="请输入旧密码" lay-verify="required|oldPwd" class="layui-input pwd">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">新密码</label>
					<div class="layui-input-block">
						<input type="password" value="" name="password" placeholder="请输入新密码" lay-verify="required|newPwd" class="layui-input pwd" id="newpwd">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">确认密码</label>
					<div class="layui-input-block">
						<input type="password" value="" placeholder="请确认密码" lay-verify="required|confirmPwd" class="layui-input pwd" id="repwd">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit="" lay-filter="changePwd" id="changepwd-btn">立即修改</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="/public/layui2/layui.js"></script>
<script type="text/javascript" src="/public/js/user/user.js"></script>
</body>
</html>