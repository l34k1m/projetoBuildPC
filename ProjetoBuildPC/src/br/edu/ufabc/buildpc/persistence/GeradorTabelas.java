package br.edu.ufabc.buildpc.persistence;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class GeradorTabelas {
	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		System.out.println("Tabela gerada!");
		factory.close();
	}
}