package mx.persona.persona.controlador;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/persona")
public class PersonaControlador {

//
//	@Autowired
//	private MicroDosServiceImplementacion microDosServiceImplementacion;
//	
	
	
	@GetMapping("/holamundo") 
	public String obtenerHolaMundo() {
		return "Hola mundo desde el micro 2";	
	}
	
	
	
}
