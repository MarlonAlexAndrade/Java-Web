package com.aulaapi.Api.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.aulaapi.Api.entidades.Local;

@RestController
public class LocalController {

	private List<Local> locais = new ArrayList<>();

	@GetMapping("/local")
	public ResponseEntity<?> consultarTodosLocais() {
		return ResponseEntity.status(HttpStatus.OK).body(locais);
	}

	@PostMapping("/local")
	public ResponseEntity<?> salvar(@RequestBody Local local) {
		local.setId(locais.size() + 1l);
		locais.add(local);
		return ResponseEntity.status(HttpStatus.CREATED).body(local);
	}

	@PutMapping("/local/{idLocal}")
	public ResponseEntity<?> alterarLocal(@PathVariable("idLocal") Long idLocal, @RequestBody Local local) {
		Local loc = existeLocal(idLocal);
		if (loc != null) {
			loc.setNome(local.getNome());
			loc.setRua(local.getRua());
			loc.setBairro(local.getBairro());
			loc.setCidade(local.getCidade());
			loc.setCep(local.getCep());
			loc.setFone(local.getFone());
			return ResponseEntity.status(HttpStatus.OK).body(loc);
		}

		return ResponseEntity.status(HttpStatus.NOT_FOUND).body("message: contato não encontrado");
	}

	private Local existeLocal(Long idLocal) {
		Local loc = null;
		for (Local lc : locais) {
			if (lc.getId() == idLocal) {
				loc = lc;
				break;
			}
		}
		return loc;
	}

	@DeleteMapping("/local/{idLocal}")
	public ResponseEntity<?> deletarLocal(@PathVariable("idLocal") Long idLocal) {
		Local local = null;
		for (Local lc : locais) {
			if (lc.getId() == idLocal) {
				local = lc;
				break;
			}
		}
		if (local != null) {
			return ResponseEntity.status(HttpStatus.OK).body(local);
		}
		return ResponseEntity.status(HttpStatus.NOT_FOUND).body("message: Contato não encontrado");
	}
}
