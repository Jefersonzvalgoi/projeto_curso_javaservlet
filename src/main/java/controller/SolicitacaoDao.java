package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Conexao;
import model.Solicitacao;


public class SolicitacaoDao {
	String sql = "";
	Connection conn = null;
	PreparedStatement pstm;
	Statement stm;
	public ArrayList<Solicitacao> getListar() {
		ArrayList<Solicitacao> lista = new ArrayList<Solicitacao>();
		sql = "SELECT s.id,s.descricao,s.data,u.nome FROM tb_solicitacao AS s INNER JOIN tb_usuario AS u ON s.id_usuario = u.id";
		try {
			conn = Conexao.getConnection();
			ResultSet resultado = conn.createStatement().executeQuery(sql);
			while(resultado.next()) {
				Solicitacao solicitacao = new Solicitacao();
				solicitacao.setId(resultado.getInt("id"));
				solicitacao.setDescricao(resultado.getString("descricao"));
				solicitacao.setData(resultado.getString("data"));
				solicitacao.setNomeSolicitante(resultado.getString("nome"));
				lista.add(solicitacao);
			}
		} catch (SQLException erro3) {
			System.out.println("Erro ao fazeer a consulta. "+erro3);
		}
		return lista;
	}
	public ArrayList<Solicitacao> getListarPorUsuario(int id) {
		ArrayList<Solicitacao> lista = new ArrayList<Solicitacao>();
		sql = "SELECT * FROM tb_solicitacao WHERE id_usuario='"+id+"'";
		try {
			conn = Conexao.getConnection();
			ResultSet resultado = conn.createStatement().executeQuery(sql);
			while(resultado.next()) {
				Solicitacao solicitacao = new Solicitacao();
				solicitacao.setId(resultado.getInt("id"));
				solicitacao.setDescricao(resultado.getString("descricao"));
				solicitacao.setData(resultado.getString("data"));
				lista.add(solicitacao);
			}
		} catch (SQLException erro3) {
			System.out.println("Erro ao fazeer a consulta. "+erro3);
		}
		return lista;
	}
	public void deletar(int id) {
		sql ="DELETE FROM tb_solicitacao WHERE id="+id;
		try {
			conn = Conexao.getConnection();
			stm = conn.createStatement();
			stm.execute(sql);
			stm.close();
		} catch (SQLException errordeletar) {
			System.out.println("Erro ao deletar. "+errordeletar);
		}
	}
	public void inserirSolicitacao(int id, String descricao) {
		sql = "INSERT INTO tb_solicitacao (id_usuario, descricao) VALUES(?,?)";
		try {
			conn = Conexao.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, Integer.toString(id));
			pstm.setString(2, descricao);
			pstm.execute();
			pstm.close();
		} catch (SQLException errorinsert) {
			System.out.println("Erro ao inserir dados. "+errorinsert);
		}
	}
}
	
	
	
	
