package br.edu.ufabc.buildpc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.edu.ufabc.buildpc.jdbc.ConexaoBD;
import br.edu.ufabc.buildpc.modelo.Psu;

public class PsuDAO {
	private Connection connection;

	public PsuDAO() {
		this.connection = new ConexaoBD().getConnection();
	}

	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Psu> getLista() {
		List<Psu> psus = new ArrayList<Psu>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM psu ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Psu psu = new Psu();
				psu.setIdPsu(rs.getInt("idPsu"));
				psu.setNome(rs.getString("nome"));
				psu.setPotencia(rs.getString("potencia"));
				psu.setPadrao(rs.getString("padrao"));
				psu.setEightyPlus(rs.getString("eightyPlus"));
				psu.setModular(rs.getString("modular"));
				psu.setPrice(rs.getFloat("price"));
				psus.add(psu);
			}
			rs.close();
			stmt.close();
		} catch (SQLException
				e) {
			throw new RuntimeException(
					e);
		}
		return psus;
	}
	
	public void insere(Psu psu) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(psu);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
}
