# Bitcamp2022
<br />
<p align="center">
  <a href="https://github.com/gerdinv/Sentry">
    <img src="https://cdn.discordapp.com/attachments/429515082075209739/830763886579679232/sentryLogo.png" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">Sentry</h3>

  <p align="center">
   Seek is an ios app dedicated to helping people find their perfect roommate.
    <br />
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
Seek is an IOS application meant to match a user with their perfect roommate! Users have the ability to indicate personal information like, 
Age, Gender, University, Graduation Year, and Lease Term Length Desired. Using these data points the application uses a machine learning
algorithm to cluster similar users into groups. From that point foward Seek will suggest the user to other users from their cluster. The User
Interface is set up in a way in which the user can view a potential roommates profile and swipe right if they want to interact with them or
swipe left if they do not want to. Once users are matched they can use Seeks messaging feature which allows matched users to communicate.
Seek also has a map feature which allows the user to browse through rentals in the area and view information about the property. They can give the
propety a "Like" which then shows other matched users that they liked the property.


<img src='https://i.gyazo.com/9a9d09705b089537b4d58e8740dfb962.png' title='Sreenshot' width='300' height='500' />
Video Demonstration: https://www.youtube.com/watch?v=u2s2qTndjDI&lc=UgxTympcvHMA5CmrHlJ4AaABAg&ab_channel=GerdinVentura


### Inspiration
Within our different friend groups we have always tried to figure out a way to live with some of our friends. This however has never worked out, someone always ends up not going through with the arrangement then everyone else gets left with options. With that being said, finding a reliable roommate has
always been a stressful task and we wanted to figure out a way to make the process simple. With Seek, people will no longer run into a situation where
someone backs out last second which take all of the stress away from finding a good roommate.

### What we learned:
* Technologies such as Geotechnologies and Courier
* How to connect a JS backend to a Swift application
* Collaborating on tasks help us get more work done

### Challenges:
* Connecting to the backend to the Swift application.
* Geodecoding map values to produce a valid readable street address



### Built With

This app was built primarily with Swift storyboard and we used Parse for the backend. We also created a separate JS server that made special requests using the Courier API to send text messages
* [Bootstrap](https://developer.apple.com/swift/)
* [JQuery](https://www.javascript.com/)



<!-- GETTING STARTED -->
## Getting Started

To get started, make sure you have the latest version of NodeJS installed. 

### Installation

1. Create an account at Twilio and link it to Courier. [https://docs.courier.com/docs/getting-started-twilio](https://docs.courier.com/docs/getting-started-twilio) 
2. Navigate to the JS directory and run ```npm install```
4. Create a .env file and paste your Courier Auth Token and Courier notification id.
   ```
    COURIER_AUTH_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    COURIER_NOTIFICATION_ID=xxxxxxxxxxxxxxxxxxxxxxxxxxxx 
    ```
3. Start the NodeJS server.
4. Navigate to the SwiftFiles directory and run ```pod install```
5. Open the HomeViewController file and replace the ip in the link with your IPV4 address
6. Run the program and enjoy using the app!


<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.


<!-- CONTACT -->
## Contact

Gerdin Ventura - [@linkedin](https://www.linkedin.com/in/gerdin-ventura-croussett-2b28081a3/) - gerdinventuraedu@gmail.com
<br />
Armando Taveras - [@linkedin](https://www.linkedin.com/in/armando-taveras-04731216a/) - armandogtaveras@gmail.com
<br />
Tony Che - [@linkedin](https://www.linkedin.com/in/tony-ch%C3%A9-b59624202/) - t_che@outlook.com

Project Link: [https://github.com/gerdinv/Sentry](https://github.com/gerdinv/Sentry)
