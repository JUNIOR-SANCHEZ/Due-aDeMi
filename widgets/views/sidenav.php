<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?=BASE_URL?>public/img/user/user.png?>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <?php if (isset($menu) && sizeof($menu) > 0) : ?>
        
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <?php foreach ($menu as $item) : ?>
            <?php if (isset($item['sub-menu']) && sizeof($item['sub-menu']) > 0) : ?>
            <!-- active -->
            <li class=" treeview">
                <a href="#">
                    <i class="fa <?= $item['icon'] ?>"></i> <span><?=$item['title']?></span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php foreach ($item['sub-menu'] as $itemsub) : ?>
                    <!-- active -->
                    <li class=""><a href="<?=$itemsub['link']?>"><i class="fa fa-circle-o"></i><?=$itemsub['title']?></a></li>
                    <?php endforeach;?>
                </ul>
            </li>
            <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        
        <?php endif; ?>
    </section>
    <!-- /.sidebar -->
</aside>