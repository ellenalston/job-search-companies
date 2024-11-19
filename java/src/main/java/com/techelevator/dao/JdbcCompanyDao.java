package com.techelevator.dao;

import com.techelevator.model.Company;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcCompanyDao implements CompanyDao{

    private final JdbcTemplate jdbcTemplate;


    public JdbcCompanyDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Company> getCompanies() {
        List<Company> companies = new ArrayList<>();
        String sql = "SELECT * FROM companies;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()){
            Company company = mapRowToCompany(results);
            companies.add(company);
        }

        return companies;
    }

    @Override
    public List<Company> getCompaniesByCity(String city) {
        List<Company> companies = new ArrayList<>();
        String sql = "SELECT * FROM companies WHERE city = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, city);
        while (results.next()){
            Company company = mapRowToCompany(results);
            companies.add(company);
        }

        return companies;
    }

    @Override
    public Company getCompanyById(int companyId){
        Company company = null;

        String sql = "SELECT * FROM companies WHERE company_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, companyId);

        if(results.next()){
            company = mapRowToCompany(results);
        }

        return company;
    }

    @Override
    public Company addCompany(Company newCompany){
        String sql = "INSERT INTO companies (company_name, city, url) VALUES (?, ?, ?) RETURNING company_id;";

        int newCompanyId = jdbcTemplate.queryForObject(sql, Integer.class, newCompany.getName(), newCompany.getCity(), newCompany.getUrl());

        return getCompanyById(newCompanyId);


    }

    private Company mapRowToCompany(SqlRowSet rs) {
        Company company = new Company();
        company.setId(rs.getInt("company_id"));
        company.setName(rs.getString("company_name"));
        company.setCity(rs.getString("city"));
        company.setUrl(rs.getString("url"));
        return company;
    }


}
