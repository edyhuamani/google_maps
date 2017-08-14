package pe.com.unicon.sitecx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pe.com.unicon.sitecx.business.Paso1Business;

@Controller
public class HomeController {

	@Autowired
	private Paso1Business pasoBusiness;
	
	@RequestMapping(value="home",method=RequestMethod.GET)
	public ModelAndView init(){
		ModelAndView mv=new ModelAndView();
		try{
			mv.setViewName("home");
		}catch(Exception e){
			
		}
		return mv;
	}
	
	@RequestMapping(value="registrar_informacion_paso1.json",method={RequestMethod.POST,RequestMethod.GET},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void guardarInformacionPaso1(){
		try{
			
		}catch(Exception e){
			
		}
	}
}
