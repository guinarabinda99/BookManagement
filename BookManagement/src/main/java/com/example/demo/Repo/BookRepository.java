package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.Entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, Integer>{
	
	@Query(value = "SELECT  b.bookname,b.date,b.price,p.publishername,b.edition_type,b.book_id ,b.deleted FROM book b inner join publisher p on b.publisher_id=p.publisher_id where b.deleted=0 order by p.publisher_id;",nativeQuery = true)
	List<Object[]> find();
	
	@Query(value = "SELECT  b.bookname,b.date,b.price,p.publishername,b.edition_type,b.book_id FROM book b inner join publisher p on b.publisher_id=p.publisher_id where b.book_id=? order by p.publisher_id ",nativeQuery = true)
	List<Object[]> find(Integer id);
//	@Query("From BookEntity b where b.deleted=false")
//	List<BookEntity> findAllBook();

}
