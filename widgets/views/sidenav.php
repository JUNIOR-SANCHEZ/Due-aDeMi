<aside class="main-sidebar">

    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?=BASE_URL?>public/img/user/<?=strtoupper(Session::get("img"))?>" class="img-circle"
                alt="User Image">
            </div>
            <div class="pull-left info">
                <p>
                    <?=Session::get("apellido")?>
                </p>
                <p>
                    <?=Session::get("nombre")?>
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i>En Linea</a>
            </div>
            <br>
            <br>
            <br>
            <br>
        </div>
        <div></div>
        <?php if (isset($menu) && sizeof($menu) > 0): ?>
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">
                <?=strtoupper(Session::get("rol_name"))?>
            </li>
            <?php foreach ($menu as $item):
                $_item_style = "";
                if (View::getViewid() && $item['id'] == View::getViewid()) {
                    $_item_style = "active";
                }
            ?>
            <?php if (isset($item['sub-menu']) && sizeof($item['sub-menu']) > 0): ?>
            <li class=" treeview <?=$_item_style?>">
                <a href="#">
                    <i class="fa <?=$item['icon']?>"></i> <span>
                        <?=$item['title']?></span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php foreach ($item['sub-menu'] as $itemsub):
                        $_subitem_style = "";
                        if (View::getSubViewid() && $itemsub['id'] == View::getSubViewid()) {
                            $_subitem_style = "active";
                        }
                    ?>
                    <li class="<?=$_subitem_style?>"><a href="<?=$itemsub['link']?>"><i class="fa <?=$itemsub['icon']?>"></i><?=$itemsub['title']?></a></li>
                    <?php endforeach;?>
                </ul>
            </li>
            <?php else: ?>
            <li class="<?=$_item_style?>">
                <a href="<?=$item['link']?>">
                    <i class="fa <?=$item['icon']?>"></i><span><?=$item['title']?></span>
                </a>
            </li>
            <?php endif;?>
            <?php endforeach;?>
        </ul>
        <?php endif;?>
    </section>
</aside>