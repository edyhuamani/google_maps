package pe.com.unicon.sitecx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Paso1Controller {
	
	
	
	@RequestMapping(value="",method=RequestMethod.GET)
	public ModelAndView init(){
		ModelAndView mv=new ModelAndView();
		try{
			
		}catch(Exception e){
			
		}
		return mv;
	}
	
	
}
