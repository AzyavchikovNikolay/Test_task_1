package by.htp.ex.controller.impl;

import java.io.IOException;
import java.util.List;

import by.htp.ex.bean.News;
import by.htp.ex.controller.Command;
import by.htp.ex.service.INewsService;
import by.htp.ex.service.ServiceException;
import by.htp.ex.service.ServiceProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DoDeleteSelectedNews implements Command {

	private final INewsService newsService = ServiceProvider.getInstance().getNewsService();
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] idNewses = request.getParameterValues("idNews");
		List<News> newsList;	
		
		try {
			newsService.deleteNewses(idNewses);
			newsList = newsService.list();
			request.getSession(true).setAttribute("news", newsList);
			request.getSession(true).setAttribute("presentation", "newsList");
			request.getRequestDispatcher("WEB-INF/pages/layouts/baseLayout.jsp").forward(request, response);
		} catch (ServiceException e) {
			request.getRequestDispatcher("/WEB-INF/pages/layouts/error.jsp").forward(request, response);
		}	
	}
}
