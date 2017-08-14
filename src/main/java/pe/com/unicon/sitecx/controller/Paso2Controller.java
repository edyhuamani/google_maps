package pe.com.unicon.sitecx.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Paso2Controller {
	
	@RequestMapping(value="paso2.htm",method=RequestMethod.GET)
	public ModelAndView init(){
		ModelAndView mv=new ModelAndView();
		try{
			mv.setViewName("paso2");
		}catch(Exception e){
			
		}
		return mv;
	}
	
	@RequestMapping(value="registrar_informacion_paso2.json",method={RequestMethod.POST,RequestMethod.GET},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void guardarInformacionPaso2(){
		try{
			
		}catch(Exception e){
			
		}
	}
}
