
<div class="modal-dialog text-center">
  <div class="col-sm-9 main-section">
    <div class="modal-content">

      <div class="col-12 user-img">
        <img src="{$_layoutParams.root}public/img/face.png">
      </div>
      
      <div class="col-12 form-input">
          <form method="post" action="{$_layoutParams.root}usuarios/login">
              <input type="hidden" name="login" value="1">
              <div class="form-group">
                  <input type="text" class="form-control" name="user" placeholder="Ingresar Usuario o email" value="{$datos.user|default:""}">
              </div>
              <div class="form-group">
                  <input type="password" class="form-control" name="password" placeholder="Ingresar Contraseña" value="{$datos.password|default:""}">
              </div>
              <button type="submit" class="btn btn-success" >Login</button>
          </form>
      </div>

    </div>
  </div>
</div>