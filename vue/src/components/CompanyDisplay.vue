<template>
    <div class="home">
        <h1>List of Companies</h1>
        <h2>Click on a company to view their job listings</h2>

        <div>
            <label for="city-select">Filter by City:</label>
            <select id="city-select" v-model="selectedCity" @change="fetchCompaniesByCity">
                <option value="">All Cities</option>
                <option value="Pittsburgh">Pittsburgh</option>
                <option value="Cleveland">Cleveland</option>
                <option value="Columbus">Columbus</option>
            </select>
        </div>

        <!-- Button to toggle visibility of the form -->
        <button @click="showForm = !showForm">{{ showForm ? 'Cancel' : 'Add a New Company' }}</button>

        <!-- Add Company Form -->
        <div v-if="showForm">
            <form @submit.prevent="submitForm">
                <div>
                    <label for="name">Company Name:</label>
                    <input type="text" id="name" v-model="newCompany.name" required>
                </div>
                <div>
                    <label for="city">City:</label>
                    <input type="text" id="city" v-model="newCompany.city" required>
                </div>
                <div>
                    <label for="url">Company URL:</label>
                    <input type="url" id="url" v-model="newCompany.url" required>
                </div>
                <button type="submit">Submit</button>
            </form>
        </div>

        <!-- Flex container -->
        <div class="companies-flex">
            <div v-for="company in companies" :key="company.id" class="company-card">
                <h2>
                    <a :href="company.url" target="_blank">{{ company.name }}</a>
                </h2>
            </div>
        </div>
    </div>
</template>

<script>
import CompanyService from '../services/CompanyService';

export default {
    data() {
        return {
            companies: [],
            selectedCity: "",
            showForm: false,
            newCompany: {
                name: "",
                city: "",
                url: ""
            }
        };
    },
    created() {
        CompanyService.getCompanies()
            .then(response => {
                this.companies = response.data;
            })
            .catch(error => {
                console.log(error);
            });
    },
    methods: {
        fetchCompaniesByCity() {
            if (this.selectedCity) {
                CompanyService.getCompaniesByCity(this.selectedCity)
                    .then(response => {
                        this.companies = response.data;
                    })
                    .catch(error => {
                        console.error('Error fetching companies by city:', error);
                    });
            } else {
                CompanyService.getCompanies()
                    .then(response => {
                        this.companies = response.data;
                    })
                    .catch(error => {
                        console.error('Error fetching all companies:', error);
                    });
            }
        },

        submitForm() {
            CompanyService.addCompany(this.newCompany)
                .then(response => {
                    console.log('Company added:', response.data);
                    this.companies.push(response.data);
                    this.newCompany = {
                        name: "",
                        city: "",
                        url: ""
                    };
                    this.showForm = false;
                })
                .catch(error => {
                    console.error('Error adding company:', error);
                });
        }

    },
}
</script>

<style>
.home {
    padding: 20px;
    text-align: center;
}

.companies-flex {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
    /* Center items horizontally */
    margin-top: 20px;
}

.company-card {
    flex: 1 1 200px;
    /* Allows each card to grow/shrink, with a minimum width of 200px */
    max-width: 250px;
    /* Set a max width to maintain a consistent size */
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    text-align: center;
    height: 150px;
    /* Optional: Set a fixed height to keep all boxes uniform */
    background-color: #0c4242;
    /* Change this color */
    transition: background-color 0.3s ease;
    /* Optional: Smooth transition */
}

.company-card:hover {
    background-color: #e28d5f;
    /* Add hover effect */
}

.company-card a {
    text-decoration: none;
    color: #FAF3E0;
    font-size: 1.2em;
}

.company-card a:hover {
    color: #007bff;
}
</style>
