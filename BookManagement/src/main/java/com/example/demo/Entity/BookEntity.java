package com.example.demo.Entity;





import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "Book")
public class BookEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "book_id")
	private int bookId;
	private String bookname;
	private double price;
	@DateTimeFormat(pattern = "mm/dd/yyyy")
	private Date date;
	private String editionType;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "publisher_id",nullable = false)
	private PublishEntity publish;
	private boolean deleted = Boolean.FALSE;


	public boolean isDeleted() {
		return deleted;
	}



	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public PublishEntity getPublish() {
		return publish;
	}
	public void setPublish(PublishEntity publish) {
		this.publish = publish;
	}
	public String getEditionType() {
		return editionType;
	}
	public void setEditionType(String editionType) {
		this.editionType = editionType;
	}
	
	
	
	
	
	

}
