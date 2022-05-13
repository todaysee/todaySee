package com.todaySee.admin.service;




import com.todaySee.admin.persistence.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;


}
