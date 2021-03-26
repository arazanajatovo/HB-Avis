package fr.humanbooster.ar.avis;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import fr.humanbooster.ar.avis.property.FichierProperties;

@SpringBootApplication
@EnableConfigurationProperties({
	FichierProperties.class
})
public class AvisApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(AvisApplication.class, args);
	}

}
