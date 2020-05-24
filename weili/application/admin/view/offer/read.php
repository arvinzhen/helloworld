<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>为力-后台1.0</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="__CSS__/font.css">
        <link rel="stylesheet" href="__CSS__/xadmin.css">
        <link rel="stylesheet" href="__CSS__/test.css">
        <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="__JS__/xadmin.js"></script>
        <script type="text/javascript" src="__JS__/jquery.min.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
<body>
	<div class="layui-fluid">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-body">
						<label class="layui-form-item"></label>
						<div>
							<h1>职位:{$data.name}</h1><br/>
							<h1>岗位:{$data.dpm}</h1><br/>
							<h1>学历:{$data.edu}</h1><br/>
							<h1>期望薪资:{$data.eps}</h1><br/>
							<p>发布时间:<span>{$data.releasetime}</span></p>
						</div>
					</div>
					<hr/>
					<div class="layui-card-body text-intro">
						<span class="x-red da">责任:</span>
						<div>{$data.duty}</div>
					</div>
					<hr/>
					<div class="layui-card-body text-intro">
						<span class="x-red da">要求:</span>
						<div id="content">{$data.claim}</div>
					</div>
					<hr/>
					<div class="layui-card-body text-intro">
						<span class="x-red da">待遇:</span>
						<div id="content">{$data.treat}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>