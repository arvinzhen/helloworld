<table class="layui-table layui-form">
  <thead>
    <tr>
      <th>
        <input type="checkbox" name="" lay-filter="checkall"  lay-skin="primary">
      </th>
      <th>ID</th>
      <th>ClassId</th>
      <th>title</th>
      <th>总属</th>
  </thead>
  <tbody>
    {volist name="data1" id="v"}
    <tr>
      <td>
        <input type="checkbox" name="id[]"  lay-skin="primary">
      </td>
      <td>{$v.id}</td>
      <td>{$v.classid}</td>
      <td>{$v.title}</td>
      <td>{$v.type}</td>
    </tr>
    {/volist}
    <tr>
      <td>
        <input type="checkbox" name="" lay-filter="checknull"  lay-skin="primary">
      </td>
    </tr>
  </tbody>
</table>
<div>
  <div class="page">
    <div>
      {$data1|raw}
    </div>
  </div>
</div>

