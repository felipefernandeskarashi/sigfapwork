package com.sigfap.admin.model.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "cidade")
public class City implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cidade_id")
	private Integer id;
	
	@Column(name = "cidade_nome")
	private String nome;
	
	public City(){
		
	}
	
	@OneToMany(mappedBy = "cidade", cascade = CascadeType.ALL)
	private List<Address> enderecos = new ArrayList<Address>();
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "estado_uf")
	private State estado;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public State getEstado(){
		return this.estado;
	}
	
	public void setEstado(State estado){
		this.estado = estado;
	}
	
	public List<Address> getEnderecos(){
		return this.enderecos;
	}
	
	public void addEndereco(Address endereco){
		this.enderecos.add(endereco);
		endereco.setCidade(this);
	}
	
}
