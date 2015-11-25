package br.unipe.carweb.repositories;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

import br.unipe.carweb.models.Carro;
import br.unipe.carweb.models.Usuario;

public interface CarroRepository extends CrudRepository<Carro, Long> {
	public ArrayList<Carro> findByUsuario(Usuario usuario);

	public ArrayList<Carro> findByModeloContainingIgnoreCase(String modelo);

	public ArrayList<Carro> findByValorLessThan(Double valor);

	public ArrayList<Carro> findByValorGreaterThan(Double valor);

	public ArrayList<Carro> findByValorBetween(Double valor1, Double valor2);
}
