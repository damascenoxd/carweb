package br.unipe.carweb.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.unipe.carweb.models.Usuario;
import br.unipe.carweb.repositories.UsuarioRepository;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UsuarioRepository usuariorp;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String login(ModelMap modelMap){
        Usuario usuario = new Usuario();
        modelMap.addAttribute("usuario", usuario);
        return "login/form";
    }

    @RequestMapping(value = "/autenticar", method = RequestMethod.POST)
    public String auth(@ModelAttribute Usuario usuario, HttpSession session, ModelMap modelMap){

        Usuario usuarioAutenticado = usuariorp.findByEmailAndSenha(usuario.getEmail(), usuario.getSenha());
        if(usuarioAutenticado != null){
            session.setAttribute("usuario", usuarioAutenticado);
        }else{
        	session.setAttribute("m", "Amiguinho seu usuário é inválido! <br>Tente novamente.");
        	return "redirect:/login";
        }
        return "redirect:/usuario/mycars";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/login";
    }

}