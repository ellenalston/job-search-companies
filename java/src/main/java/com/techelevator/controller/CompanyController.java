package com.techelevator.controller;


import com.techelevator.dao.CompanyDao;
import com.techelevator.model.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin
@RestController
public class CompanyController {

    @Autowired
    private CompanyDao companyDao;

    @RequestMapping(path="/companies", method = RequestMethod.GET)
    public List<Company> getCompanies(){
        return companyDao.getCompanies();
    }

    @RequestMapping(path="/companies/{city}", method = RequestMethod.GET)
    public List<Company> getCompaniesByCity(@PathVariable String city){
        return companyDao.getCompaniesByCity(city);
    }

    @RequestMapping(path="/company/{id}", method = RequestMethod.GET)
    public Company getCompanyById(@PathVariable int id){
        return companyDao.getCompanyById(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(path="add-company", method = RequestMethod.POST)
    public Company addCompany(@RequestBody @Valid Company newCompany){
        return companyDao.addCompany(newCompany);
    }


}
