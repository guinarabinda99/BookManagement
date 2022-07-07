package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.Entity.BookEntity;
import com.example.demo.Repo.BookRepository;
import com.example.demo.Service.BookService;
import com.example.demo.Service.PublishService;

@Controller
public class AllController {
	@Autowired
	private BookRepository bookRepo;
	@Autowired
	private BookService bookService;
	@Autowired
	private PublishService publishService;
	
	@GetMapping("/")
	public String Display(Model model) {
		model.addAttribute("books", bookService.findBook());
		model.addAttribute("publish", publishService.findPublish());
		return "books";
		
	}

	@PostMapping("/AddBook")
	public String addBooks(Model model,
			@ModelAttribute BookEntity book) {

		bookService.saveBook(book);
		model.addAttribute("books", bookService.findBook());

		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable (value = "id") int id) {
		//bookService.deleteEmp(id);
		BookEntity book = bookRepo.findById(id).get();
		book.setDeleted(true);
		bookRepo.save(book);
		//bookRepo.delete(book);
		return "redirect:/";
	}
	@GetMapping("/edit/{id}")
	public String EditBook(Model model,@PathVariable (value = "id") int id) {
		//bookService.deleteEmp(id);
	    
		model.addAttribute("books",bookRepo.findById(id).get());
		model.addAttribute("publish", publishService.findPublish());
		return "editBooks";
	}
	@PostMapping("/update")
	public String updateBook(@ModelAttribute BookEntity book) {
		System.out.println("come");
		bookService.saveBook(book);
		return "redirect:/";
	}
}
