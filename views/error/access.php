<h2><?php if($this->mensaje) echo $this->mensaje; ?></h2>
<p>&nbsp;</p>

<a href="<?php echo BASE_URL;?>">Ir al inicio</a>
<a href="javascript:History.back(1)">Volver a la pagina anterior</a>

<?php if(!Session::get('autenticado')): ?>
<a href="<?php echo BASE_URL . 'login'; ?>" >Iniciar session</a>
<?php endif; ?>
