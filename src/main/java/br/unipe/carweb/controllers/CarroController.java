package br.unipe.carweb.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.unipe.carweb.models.Carro;
import br.unipe.carweb.repositories.CarroRepository;

@Controller
@RequestMapping("/carro")
@Transactional
public class CarroController {
	
	@Autowired
	private CarroRepository carrorp;
	
	@RequestMapping("/form")
	public ModelAndView form(Carro carro) {
		ModelAndView modelAndView = new ModelAndView("carro/form");
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Carro carro, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return form(carro);
		}
		carrorp.save(carro);
		return new ModelAndView("redirect:/carro");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("carro/list");
		modelAndView.addObject("findAll", carrorp.findAll());
		return modelAndView;
	}
}
