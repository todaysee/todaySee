<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item" id="clickChart">
            <a href="#" class="nav-link" id="titleChart">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                차트
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               <li class="nav-item">
                <a href="/admin" class="nav-link" id="chart1">
                  <i class="far fa-circle nav-icon"></i>
                  <p>차트1 </p>
                </a>
              </li> 
               <li class="nav-item">
                <a href="/admin/userChart" class="nav-link" id="chart2">
                  <i class="far fa-circle nav-icon"></i>
                  <p>차트2 </p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item" id="clickAdmin">
            <a href="#" class="nav-link" id="titleAdmin">
              <i class="nav-icon fas fa-table"></i>
              <p>
                관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/communityReport" class="nav-link" id="admin">
                  <i class="far fa-circle nav-icon"></i>
                  <p>신고관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/movieAdmin" class="nav-link" id="movieAdmin">
                  <i class="far fa-circle nav-icon"></i>
                  <p>영상관리</p>
                </a>
              </li>
              
            </ul>
          </li>
            <li class="nav-item" id="clickUserList">
            <a href="/admin/userList" class="nav-link" id="titleUserList">
              <i class="nav-icon fas fa-table"></i>
              <p>
                회원관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
           
          </li>
        </ul>
      </nav>
       
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
