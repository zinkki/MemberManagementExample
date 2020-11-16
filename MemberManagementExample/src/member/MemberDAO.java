package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDAO {

	String id="system";
	String pass="1234";
	String url= "jdbc:oracle:thin:@localhost:1521:XE";
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,id,pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertMember(MemberBean mbean) {
		
		try {
			getCon();
			
			String sql = "INSERT INTO member VALUES(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getJob());
			pstmt.setString(6, mbean.getHobby());
			pstmt.setString(7, mbean.getInfo());
			pstmt.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String id, String pass1) {
		
		try {
		getCon();
		
		String sql = "SELECT pass1 FROM member WHERE id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			if(rs.getString(1).equals(pass1))
				return 1; //로그인성공
			else
				return 0; //비밀번호 틀림
		}
		return -1; //존재하지 않는 아이디
		}catch(Exception e) {
			
		}
		return -2;	//db연동실패ㅋ
	}
	
	//회원리스트 뽑아옴ㅋ
	public Vector <MemberBean> memberList() {
		
		Vector<MemberBean> v = new Vector<>();
		
		getCon();
		
		try {
			String sql = "SELECT * FROM member";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberBean mbean = new MemberBean();
				mbean.setId(rs.getString(1));
				mbean.setEmail(rs.getString(3));
				v.add(mbean);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	//선택한 회원정보 다 볼수있음!
	public Vector<MemberBean> memberInfo(String id) {
		
		Vector<MemberBean> v = new Vector<>();
		getCon();
		
		try {
			String sql = "SELECT*FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberBean mbean = new MemberBean();
				mbean.setId(rs.getString(1));
				mbean.setEmail(rs.getString(3));
				mbean.setTel(rs.getString(4));
				mbean.setJob(rs.getString(5));
				mbean.setHobby(rs.getString(6));
				mbean.setInfo(rs.getString(7));
				v.add(mbean);
			}
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	public void deleteMember(String id) {
		
		getCon();
		
		try {
			String sql = "DELETE FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			con.close();
		}	
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}

