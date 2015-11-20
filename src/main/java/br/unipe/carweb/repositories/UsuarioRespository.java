package br.unipe.carweb.repositories;

import org.springframework.data.repository.CrudRepository;

import br.unipe.carweb.models.Usuario;

public interface UsuarioRespository extends CrudRepository<Usuario, Long>{

}
