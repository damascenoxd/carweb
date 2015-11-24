package br.unipe.carweb.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ControleAcessoInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		if (uri.endsWith("login") || uri.endsWith("autenticar") || (!uri.endsWith("/carro/form") && !uri.endsWith("/usuario/mycars")) ) {
			return true;
		}

		if (session.getAttribute("usuario") != null) {
			return true;
		}
		response.sendRedirect(request.getContextPath() + "/login");
		return false;
	}
}
