package br.unipe.carweb.controllers;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.unipe.carweb.models.Usuario;
import br.unipe.carweb.repositories.CarroRepository;
import br.unipe.carweb.repositories.UsuarioRepository;

@Controller
@RequestMapping("/usuario")
@Transactional
public class UsuarioController {

	@Autowired
	private UsuarioRepository usuariorp;

	@Autowired
	private CarroRepository carrorp;

	@RequestMapping("/form")
	public ModelAndView form(Usuario usuario) {
		ModelAndView modelAndView = new ModelAndView("usuario/form");
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Usuario usuario, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return form(usuario);
		}
		usuariorp.save(usuario);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(method = RequestMethod.GET, value = "/mycars")
	public ModelAndView listCarByUsuario(HttpSession request) {
		Usuario usuario = (Usuario) request.getAttribute("usuario");
		ModelAndView modelAndView = new ModelAndView("usuario/mycars");
		modelAndView.addObject("findByUsuario", carrorp.findByUsuario(usuario));
		return modelAndView;
	}

}
