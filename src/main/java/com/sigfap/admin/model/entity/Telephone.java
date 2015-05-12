package com.sigfap.admin.model.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="telefone")
public class Telephone implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="telefone_id")
	private Integer id;
	
	@Column(name="telefone_numero")
	private String numero;
	
	public Telephone() {
		
	}
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "unidade_id")
	private Unit unidadeT;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	public Unit getUnidadeT() {
		return unidadeT;
	}

	public void setUnidadeT(Unit unidadeT) {
		this.unidadeT = unidadeT;
	}

	@Override
	public String toString() {
		return "Telephone [id=" + id + ", numero=" + numero + "]";
	}
	
}