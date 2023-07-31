package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Usuario;
import model.Conexao;

public class UsuarioDao {
	String sql = "";
	Connection conn = null;
	PreparedStatement pstm;
	Statement stm;
	public ArrayList<Usuario> getListar() {
		ArrayList<Usuario> listar = new ArrayList<Usuario>();
		sql = "SELECT * FROM tb_usuario";
		try {
			conn = Conexao.getConnection();
			ResultSet resultado = conn.createStatement().executeQuery(sql);
			while(resultado.next()) {
				Usuario user = new Usuario();
				user.setId(resultado.getInt("id"));
				user.setNome(resultado.getString("nome"));
				user.setEmail(resultado.getString("email"));
				user.setTelefone(resultado.getString("telefone"));
				listar.add(user);
			}
		} catch (SQLException erro3) {
			System.out.println("Erro ao fazeer a consulta. "+erro3);
		}
		return listar;
	}
	public void inserirUsuario(Usuario user) {
		sql = "INSERT INTO tb_usuario(nome, email, telefone, senha) VALUES(?,?,?,?)";
		try {
			conn = Conexao.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, user.getNome());
			pstm.setString(2, user.getEmail());
			pstm.setString(3, user.getTelefone());
			pstm.setString(4, user.getSenha());
			pstm.execute();
			pstm.close();
		} catch (SQLException errorinsert) {
			System.out.println("Erro ao inserir dados. "+errorinsert);
		}
	}
	public Usuario logar(String email, String senha) {
		sql = "SELECT * FROM tb_usuario WHERE email='"+email+"' and senha='"+senha+"'";
		Usuario usuario = new Usuario();
		try {
			conn = Conexao.getConnection();
			ResultSet resultado = conn.createStatement().executeQuery(sql);
			if(resultado.next()) {
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setEmail(resultado.getString("email"));
				usuario.setTelefone(resultado.getString("telefone"));
				usuario.setSenha(resultado.getString("senha"));
			}
		} catch (SQLException erro3) {
			System.out.println("Erro ao fazeer a consulta. "+erro3);
		}
		return usuario;
	}
	public Usuario buscarPorId(String id) {
		sql = "SELECT * FROM tb_usuario WHERE id='"+id+"'";
		Usuario usuario = new Usuario();
		try {
			conn = Conexao.getConnection();
			ResultSet resultado = conn.createStatement().executeQuery(sql);
			if(resultado.next()) {
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setEmail(resultado.getString("email"));
				usuario.setTelefone(resultado.getString("telefone"));
				usuario.setSenha(resultado.getString("senha"));
			}
		} catch (SQLException erro3) {
			System.out.println("Erro ao fazeer a consulta. "+erro3);
		}
		return usuario;
	}
	public void updateUsuario(Usuario usuario) {
		sql = "UPDATE tb_usuario set nome=?, email=?, telefone=?, senha=? WHERE id=?";
		try {
			conn = Conexao.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, usuario.getNome());
			pstm.setString(2, usuario.getEmail());
			pstm.setString(3, usuario.getTelefone());
			pstm.setString(4, usuario.getSenha());
			pstm.setInt(5, usuario.getId());;
			pstm.execute();
			pstm.close();
		} catch (SQLException errorupdate) {
			System.out.println("Erro ao inserir dados. "+errorupdate);
		}
	}
	
}
