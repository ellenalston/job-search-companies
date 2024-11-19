import axios from 'axios';

export default {

  getCompanies() {
    return axios.get("/companies")
  }, 

  getCompaniesByCity(city) {
    return axios.get(`/companies/${city}`)
  }, 

  addCompany(company) {
    return axios.post("/add-company", company)
  }

}
