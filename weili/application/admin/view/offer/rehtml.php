<div class="layui-card-body ">
    <table class="layui-table layui-form">
      <thead>
        <tr>
          <th>
            <input type="checkbox" name="" lay-filter="checkall"  lay-skin="primary">
          </th>
          <th>ID</th>
          <th>招聘岗位</th>
          <th>招聘部门</th>
          <th>学历要求</th>
          <th>预计薪资</th>
          <th>聘人数</th>
          <th>发布时间</th>
          <th colspan="3">操作</th>
      </thead>
      <tbody>
        {eq name="pz" value="0"}
          <tr><td class="text-center" colspan="11">没有相关的信息哦,请添加一点职位信息吧</td></tr>
        {else/}
          {volist name="data" id="v"}
            <tr>
              <td>
                <input type="checkbox" name="id[]"  lay-skin="primary" value="{$v.id}">
              </td>
              <td>{$v.id}</td>
              <td>{$v.name}</td>
              <td>{$v.dpm}</td>
              <td>{$v.edu}</td>
              <td>{$v.eps}</td>
              <td>{$v.num}</td>
              <td>{$v.releasetime}</td>
              <td class="cz">
                <a href="<?php echo url('@admin/offer/read/'.$v['id']); ?>"  title="详情">
                  <i class="iconfont">&#xe6a4;</i>
                </a></td><td class="cz">
                <a title="编辑"  onclick="xadmin.open('编辑','{:url('@admin/offer/edit/'.$v['id'])}')" href="javascript:;">
                  <i class="layui-icon">&#xe642;</i>
                </a></td><td class="cz">
                <a title="删除" class="test" data-id="{$v.id}" href="javascript:;">
                  <i class="layui-icon">&#xe640;</i>
                </a>
              </td>
            </tr>
          {/volist}
          <tr>
            <td>
              <input type="checkbox" name="" lay-filter="checknull"  lay-skin="primary">
            </td>
          </tr>
        {/eq}
      </tbody>
    </table>
</div>
<div class="layui-card-body ">
    <div class="page">
      {eq name="pz" value="1"}
        {$page|raw}
      {/eq}
    </div>
</div>