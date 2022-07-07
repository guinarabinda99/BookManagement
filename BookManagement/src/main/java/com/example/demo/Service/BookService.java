package com.example.demo.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Entity.BookEntity;

public interface BookService {
	
	public List<BookEntity> findAllBook();
	public List<Object[]> findBook();
	void saveBook(BookEntity book);
	void deleteEmp(int id);
}
