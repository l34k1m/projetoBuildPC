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
import br.edu.ufabc.buildpc.modelo.Armazenamento;

public class ArmazenamentoDAO {
	private Connection connection;

	public ArmazenamentoDAO() {
		this.connection = new ConexaoBD().getConnection();
	}

	public void fechaConexao() {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Armazenamento> getLista() {
		List<Armazenamento> armazenamentos = new ArrayList<Armazenamento>();
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("SELECT * FROM armazenamento ORDER BY nome");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Armazenamento armazenamento = new Armazenamento();
				armazenamento.setIdArmazenamento(rs.getInt("idArmazenamento"));
				armazenamento.setNome(rs.getString("nome"));
				armazenamento.setFormato(rs.getString("formato"));
				armazenamento.setTipo(rs.getString("tipo"));
				armazenamento.setCapacidade(rs.getString("capacidade"));
				armazenamento.setCache(rs.getString("cache"));
				armazenamento.setPrice(rs.getFloat("price"));
				armazenamentos.add(armazenamento);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return armazenamentos;
	}

	public void insere(Armazenamento stor) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("projeto");
		EntityManager manager = factory.createEntityManager();
		try {
			manager.getTransaction().begin();
			manager.persist(stor);
			manager.getTransaction().commit();
		} finally {
			if (manager.getTransaction().isActive())
				manager.getTransaction().rollback();
		}
		manager.close();
	}
}
