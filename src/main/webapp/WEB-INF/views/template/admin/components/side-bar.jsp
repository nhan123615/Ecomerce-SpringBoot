
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
                <a class="d-block">${user.username}</a>
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
<%--                <li id="dashboard" class="nav-item">--%>
<%--                    <a id="linkdashboard" href="${pageContext.servletContext.contextPath}/admin" class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-tachometer-alt"></i>--%>
<%--                        <p>--%>
<%--                            Dashboard--%>
<%--                            <i class="right fas fa-angle-left"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
                        <li class="nav-item ">
                            <a id="home" href="${pageContext.servletContext.contextPath}/admin" class="nav-link">
                                <i class="fa fa-home nav-icon"></i>
                                <p>Home</p>
                            </a>
                        </li>
<%--                    </ul>--%>
<%--                </li>--%>

                <li id="data" class="nav-item ">
                    <a id="linkdata"  class="nav-link ">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>
                            Data
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a id="bannerlist" href="${pageContext.servletContext.contextPath}/admin/banner" class="nav-link">
                                <i class="nav-icon far fa-image"></i>
                                <p>Banner Image</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="brandlist" href="${pageContext.servletContext.contextPath}/admin/brand" class="nav-link">
                                <i class="fa fa-filter  nav-icon" ></i>
                                <p>Brand</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="categorylist" href="${pageContext.servletContext.contextPath}/admin/category" class="nav-link">
                                <i class="fa fa-filter  nav-icon" ></i>
                                <p>Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="typelist" href="${pageContext.servletContext.contextPath}/admin/type" class="nav-link">
                                <i class="fa fa-filter  nav-icon" ></i>
                                <p>Type</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li id="managerproduct" class="nav-item ">
                    <a id="linkproduct"  class="nav-link ">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a id="userlist" href="${pageContext.servletContext.contextPath}/admin/user" class="nav-link">
<%--                                <i class="far fa-circle nav-icon"></i>--%>
                                 <i class="fa fa-users nav-icon"></i>
                                <p>User</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="productlist" href="${pageContext.servletContext.contextPath}/admin/product" class="nav-link">
                                <i class="nav-icon fas fa-book"></i>
                                <p>Product</p>
                            </a>
                        </li>
<%--                        <li class="nav-item">--%>
<%--                            <a id="newproduct" href="${pageContext.servletContext.contextPath}/admin/product/new" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>New Product</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>

                        <li class="nav-item">
                            <a id="orderlist" href="${pageContext.servletContext.contextPath}/admin/order" class="nav-link">
                                <i class="fa fa-shopping-cart nav-icon"></i>
                                <p>Order</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="paymentlist" href="${pageContext.servletContext.contextPath}/admin/payment" class="nav-link">
                                <i class="fa fa-credit-card nav-icon" ></i>
                                <p>Payment</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="contactlist" href="${pageContext.servletContext.contextPath}/admin/contact" class="nav-link">
                                <i class="fa fa-address-book nav-icon" ></i>
                                <p>Contact</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="subscriberlist" href="${pageContext.servletContext.contextPath}/admin/subscriber" class="nav-link">
                                <i class="fa fa-envelope-open nav-icon" ></i>
                                <p>Subscriber</p>
                            </a>
                        </li>
                    </ul>
                </li>
<%--                --%>
<%--                <li id="managertype" class="nav-item">--%>
<%--                    <a id="linktype"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Type--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="typelist" href="${pageContext.servletContext.contextPath}/admin/type" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Type List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="newtype" href="${pageContext.servletContext.contextPath}/admin/type/new" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>New Type</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>

<%--                <li id="managerbrand" class="nav-item">--%>
<%--                    <a id="linkbrand"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Brand--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="brandlist" href="${pageContext.servletContext.contextPath}/admin/brand" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Brand List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="newbrand" href="${pageContext.servletContext.contextPath}/admin/brand/new" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>New Brand</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>

<%--                <li id="managercategory" class="nav-item">--%>
<%--                    <a id="linkcategory"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Category--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="categorylist" href="${pageContext.servletContext.contextPath}/admin/category" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Category List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="newcategory" href="${pageContext.servletContext.contextPath}/admin/category/new" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>New Category</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>

<%--                <li id="managerbanner" class="nav-item">--%>
<%--                    <a id="linkbanner"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Banner Image--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                    	 <li class="nav-item">--%>
<%--                            <a id="bannerlist" href="${pageContext.servletContext.contextPath}/admin/banner" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Banner Image List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="newbanner" href="${pageContext.servletContext.contextPath}/admin/banner/new" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>New Banner Image</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li id="manageruser" class="nav-item">--%>
<%--                    <a id="linkuser"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager User--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="userlist" href="${pageContext.servletContext.contextPath}/admin/user" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>User List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li id="managersubscriber" class="nav-item">--%>
<%--                    <a id="linksubscriber"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Subscriber--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="subscriberlist" href="${pageContext.servletContext.contextPath}/admin/subscriber" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Subscriber List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li id="managerorder" class="nav-item">--%>
<%--                    <a id="linkorder"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Order--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="orderlist" href="${pageContext.servletContext.contextPath}/admin/order" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Order List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li id="managerpayment" class="nav-item">--%>
<%--                    <a id="linkpayment"  class="nav-link">--%>
<%--                        <i class="nav-icon fas fa-table"></i>--%>
<%--                        <p>--%>
<%--                            Manager Payment--%>
<%--                            <i class="fas fa-angle-left right"></i>--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <ul class="nav nav-treeview">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a id="paymentlist" href="${pageContext.servletContext.contextPath}/admin/payment" class="nav-link">--%>
<%--                                <i class="far fa-circle nav-icon"></i>--%>
<%--                                <p>Payment List</p>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
