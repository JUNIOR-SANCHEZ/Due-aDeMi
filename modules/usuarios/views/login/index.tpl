<form action="{$_layoutParams.root}usuarios/login" method="post">
  <div class="form-group has-feedback">
    <input type="email" name="user" class="form-control" placeholder="Email" value="{$datos.user|default:''}">
    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div>
  <div class="form-group has-feedback">
    <input type="password" name="password" class="form-control" placeholder="Password" value="{$datos.password|default:''}">
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div>
  <div class="row">
    <div class="col-xs-4 col-xs-offset-8">
      <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
    </div>
  </div>
</form>
