package com.project.dao;

import com.project.model.Company;

import java.sql.SQLException;
import java.util.Comparator;
import java.util.List;

/**
 * Created by Administrator on 2018/11/13 0013.
 */
public interface ICompanyDao {
    public List<Company>  getCompanys();
    public int deleteByCid(int cid);
    public  Company  foundBycid(int cid);
    public void add(Company company);
    public int getCount() throws SQLException;
    public List<Company> getPages(int pageIndex, int pageSize);

}
