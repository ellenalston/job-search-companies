<template>
    <div class="code-practice">

        <h1>Code Practice</h1>

        <div class="clickable-image">
            <a @click="goToGitHub">
                <img src="/job-search-pics/github-pic.png" alt="github-pic">
                <button @click="goToGitHub">GitHub Repo</button>
            </a>

            <a @click="goToStackOverflow">
                <img src="/job-search-pics/stack-overflow-pic.png" alt="stackoverflow-pic">
                <button @click="goToStackOverflow">Stack Overflow</button>
            </a>

            <a @click="goToLeetCode">
                <img src="/job-search-pics/leetcode-pic.png" alt="leetcode-pic">
                <button @click="goToLeetCode">LeetCode</button>
            </a>

            <a @click="goToCodeWars">
                <img src="/job-search-pics/codewars-pic.png" alt="codewars-pic">
                <button @click="goToCodeWars">CodeWars</button>
            </a>

        </div>
    </div>
</template>

<script>
export default {
    methods: {
        goToGitHub() {
            window.open('https://github.com', '_blank');
        },
        goToStackOverflow() {
            window.open('https://stackoverflow.com', '_blank');
        },
        goToLeetCode() {
            window.open('https://leetcode.com', '_blank');
        },
        goToCodeWars() {
            window.open('https://www.codewars.com', '_blank');
        }
    }
}
</script>

<style scoped>
.code-practice {
    padding: 20px;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: center;
    /* Center horizontally */
    height: 100vh;
    text-align: center;
    gap: 20px;
    /* Add space between stacked items */
}

.clickable-image img {
  width: 300px; /* Set appropriate width */
  height: auto; /* Maintain aspect ratio */
  border-radius: 10px; /* Optional: add rounded corners */
  transition: transform 0.3s ease; /* Smooth scaling effect */
}

.code-practice button {
    padding: 10px 20px;
    font-size: 16px;
    background-color: #6196cc;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.clickable-image button:hover {
  background-color: #4157d1; /* Darker shade on hover */
}


</style>