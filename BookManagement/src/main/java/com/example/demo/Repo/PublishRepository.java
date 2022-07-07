package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.PublishEntity;

public interface PublishRepository extends JpaRepository<PublishEntity, Integer>{

}
