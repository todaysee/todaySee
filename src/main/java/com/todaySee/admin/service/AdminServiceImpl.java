package com.todaySee.admin.service;




import com.todaySee.admin.domain.test1;
import com.todaySee.admin.persistence.AdminRepository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;
    
    public List<test1> getUserList(test1 te){
        return (List<test1>) adminRepository.findAll();
    	
    }

	@Override
	public test1 getUser(@PathVariable Integer userNumber) {
		
		
		return  adminRepository.findById(userNumber).get();
	}
    


}
