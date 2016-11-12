/**
 * 
 */
/**
 * @author Administrator
 *
 */
package com.book.struts2;
public class HelloWorldAction{
	   private String bookname;
	   private String author;
	   
	   
	   public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getBookname() {
		return bookname;
	}


	public void setBookname(String bookname) {
		this.bookname = bookname;
	}




	 

public String execute() throws Exception {
    return "success";
 }
}
