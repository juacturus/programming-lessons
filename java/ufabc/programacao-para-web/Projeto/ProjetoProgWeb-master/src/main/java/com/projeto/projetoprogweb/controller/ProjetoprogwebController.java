package com.projeto.projetoprogweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.projeto.projetoprogweb.model.entity.Comentario;
import com.projeto.projetoprogweb.service.ComentarioService;
import com.projeto.projetoprogweb.service.NoticiaService;
import com.projeto.projetoprogweb.service.TipoNoticiaService;

@Controller
public class ProjetoprogwebController {

	//Injeções
	/*@Autowired
	private Calendar calendar;*/
	@Autowired
	private ComentarioService comentService;
	@Autowired
	private NoticiaService noticiaService;
	@Autowired
	private TipoNoticiaService tipoService;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/listarcoment")
	public ModelAndView listar(Model model) {
		model.addAttribute("comentario", comentService.getAll());
		return new ModelAndView("listarcomentarios");
	}
	
	@GetMapping("/adicionarcoment")
	public ModelAndView recebeInserir(Model model) {
		model.addAttribute("comentario", new Comentario());
		return new ModelAndView("inserircomentario");
	}
	
	@PostMapping("/adicionarcoment")
	public ModelAndView salvaInserir(@ModelAttribute("comentario") Comentario coment, Model model) {
		comentService.create(coment);
		return new ModelAndView("inserircomentario");
	}
}
