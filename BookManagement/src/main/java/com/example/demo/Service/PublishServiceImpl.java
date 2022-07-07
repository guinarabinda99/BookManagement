package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entity.PublishEntity;
import com.example.demo.Repo.PublishRepository;

@Service
public class PublishServiceImpl implements PublishService{
	@Autowired
	private PublishRepository publishRepo;
	

	@Override
	public List<PublishEntity> findPublish() {
		// TODO Auto-generated method stub
		return publishRepo.findAll();
	}

}
