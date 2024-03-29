package com.aulaapi.Api.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.aulaapi.Api.entidades.Contato;

@RestController
public class ContatoController {

	private List<Contato> contatos = new ArrayList<>();

//	@GetMapping("/contatos")
//	public String hello(){
//		return "Hello World!";
//	}

	@GetMapping("/contatos/{idcontato}")
	public ResponseEntity<?> contatoById(@PathVariable("idcontato") Long idcontato) {
		Contato contato = null;
		for (Contato ct : contatos) {
			if (ct.getId() == idcontato) {
				contato = ct;
				break;
			}
		}
		if (contato != null) {
			return ResponseEntity.status(HttpStatus.OK).body(contato);
		}
		return ResponseEntity.status(HttpStatus.NOT_FOUND).body("message: Contato não encontrado");
	}

	@GetMapping("/contatos")
	public ResponseEntity<?> consultarTodos() {
		return ResponseEntity.status(HttpStatus.OK).body(contatos);
	}

	@PostMapping("/contatos")
	public ResponseEntity<?> salvar(@RequestBody Contato contato) {
		contato.setId(contatos.size() + 1l);
		contatos.add(contato);
		return ResponseEntity.status(HttpStatus.CREATED).body(contato);
	}
	
	@PutMapping("/contatos/{idContato}")
	public ResponseEntity<?> alterar(@PathVariable("idContato")	Long idContato, @RequestBody Contato contato){
    	Contato con = existeContato(idContato);
		if( con != null) {
			con.setNome(contato.getNome());
			con.setEmail(contato.getEmail());
			return ResponseEntity.status(HttpStatus.OK).body(con);
		}
		
		return ResponseEntity.status(HttpStatus.NOT_FOUND).body("message: contato não encontrado");
	}

	private Contato existeContato(Long idContato) {
		Contato con = null;
		for(Contato ct : contatos) {
			if(ct.getId() == idContato) {
				con = ct;
				break;
			}
		}
		return con;
	}
}
