package poll;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class PollMgr {
	
	private DBConnectionMgr pool;
	
	public PollMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//Max Num
	public int getMaxNum() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int maxNum = 0;
		try {
			con = pool.getConnection();
			sql = "select max(num) from tblPollList";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next())
				maxNum = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return maxNum;
	}

	//Poll Insert
	public boolean insertPoll(PollListBean plBean, PollItemBean piBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblPollList(question,sdate,edate,wdate,type)"
				 + "values(?,?,?,now(),?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, plBean.getQuestion());
			pstmt.setString(2, plBean.getSdate());
			pstmt.setString(3, plBean.getEdate());
			pstmt.setInt(4, plBean.getType());
			int result = pstmt.executeUpdate();
			if(result==1) {
				sql = "insert tblPollItem values(?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				String item[] = piBean.getItem();
				int listnum = getMaxNum();
				int j = 0;
				for (int i = 0; i < item.length; i++) {
					if(item[i]==null||item[i].trim().equals(""))
						break;
					pstmt.setInt(1, listnum);
					pstmt.setInt(2, i);
					pstmt.setString(3, item[i]);
					pstmt.setInt(4, 0);
					j = pstmt.executeUpdate();
				}
				if(j>0)
					flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	//Poll All List
	public Vector<PollListBean> getAllList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PollListBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblPollList order by num desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PollListBean plBean = new PollListBean();
				plBean.setNum(rs.getInt("num"));
				plBean.setQuestion(rs.getString("question"));
				plBean.setSdate(rs.getString("sdate"));
				plBean.setEdate(rs.getString("edate"));
				vlist.addElement(plBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//Poll Read
	public PollListBean getPollRead(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		PollListBean plBean = new PollListBean();
		try {
			con = pool.getConnection();
			if(num==0) num = getMaxNum();
			sql = "select * from tblPollList where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				plBean.setNum(num);
				plBean.setQuestion(rs.getString("question"));
				plBean.setType(rs.getInt("type"));
				plBean.setActive(rs.getInt("active"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return plBean;
	}
	
	//Poll Item List
	public Vector<String> getItem(int listnum){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<String> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			if(listnum==0) listnum = getMaxNum();
			sql = "select item from tblPollItem where listnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, listnum);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vlist.addElement(rs.getString("item"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//Poll Update 
	public boolean updatePoll(int num, String itemnum[]) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update tblPollItem set count=count+1 "
					+ "where listnum=? and itemnum=?";
			pstmt = con.prepareStatement(sql);
			if(num==0) num = getMaxNum();
			for (int i = 0; i < itemnum.length; i++) {
				pstmt.setInt(1, num);
				pstmt.setInt(2, Integer.parseInt(itemnum[i]));
				if(pstmt.executeUpdate()==1)
					flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	//Poll View 
	public Vector<PollItemBean> getView(int num){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PollItemBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select item, count from tblPollItem "
				   +"where listnum=?";
			pstmt = con.prepareStatement(sql);
			if(num==0)
				num = getMaxNum();
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PollItemBean piBean = new PollItemBean();
				String item[] = new String[1];
				item[0] = rs.getString("item");
				piBean.setItem(item);
				piBean.setCount(rs.getInt("count"));
				vlist.addElement(piBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//Sum Count
	public int sumCount(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int sum = 0;
		try {
			con = pool.getConnection();
			sql = "select sum(count) from tblPollItem where listnum=?";
			pstmt = con.prepareStatement(sql);
			if(num==0)
				num = getMaxNum();
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next())
				sum = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return sum;
	}
	
}








