package com.dg.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class BoardManager {

    private int count;

    public Connection connect() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/b-21", "root", "1234");
        return con;
    }

    //1개 사용 위치
    public List<Board> doselect(String setext){
        List<Board> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            System.out.println("setext = "+setext);
            con = connect();
            pstmt = con.prepareStatement("select * from board where name like '%"+setext+"%' order by idx desc");
            rs = pstmt.executeQuery();
            while(rs.next()){
                Board board = new Board();
                board.setIdx(rs.getInt("idx"));
                board.setContent(rs.getString("content"));
                board.setCount(rs.getInt("count"));
                board.setEmail(rs.getString("email"));
                board.setName(rs.getString("name"));
                board.setTitle(rs.getString("title"));
                board.setWdate(rs.getString("wdate"));
                board.setPhone(rs.getString("phone"));
                list.add(board);
            }
            System.out.println(list);
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {

        }
        return null;
    }

//    public static class DBManager {
//        private static String classname = "com.mysql.cj.jdbc.Driver";
//        private static String url = "jdbc:mysql://localhost:3306/aaa";
//        private static String user = "root";
//        private static String pw = "1234";
//
//        public static Connection connect() throws Exception{
//            Class.forName(classname);
//            Connection con = DriverManager.getConnection(url,user,pw);
//            return con;
//        }
//        //select 파일을 열면 닫기 눌러줘야.. 다른 사람이 그 파일을 수정가능
//        public static void close(Connection con, PreparedStatement pstmt, ResultSet rs)
//                throws Exception{
//            if(rs!=null) rs.close();
//            if(pstmt!=null) pstmt.close();
//            if(con!=null) con.close();
//        }
//        // insert update delete
//        public static void close(Connection con, PreparedStatement pstmt) throws Exception{
//            if(pstmt!=null) pstmt.close();
//            if(con!=null) con.close();
//        }
//    }
//    // 총 페이지 개수 가져오기
//    public int getPageCnt() throws Exception {
//        Connection con = null;
//        PreparedStatement pstmt = null;
//        ResultSet rs = null;
//        try{
//            con = Board.connect();
//            pstmt = con.prepareStatement("select " +
//                    "ceil(count(idx)/5) as cnt " +
//                    "from board");
//            rs = pstmt.executeQuery();
//            if(rs.next())
//                return rs.getInt("cnt");
//        }
//        catch (Exception e){
//            e.printStackTrace();
//        }
//        finally {
//            Board.close(con,pstmt,rs);
//        }
//        return 1;
//    }
//
//    private static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
//    }

    public boolean doinsert(Board board){
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("insert into board " +
                    "(name, title, content, wdate)" +
                    " values " +
                    "(?,?,?,?)");
            pstmt.setString(1,board.getName());
            pstmt.setString(2, board.getTitle());
            pstmt.setString(3, board.getContent());
            pstmt.setString(4, LocalDateTime.now().toString());
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }

    public Board doselectrow(int idx){
        Board board = new Board();
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("select * from board where idx = ?");
            pstmt.setInt(1, idx);
            rs = pstmt.executeQuery();
            while(rs.next()){
                board.setIdx(rs.getInt("idx"));
                board.setContent(rs.getString("content"));
                board.setCount(rs.getInt("count"));
                board.setEmail(rs.getString("email"));
                board.setName(rs.getString("name"));
                board.setTitle(rs.getString("title"));
                board.setWdate(rs.getString("wdate"));
                board.setPhone(rs.getString("phone"));
            }

            // 조회수 기능
//            String getReadCountSql = "select readcount from board where no = ?";
//            pstmt=con.prepareStatement(getReadCountSql);
//            pstmt.setInt(1, idx);
//            rs=pstmt.executeQuery();
//            if(rs.next()) {
//                count = rs.getInt(1);
//                count++;
//            }
//
//            String sql = "update board set readcount = ? where no = ?";
//            pstmt=con.prepareStatement(sql);
//            pstmt.setInt(1, count);
//            pstmt.setInt(2, idx);
//            pstmt.executeUpdate();
//            con.close();
        }catch (Exception e){
            e.printStackTrace();
        }finally {

        }
        return board;
    }

    public boolean dodelete(int idx){
        Connection con = null;
        PreparedStatement pstmt = null;
        try{
            con = connect();
            pstmt = con.prepareStatement("delete from board where idx=?");
            pstmt.setInt(1, idx);
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public void doupdate(Board board, int idx) throws Exception{
        Connection con = null;
        PreparedStatement pstmt = null;

        try{
            con = connect();
            pstmt = con.prepareStatement("update board set title = ?, content = ?," +
                    " name = ? where idx = ?");
            pstmt.setString(1,board.getTitle());
            pstmt.setString(2,board.getContent());
            pstmt.setString(3,board.getName());
            pstmt.setInt(4, idx);
            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

//    public List<Board> doSearch(Board board) throws Exception{
//        Connection con = null;
//        PreparedStatement pstmt = null;
//
//        try{
//            con = connect();
//            pstmt = con.prepareStatement("select count(idx) as count from board where "
//                    + board.getSearchWord()+ "like ?");
//            pstmt.setString(1, board.getTitle());
//            pstmt.setString(2, board.getName());
////            pstmt.setInt(3, idx);
//            pstmt.executeUpdate();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }

}
