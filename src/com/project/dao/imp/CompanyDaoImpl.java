package com.project.dao.imp;

import com.project.dao.ICompanyDao;
import com.project.model.Company;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Administrator on 2018/11/13 0013.
 */
public class CompanyDaoImpl extends BaseDaoImpl implements ICompanyDao {
    @Override
    public List<Company> getCompanys() {
       String sql = "select * from company1";
        Object[] objects = new Object[]{};
        ResultSet rs = this.execQuery(sql, objects);
        List<Company> list = new LinkedList<>();
        try {
            while(rs.next()){
                Company  company = new Company();
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2));
                company.setcName(rs.getString(3));
                company.setCplace(rs.getString(4));
                company.setCxz(rs.getString(5));
                company.setCgm(rs.getString(6));
                company.setCcy(rs.getString(7));
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
                list.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int deleteByCid(int cid) {
        String sql = "delete from company1 where c_id=?";
        Object[] objects = new Object[1];
        objects[0]=cid;
        int i = this.excupdate(sql, objects);
        return i;
    }

    @Override
    public Company foundBycid(int cid) {
        String sql = "select * from company where c_id =?";
        Object[] objects = new Object[1];
        objects[0]=cid;
        ResultSet rs = this.execQuery(sql, objects);
        Company company = new Company();
        try {
            while(rs.next()){
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2));
                company.setcName(rs.getString(3));
                company.setCplace(rs.getString(4));
                company.setCxz(rs.getString(5));
                company.setCgm(rs.getString(6));
                company.setCcy(rs.getString(7));
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.close(conn,ps,rs);
        }

        return company;

    }

    @Override
    public void add(Company company) {
        String sql = "insert into company1 values(?,?,?,?,?,?,?,?,?)";
        Object[] objects={company.getCid(),company.getZwName(),company.getcName(),company.getCplace()
        ,company.getCxz(),company.getCgm(),company.getCcy(),company.getLsalary(),company.getHsalary()
        };
        int excupdate = this.excupdate(sql, objects);

    }

    @Override
    public int getCount() throws SQLException {
        String sql ="select Count(*) from company1";
        Object[] objects = new Object[]{};
        ResultSet rs = execQuery(sql, objects);
        int num=0;
        if(rs.next()){
           num= rs.getInt(1);
        }

        return num;

    }

    @Override
    public List<Company> getPages(int pageIndex,int pageSize) {
        String sql = "select * from company1 limit ?,?";
        Object[] objects = {(pageIndex - 1) * pageSize, pageSize};
        ResultSet rs = this.execQuery(sql, objects);
        List<Company> list = new LinkedList<>();
        try {
            while (rs.next()) {
                Company company = new Company();
                company.setCid(rs.getInt(1));
                company.setZwName(rs.getString(2));
                company.setcName(rs.getString(3));
                company.setCplace(rs.getString(4));
                company.setCxz(rs.getString(5));
                company.setCgm(rs.getString(6));
                company.setCcy(rs.getString(7));
                company.setLsalary(rs.getDouble(8));
                company.setHsalary(rs.getDouble(9));
                list.add(company);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(new CompanyDaoImpl().getPages(1,10).size());
        System.out.println(new CompanyDaoImpl().getPages(2,10));
    }



}
