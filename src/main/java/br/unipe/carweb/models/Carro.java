package br.unipe.carweb.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Carro {

	@Id
	@GeneratedValue
	private Long id;
	private double valor;
	private String fabricante;
	private String modelo;
	private int ano;
	private String acessorio;
	
	// private ArrayList<Acessorio> acessorios;

	@ManyToOne
	private Usuario usuario;

	
//	public ArrayList<Acessorio> getAcessorios() {
//		return acessorios;
//	}
//
//	public void setAcessorios(ArrayList<Acessorio> acessorios) {
//		this.acessorios = acessorios;
//	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getAcessorio() {
		return acessorio;
	}

	public void setAcessorio(String acessorio) {
		this.acessorio = acessorio;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
