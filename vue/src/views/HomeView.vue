<template>
  <div class="home">
    <h1>Junior Dev Job Search Portal</h1>

    <div class="clickable-image">
      <a @click="$router.push('/companies')">
        <img src="/job-search-pics/homepage-1.png" alt="homepage-1">
        <button @click="$router.push('/companies')">Find a Company Near You</button>
      </a>
      <a @click="goToLinkedIn">
        <img src="/job-search-pics/homepage-3.png" alt="homepage-3">
        <button @click="goToLinkedIn">Network on LinkedIn</button>
      </a>

      <a @click="$router.push('/code-practice')">
        <img src="/job-search-pics/homepage-2.png" alt="homepage-2">
        <button @click="$router.push('/code-practice')">Code Practice</button>
      </a>
    </div>

    <div>
    <h2>Not sure where to start?</h2>
    <p>Click this button for a randomly generated task to kickstart your day!</p>
    <button @click="displayRandomTask">Random Task</button>
    <div v-if="randomTask">
      <h3>{{ randomTask }}</h3>
    </div>
  </div>
  </div>
</template>

<script>

export default {
  data() {
    return {
      tasks: [
        { text: "Reach out to Local Companies" },
        { text: "Apply to 10-15 jobs per week" },
        { text: "Update all jobs on Huntr" },
        { text: "2-prong applications" },
        { text: "Connect with 5-7 people of interest within tech field/ organization of interest for a coffee chat" },
        { text: "Work with 2-3 recruiters" },
        { text: "Create a LinkedIn Post" },
        { text: "Work on Side Project" },
        { text: "Follow Up on 2-Prong Approaches" },
        { text: "Connect with a Tech Elevator Alumni" },
      ],
      randomTask: "",
    }
  },
  methods: {
    goToLinkedIn() {
      window.open('https://www.linkedin.com', '_blank');
    },
    displayRandomTask() {
      const randomIndex = Math.floor(Math.random() * this.tasks.length);
      this.randomTask = this.tasks[randomIndex].text;
    }
  }


};
</script>

<style>
body {
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
  background-color: #FAF3E0;
}

.home {
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

.clickable-image {
  display: flex;
  flex-direction: row;
  /* Align items horizontally */
  justify-content: center;
  /* Center items within the container */
  align-items: center;
  /* Align items vertically */
  gap: 20px;
  /* Space between images */
  flex-wrap: wrap;
  /* Wrap items on smaller screens */
}

.clickable-image a {
  display: flex;
  flex-direction: column;
  /* Stack image and button vertically */
  align-items: center;
  /* Center align items */
  text-decoration: none;
  /* Remove link underline */
}

.clickable-image img {
  width: 400px;
  /* Set appropriate width */
  height: auto;
  /* Maintain aspect ratio */
  border-radius: 10px;
  /* Optional: add rounded corners */
  transition: transform 0.3s ease;
  /* Smooth scaling effect */
}

.clickable-image img:hover {
  transform: scale(1.05);
  /* Slight zoom on hover */
}

button {
  margin-top: 10px;
  /* Space between image and button */
  padding: 10px 20px;
  /* Button padding */
  background-color: #6196cc;
  /* Button color */
  color: white;
  /* Button text color */
  border: none;
  /* Remove border */
  border-radius: 5px;
  /* Optional: rounded corners */
  cursor: pointer;
  /* Pointer cursor on hover */
  transition: background-color 0.3s ease;
  /* Smooth color change */
}

button:hover {
  background-color: #4157d1;
  /* Darker shade on hover */
}
</style>
