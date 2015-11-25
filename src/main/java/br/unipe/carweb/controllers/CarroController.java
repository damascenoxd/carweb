package br.unipe.carweb.controllers;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.unipe.carweb.models.Carro;
import br.unipe.carweb.models.Usuario;
import br.unipe.carweb.repositories.CarroRepository;

@Controller
@RequestMapping("/carro")
@Transactional
public class CarroController {

	@Autowired
	private CarroRepository carrorp;

	// Direciona para o formulário de adicionar carro
	@RequestMapping("/form")
	public ModelAndView form(Carro carro) {
		ModelAndView modelAndView = new ModelAndView("carro/form");
		return modelAndView;
	}

	// Salvar novo carro
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Carro carro, BindingResult bindingResult, HttpSession request) {
		if (bindingResult.hasErrors()) {
			return form(carro);
		}
		Usuario usuario = (Usuario) request.getAttribute("usuario");
		carro.setUsuario(usuario);
		carrorp.save(carro);
		return new ModelAndView("redirect:/carro");
	}

	// Lista todos os carros
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list(Carro carro) {
		ModelAndView modelAndView = new ModelAndView("carro/list");
		modelAndView.addObject("findAll", carrorp.findAll());
		return modelAndView;
	}
	
	//EM ANDAMENTO
	@RequestMapping(method = RequestMethod.POST , value = "/filtrar")
	public ModelAndView listFiltrado(@ModelAttribute Carro carro, BindingResult result, ModelMap modelMap){
		String modelo = carro.getModelo();
		System.out.println("asd");
		ModelAndView modelAndView = new ModelAndView("carro/list");
		modelAndView.addObject("findAll", carrorp.findByModeloContainingIgnoreCase(modelo));
		return modelAndView;
	}
	

	@RequestMapping(method = RequestMethod.GET, value = "/{id}")
	public ModelAndView load(@PathVariable("id") Long id) {
		ModelAndView modelAndView = new ModelAndView("carro/form-update");
		modelAndView.addObject("carro", carrorp.findOne(id));
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/{id}")
	public ModelAndView update(@PathVariable("id") Long id, @Valid Carro carro, BindingResult bindingResult,
			HttpSession request) {
		carro.setId(id);
		if (bindingResult.hasErrors()) {
			return loadFormDependencies(new ModelAndView("carro/form-update"));
		}
		Usuario usuario = (Usuario) request.getAttribute("usuario");
		carro.setUsuario(usuario);
		carrorp.save(carro);
		return new ModelAndView("redirect:/usuario/mycars");
	}

	//Deleta carro
	@RequestMapping(method = RequestMethod.GET, value = "/remove/{id}")
	public String remove(@PathVariable("id") Long id) {
		Carro carro = carrorp.findOne(id);
		carrorp.delete(carro);
		return "redirect:/usuario/mycars";
	}

	private ModelAndView loadFormDependencies(ModelAndView modelAndView) {

		return modelAndView;
	}
}
