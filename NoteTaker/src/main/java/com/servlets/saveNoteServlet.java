package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entities.Note;
import com.helper.FactoryProvider;

public class saveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public saveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title,content,new Date());
			
			SessionFactory f = FactoryProvider.getFactory();
			Session s = f.openSession();
			s.beginTransaction();
			
			s.save(note);
			
			s.getTransaction().commit();
			s.close();
			response.sendRedirect("showAllNotes.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
