
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
          <img src="${pageContext.servletContext.contextPath}/img/Angry-Nerds-2.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
          <span class="brand-text font-weight-light">&nbsp;</span>
        </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="${pageContext.servletContext.contextPath}/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">${user.username}</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li id="dashboard" class="nav-item">
                    <a id="linkdashboard" href="${pageContext.servletContext.contextPath}/admin" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a id="home" href="${pageContext.servletContext.contextPath}/admin" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Home</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li id="forms" class="nav-item">
                    <a id="linkforms" href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Forms
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a id="newproduct" href="${pageContext.servletContext.contextPath}/admin/product/new" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>New Product</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="newtype" href="${pageContext.servletContext.contextPath}/admin/type/new" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>New Type</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li id="tables" class="nav-item">
                    <a id="linktables" href="#" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            Tables
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a id="productlist" href="${pageContext.servletContext.contextPath}/admin/product" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product List</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="typelist" href="${pageContext.servletContext.contextPath}/admin/type" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Type List</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
