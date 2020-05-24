<div class="layui-card-body ">
    <table class="layui-table layui-form">
      <thead>
        <tr>
          <th>
            <input type="checkbox" name="" lay-filter="checkall"  lay-skin="primary">
          </th>
          <th>ID</th>
          <th>文件名</th>
          <th>发布时间</th>
          <th colspan="3">操作</th>
      </thead>
      <tbody>
        {eq name="pz" value="0"}
          <tr><td class="text-center" colspan="7">没有相关的信息哦,请上传一些文件吧</td></tr>
        {else/}
          {volist name="data" id="v"}
            <tr>
              <td>
                <input type="checkbox" name="id[]"  lay-skin="primary" value="{$v.classid}">
              </td>
              <td>{$v.id}</td>
              <td>{$v.title}</td>
              <td>{$v.releasetime}</td>
              <td class="cz">
                <a href="<?php echo url('@admin/download/read/'.$v['id']); ?>"  title="详情">
                  <i class="iconfont">&#xe6a4;</i>
                </a></td><td class="cz">
                <a title="编辑"  onclick="xadmin.open('编辑','{:url('@admin/download/edit/'.$v['id'])}')" href="javascript:;">
                  <i class="layui-icon">&#xe642;</i>
                </a></td><td class="cz">
                <a title="删除" class="shanchu" data-id="{$v.classid}" href="javascript:;">
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