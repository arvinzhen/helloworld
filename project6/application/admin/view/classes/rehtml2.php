<table class="layui-table layui-form">
  <thead>
    <tr>
      <th>
        <input type="checkbox" name="" lay-filter="checkall"  lay-skin="primary">
      </th>
      <th>标题</th>
      <th colspan="3">操作</th>
  </thead>
  <tbody>
    {volist name="data2" id="v"}
      <tr>
        {eq name="v.id" value="0"}
          <td>{$v.title}</td>
          {else/}
          <td>|----->{$v.title}</td>
        {/eq}
        <td class="cz">
          <a href="{:url('@admin/classes/read/'.$v['id'])}"  title="详情">
            <i class="iconfont">&#xe6a4;</i>
          </a></td><td class="cz">
          <a title="编辑"  onclick="xadmin.open('编辑','{:url('@admin/classes/edit/'.$v['id'])}')" href="javascript:;">
            <i class="layui-icon">&#xe642;</i>
          </a></td><td class="cz">
          <a title="删除" class="shanchu" data-id="{$v.id}" href="javascript:;">
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
  </tbody>
</table>
