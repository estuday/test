package com.project.service.imp;

import com.project.dao.ICompanyDao;
import com.project.dao.imp.CompanyDaoImpl;
import com.project.model.Company;
import com.project.service.ICompanyService;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2018/11/13 0013.
 */
public class CompanyServiceImpl implements ICompanyService {
    ICompanyDao  companyDao = new CompanyDaoImpl();
        @Override
    public List<Company> getCompanys() {
        return companyDao.getCompanys();
    }

    @Override
    public int deleteByCid(int cid) {
        return companyDao.deleteByCid(cid);
    }

    @Override
    public Company foundBycid(int cid) {
        return companyDao.foundBycid(cid);
    }

    @Override
    public void add(Company company) {
        companyDao.add(company);
        }

    @Override
    public int getCount() throws SQLException {
        return companyDao.getCount();
    }

    @Override
    public List<Company> getPages(int pageIndex, int pageSize) {
         return companyDao.getPages(pageIndex,pageSize);
    }
}
