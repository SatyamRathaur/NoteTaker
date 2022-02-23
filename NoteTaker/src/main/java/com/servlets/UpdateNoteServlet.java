package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateNoteServlet() {
       
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int id = Integer.parseInt(request.getParameter("id").trim());
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Session s = FactoryProvider.getFactory().openSession();
			s.beginTransaction();
			
			Note note = new Note();
			note.setId(id);
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			s.update(note);
			
			s.getTransaction().commit();
			s.close();
			response.sendRedirect("showAllNotes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
