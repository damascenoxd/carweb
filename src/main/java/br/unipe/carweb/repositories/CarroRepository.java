package br.unipe.carweb.repositories;

import org.springframework.data.repository.CrudRepository;

import br.unipe.carweb.models.Carro;

public interface CarroRepository extends CrudRepository<Carro, Long>{

}
