package fileupload;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileloadMgr {
	
	public static final String saveFolder = 
	"C:/Jsp/myapp/WebContent/fileupload/filestorage/";
	public static final String encType = "EUC-KR";
	public static final int maxSize = 5*1024*1024;//5MB
	
	private DBConnectionMgr pool;
	
	public FileloadMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//파일업로드
	public boolean fileUpload(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			MultipartRequest multi = 
					new MultipartRequest(req, saveFolder,maxSize,
							encType, new DefaultFileRenamePolicy());
			String file = multi.getFilesystemName("file");
			File f = multi.getFile("file");
			int size = (int)f.length();
			con = pool.getConnection();
			sql = "insert tblFileload(file,size)values(?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, file);
			pstmt.setInt(2, size);
			if(pstmt.executeUpdate()==1)
				flag =true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//리스트
	public Vector<FileloadBean> fileList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<FileloadBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblFileload";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				FileloadBean bean = new FileloadBean();
				bean.setNum(rs.getInt(1));//num
				bean.setFile(rs.getString(2));//file
				bean.setSize(rs.getInt(3));//size
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//삭제
	public void fileDelete(int num[]) {//1 3 5
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			for (int i = 0; i < num.length; i++) {
				sql = "select file from tblFileload where num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num[i]);
				rs = pstmt.executeQuery();
				if(!rs.next())
					continue;
				String file = rs.getString(1);
				File f = new File(saveFolder+file);
				if(f.exists())
					f.delete();
				sql = "delete from tblFileload where num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num[i]);
				pstmt.executeUpdate();
			}//for
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}
}


















