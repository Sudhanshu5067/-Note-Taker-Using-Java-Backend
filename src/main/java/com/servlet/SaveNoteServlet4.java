package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public SaveNoteServlet4() {
		super();

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String title = request.getParameter("title");

			String content = request.getParameter("content");

			Note note = new Note(title,content,new Date());

			//System.out.println(note.getId()+":"+note.getTitle());

			//Hibernate.save()
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();

			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'> Note Added Successfully </h1> ");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1> ");

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
