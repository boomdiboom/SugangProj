package sugang;

import java.sql.*;
import java.util.*;


public class SuGangDAO {
	public void insertProf(Professor prof){
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "insert into professor values('"+prof.getProfid()+"','"+prof.getProfpw()+"','"+ prof.getPname() + "','"+prof.getPtell() + 
					"','" + prof.getMajid()+ "','"+prof.getCollege() + "')";
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("professor insert 오류");
		}finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public void insertStu(Student stu) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "insert into student values('"+stu.getStuid()+"','"+ stu.getStupw() + "','" 
					+ stu.getStuname() + "',null,'"+stu.getStutell() + "'," + stu.getGrade()+ ")";
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("student insert 오류");
		}finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public void insertLect(Lecture lect) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "insert into lecture values('"+lect.getLectid()+"','"+ lect.getLname() + "','" + lect.getProfid()
			 + "','" +lect.getFieid() + "','" + lect.getMajorkind() + "','" + lect.getSchedule()+ "'," + lect.getStunum()+ ")";
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			DBCon.close(con, ps, null);
		}
		
	}

	public String profidCheck(String id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String pw = null;
		String sql = "select profpw from professor where profid = '" + id + "'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				pw = rs.getString("profpw");
				return pw;
			}else
				return pw;
		}catch(Exception e) {
			System.out.println("교수아이디 read 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return pw;
	}
	
	
	
	public String stuidCheck(String id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String pw = null;
		String sql = "select stupw from student where stuid = '" + id + "'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				pw = rs.getString("stupw");
				return pw;
			}else
				return pw;
		}catch(Exception e) {
			System.out.println("학생아이디 read 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return pw;
	}
	
	public String fienumCheck(String fieid) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int fienum;
		String Three = null;
		String sql = "select fienum from field where fieid = '" + fieid + "'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				fienum = rs.getInt("fienum");
				Three = String.format("%03d",fienum);
				return Three;
			}else
				return Three;
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			DBCon.close(con, ps, rs);
		}
		return Three;
	}
	
	public Lecture readLec(String lectid) {
		Lecture lect = new Lecture();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select lectid, lname, pname, majorkind, fieid, schedule, stunum from lecture natural join professor where lectid = '"+lectid+"'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
			}
		}catch(Exception e) {
			System.out.println("lecture 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return lect;
	}
	
	public List<Lecture> readLecAll() {
		ArrayList<Lecture> list = new ArrayList<Lecture>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select lectid, lname, pname, majorkind, fieid, schedule, stunum from lecture natural join professor";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Lecture lect = new Lecture();
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
				list.add(lect);
			}
		}catch(Exception e) {
			System.out.println("lecture all 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public List<Professor> readProfAll() {
		ArrayList<Professor> list = new ArrayList<Professor>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from professor";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Professor prof = new Professor();
				prof.setProfid(rs.getString(1));
				prof.setProfpw(rs.getString(2));
				prof.setPname(rs.getString(3));
				prof.setPtell(rs.getString(4));
				prof.setMajid(rs.getString(5));
				prof.setCollege(rs.getString(6));
				list.add(prof);
			}
		}catch(Exception e) {
			System.out.println("Professor all 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public Professor readProf(String profid) {
		Professor prof = new Professor();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from professor where profid = '"+ profid + "'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				prof.setProfid(rs.getString(1));
				prof.setProfpw(rs.getString(2));
				prof.setPname(rs.getString(3));
				prof.setPtell(rs.getString(4));
				prof.setMajid(rs.getString(5));
				prof.setCollege(rs.getString(6));
			}
		}catch(Exception e) {
			System.out.println("Professor all 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return prof;
	}

	public List<Lecture> readLecDay(String schedule) {
		ArrayList<Lecture> list = new ArrayList<Lecture>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select lectid, lname, pname, majorkind, fieid, schedule, stunum from lecture natural join professor where schedule like '" + schedule + "%'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Lecture lect = new Lecture();
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
				list.add(lect);
			}
		}catch(Exception e) {
			System.out.println("lecture day 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public List<Lecture> readLecFie(String field) {
		ArrayList<Lecture> list = new ArrayList<Lecture>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select lectid, lname, pname, majorkind, fieid, schedule, stunum from lecture natural join professor natural join field where fieid = '" + field + "'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Lecture lect = new Lecture();
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
				list.add(lect);
			}
		}catch(Exception e) {
			System.out.println("lecture fie 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public List<Lecture> readLecProfid(String id) {
		ArrayList<Lecture> list = new ArrayList<Lecture>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select lectid, lname, profid, majorkind, fieid, schedule, stunum from lecture natural join professor where profid = '" + id + "'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Lecture lect = new Lecture();
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
				list.add(lect);
			}
		}catch(Exception e) {
			System.out.println("lecture fie 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public List<Student> readStuAll() {
		ArrayList<Student> list = new ArrayList<Student>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select *  from student ";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Student stu = new Student();
				stu.setStuid(rs.getString("stuid"));
				stu.setStupw(rs.getString("stupw"));
				stu.setStuname(rs.getString("stuname"));
				stu.setProfid(rs.getString("profid"));
				stu.setStutell(rs.getString("stutell"));
				stu.setGrade(rs.getInt("grade"));
				list.add(stu);
			}
		}catch(Exception e) {
			System.out.println("lecture fie 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public List<Lecture> readLecStuid(String id) {
		ArrayList<Lecture> list = new ArrayList<Lecture>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select lectid, lname, profid, majorkind, fieid, schedule, stunum from professor natural join lecture natural join stuincla where stuid = '" + id + "'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Lecture lect = new Lecture();
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
				list.add(lect);
			}
		}catch(Exception e) {
			System.out.println("lecture fie 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public Student readStu(String stuid) {
		Student stu = new Student();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from student where stuid = '" + stuid + "'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				stu.setStuid(rs.getString("stuid"));
				stu.setStupw(rs.getString("stupw"));
				stu.setStuname(rs.getString("stuname"));
				stu.setProfid(rs.getString("profid"));
				stu.setStutell(rs.getString("stutell"));
				stu.setGrade(rs.getInt("grade"));
			}
		}catch(Exception e) {
			System.out.println("lecture fie 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return stu;
	}
	
	public List<Student> readStuProfid(String profid) {
		ArrayList<Student> list = new ArrayList<Student>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select stuid, stupw, stuname, pname, stutell, grade  from student natural join professor where profid = '"+profid+"'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Student stu = new Student();
				stu.setStuid(rs.getString("stuid"));
				stu.setStupw(rs.getString("stupw"));
				stu.setStuname(rs.getString("stuname"));
				stu.setProfid(rs.getString("pname"));
				stu.setStutell(rs.getString("stutell"));
				stu.setGrade(rs.getInt("grade"));
				list.add(stu);
			}
		}catch(Exception e) {
			System.out.println("lecture fie 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public void delClaLectId(String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "delete stuincla where lectid = '" + lectid +"'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("lectid 삭제 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
	}
	
	public void delLect(String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "delete lecture where lectid = '" + lectid +"'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("lect 삭제 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
	}
	
	public void delMinLect(int num) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "delete lecture where stunum < " + num;
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("min lect 삭제 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
	}
	
	public void updateProf(Professor prof) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "update professor set profpw = '" + prof.getProfpw() + "', pname = '"+ prof.getPname()+"', ptell = '"+prof.getPtell()+"', majid = '"
				+ prof.getMajid()+ "', college = '"+ prof.getCollege() + "' where profid = '" + prof.getProfid() +"'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("professor update 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
	}
	
	public void updateStu(Student stu) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "update student set stupw = '" + stu.getStuid() + "', stuname = '"+ stu.getStuname()+"', stutell = '"+stu.getStutell()+"', profid = '"
				+ stu.getProfid()+ "', grade = '"+ stu.getGrade() + "' where stuid = '" + stu.getStuid() +"'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			DBCon.close(con, ps, rs);
		}
	}
	
	public String regiCheck(String stuid,String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String boo = "false";
		String sql = "select * from stuincla where lectid = '" +lectid+ "' and stuid = '" +stuid+"'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				boo = "true";
			}else
				boo = "false";
		}catch(Exception e) {
			System.out.println("수강 check 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return boo;
	}
	
	public String readSche(String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sche = "";
		String sql = "select schedule from lecture where lectid = '" +lectid+"'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				sche = rs.getString(1);
			}
		}catch(Exception e) {
			System.out.println("스케쥴 read 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return sche;
	}
	
	public String regiScheCheck(String stuid,String Sche) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String boo = "false";
		String sql = "select * from stuincla natural join lecture where Schedule = '" + Sche + "' and stuid = '" +stuid+"'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				boo = "true";
			}else
				boo = "false";
		}catch(Exception e) {
			System.out.println("e");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return boo;
	}
	
	public void regiLect(String stuid,String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "insert into stuincla values('"+lectid+"','"+ stuid + "')";
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public void regiNumPlus(String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "update lecture set stunum = (select stunum from lecture where lectid = '"+lectid+"')+1 where lectid = '"+lectid+"'" ;
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("수강인원추가오류");
		}finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public void regiCanLect(String stuid,String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "delete stuincla where lectid = '"+lectid+"' and stuid = '"+ stuid + "'";
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("수강신청취소 오류");
		}finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public void regiNumMinus(String lectid) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBCon.getCon();
			String sql = "update lecture set stunum = (select stunum from lecture where lectid = '"+lectid+"')-1 where lectid = '"+lectid+"'" ;
			ps = con.prepareStatement(sql);
			ps.execute();
		}catch(Exception e) {
			System.out.println("수강인원감소오류");
		}finally {
			DBCon.close(con, ps, null);
		}
	}
	
	public String readSche(String stuid, String sche) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String lname="";
		String sql = "select lname from lecture natural join stuincla  where stuid = '"+ stuid
		+"' and schedule = '" + sche + "'";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				lname = rs.getString(1);
			}
		}catch(Exception e) {
			System.out.println(e);
		}finally {
			DBCon.close(con, ps, rs);
		}
		return lname;
	}
	
	public List<Lect_Back> readLectBackup() {
		ArrayList<Lect_Back> list = new ArrayList<Lect_Back>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from lect_backup";
		try {
			con = DBCon.getCon();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Lect_Back lect = new Lect_Back();
				lect.setLectid(rs.getString(1));
				lect.setLname(rs.getString(2));
				lect.setProfid(rs.getString(3));
				lect.setMajorkind(rs.getString(4));
				lect.setFieid(rs.getString(5));
				lect.setSchedule(rs.getString(6));
				lect.setStunum(rs.getInt(7));
				lect.setChangedate(rs.getString(8));
				lect.setType(rs.getString(9));
				list.add(lect);
			}
		}catch(Exception e) {
			System.out.println("lect_Backup all 읽기 오류");
		}finally {
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	
}
