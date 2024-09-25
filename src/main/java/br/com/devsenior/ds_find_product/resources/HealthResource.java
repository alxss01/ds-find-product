package br.com.devsenior.ds_find_product.resources;

import java.time.LocalDateTime;
import java.time.ZoneId;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class HealthResource {
    
    @GetMapping(value = "/health")
    public ResponseEntity<String> health() {
        LocalDateTime dateTime = LocalDateTime.now(ZoneId.systemDefault());
        String health = "Status Ok " + dateTime;
        return ResponseEntity.ok(health);
    }
}
