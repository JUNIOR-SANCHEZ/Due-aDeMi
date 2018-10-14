<header class="main-header">
    <!-- Logo -->
    <a href="<?=BASE_URL?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>MENU</b></span>
      <!-- logo for regular state and mobile devices -->
     <img src="<?=BASE_URL?>public/img/logop.png" width='180px' hight='150px' >
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-tfop">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?=BASE_URL?>public/img/user/<?=strtoupper(Session::get("img"))?>" class="user-image" alt="User Image">
              <br>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?=BASE_URL?>public/img/user/<?=strtoupper(Session::get("img"))?>" class="img-circle" alt="User Image">

                <p>
                <?=Session::get("apellido")." ".Session::get("nombre")?> <b> <?=strtoupper(Session::get("rol_name"))?>
                </b></p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer ">
                   <div align="center">
                   <a href="<?=BASE_URL?>" class="btn btn-default btn-flat">Mi Perfil</a>
                   <a href="<?=BASE_URL?>usuarios/login/cerrar" class="btn btn-default btn-flat">Cerrar Sesión</a>
                   </div>          
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>

    

    </nav>
    
  </header>
  