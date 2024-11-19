# Junior Dev Job Search Portal

![Homepage](/vue/public/job-search-pics/job-search-homepage.png)
![Companies](/vue/public/job-search-pics/job-search-companies.png)
![CodePractice](/vue/public/job-search-pics/job-search-practice.png)
## Why I Created This Project

During my job search, I found it difficult to keep track of all the companies I was interested in and the various opportunities available. I wanted a way to organize all the companies, their job listings, and my application progress. Additionally, I wanted to keep my technical skills sharp while building something useful. This project serves as a way for me to not only track everything I needed in my job search but also to practice and showcase my development skills.

## Overview
This project is a Spring Boot application that manages a list of companies and user data, with functionalities to fetch, add, and filter companies based on their city or ID. It also includes a RESTful API for interacting with the companies and users, as well as a Vue.js frontend for navigating coding platforms.

## Features
- **Company Management**:
    - Retrieve a list of all companies.
    - Filter companies based on their city.
    - Fetch company details by company ID.
    - Add new companies to the database.
- **User Management**:
    - User authentication (with roles such as `ROLE_USER` and `ROLE_ADMIN`).
- **Frontend**:
    - A Vue.js component that provides quick access to coding platforms like GitHub, Stack Overflow, LeetCode, and CodeWars.

## Technologies Used
- **Backend**:
    - Java
    - Spring Boot
    - Spring Data JDBC (JdbcTemplate)
    - PostgreSQL Database
- **Frontend**:
    - Vue.js
    - HTML/CSS
- **Database**:
    - PostgreSQL
- **APIs**:
    - RESTful API for companies and users

## Setup Instructions

### 1. Clone the Repository
First, clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/company-management-api.git
cd company-management-api
```

## 2. Setup Backend

### a. Install Dependencies
Make sure you have Java and Maven installed. You can download them from the following links:
- [Java](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Maven](https://maven.apache.org/)

Install required dependencies for the Spring Boot application:
```bash
mvn clean install
```
### b. Database Setup
Ensure that PostgreSQL is installed and running on your local machine, then create a database called `job_search`. Use the SQL script provided below to create the required tables and insert sample data.

### c. Run the Spring Boot Application
Run the Spring Boot application with the following command:
```bash
mvn spring-boot:run
```

## 3. Setup Frontend (Vue.js Component)
### a. Install Node.js and Vue CLI
Make sure you have Node.js and Vue CLI installed. You can download them from the following links:

- [Node.js](https://nodejs.org/)
- [Vue CLI](https://cli.vuejs.org/)

### b. Install Frontend Dependencies
Navigate to the frontend folder and install the necessary dependencies:

```bash
cd frontend
npm install
```
### c. Run the Frontend
To run the Vue.js frontend, use the following command:

```bash
npm run serve
```
The Vue.js application should now be running on http://localhost:9000.

## 4. API Endpoints
### a. Company Endpoints
```bash
GET /companies: Retrieve a list of all companies.
GET /companies/{city}: Retrieve a list of companies located in a specific city.
GET /company/{id}: Retrieve a specific company by its ID.
POST /add-company: Add a new company. Requires a JSON body with company_name, city, and url.
```
### b. User Endpoints (Authentication)
```bash
POST /login: Authenticate users based on their credentials.
Request body: { "username": "yourusername", "password": "yourpassword" }
```

## 5. Frontend Details
The frontend provides a simple page with links to popular coding platforms (GitHub, Stack Overflow, LeetCode, and CodeWars). Each platform has an image that, when clicked, opens the platform's site in a new browser tab.

The images are clickable and each has an associated button.
When a button is clicked, the user is redirected to the respective platform.

## 6. Database Schema

The database includes two tables:

**Users**: Stores user credentials and roles.
**Companies**: Stores company information such as name, city, and job listings URL.

