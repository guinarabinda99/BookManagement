package com.example.demo.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entity.BookEntity;
import com.example.demo.Repo.BookRepository;

@Service
public class BookServiceImpl implements BookService{
	@Autowired
	private BookRepository bookRepo;

	@Override
	public List<BookEntity> findAllBook() {
		// TODO Auto-generated method stub
		return bookRepo.findAll();
	}

	@Override
	public void saveBook(BookEntity book) {
		bookRepo.save(book);
		
	}

	@Override
	public List<Object[]> findBook() {
		// TODO Auto-generated method stub
		return bookRepo.find();
	}

	@Override
	public void deleteEmp(int id) {
		bookRepo.deleteById(id);
		
	}


}
