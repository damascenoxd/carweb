package br.unipe.carweb.repositories;

import org.springframework.data.repository.CrudRepository;

import br.unipe.carweb.models.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Long>{
	public Usuario findByEmailAndSenha(String email, String senha);
}
