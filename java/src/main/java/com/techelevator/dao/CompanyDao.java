package com.techelevator.dao;

import com.techelevator.model.Company;

import java.util.List;

public interface CompanyDao {
    public List<Company> getCompanies();
    public List<Company> getCompaniesByCity(String city);
    public Company getCompanyById(int companyId);
    public Company addCompany(Company newCompany);
    }
