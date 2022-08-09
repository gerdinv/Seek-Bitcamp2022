# Bitcamp2022
<br />
<p align="center">
  <a href="https://github.com/gerdinv/Bitcamp2022">
    <img src="https://media.discordapp.net/attachments/962139011621720134/962710232528736286/seek_logo.png" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">Seek</h3>

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
## Inspiration
As we approach the end of the school year,  UMD students must start thinking about housing and roommates for the following year.  With that being said, finding a reliable roommate has always been a stressful task and we wanted to figure out a way to make the process simple. With Seek, you can find an apartment that suits your needs and roommates that you won't regret!

## What it does
Seek is an IOS application meant to match a user with their perfect roommate! Users have the ability to indicate personal information like Age, Gender, University, Graduation Year, and Lease Term Length Desired. Using these data points the application uses a machine learning algorithm to cluster similar users into groups. From that point forward, Seek will suggest the user to other users from their cluster. The User Interface is set up in a way in which the user can view a potential roommate's profile and swipe right if they want to interact with them or swipe left if they do not want to. Once users are matched they can use Seeks messaging feature which allows matched users to communicate. Seek also has a map feature that allows the user to browse through rentals in the area and view information about the property. They can give the property a "Like" which then shows other matched users that they liked the property.

## How we built it
Mobile: 
- Used SwiftUI to create iOS app
- Integrated UIKit for further animations and design of the app
- Created a chat messaging feature from scratch so prospective roommates can message each other

Backend:
- Utilized CockroackDB Serverless to store users and their info
- Trained machine learning model for recommending roommates with Scikit-learn 
- Used Seaborn, Pandas, Numpy to cluster and sort data from the model and visualize data
- Hosted cluster using Google Cloud services
- Used Python and FastAPI to handle GET and POST requests to database

## Challenges we ran into
It seemed like there were no challenges we DIDN'T run into.
- Getting CockroachDB Serverless to work was simple, but hosting it proved to be incredibly difficult. We hosted our clusters on Google Cloud which took an extremely long time to get working with CockroachDB. 
- CockroachDB Serverless seems to be a newer service so there was a multitude of inconsistencies in documentation we had to tread through. 
- Lots of path/environment variables problems when attempting to host our server on Google Cloud with 
CockroachDB serverless. 
- Missing dependencies or not the same versions of libraries when trying to get our software working on
teammates' computers.

## Accomplishments that we're proud of
- Our dope logo
- Getting CockroachDB Serverless working (took most of our weekend)
- Training and implementing a successful recommender model
- Implementing a wide variety of features in one weekend

## What we learned
- Designing apps with SwiftUI
- Communication between technologies with each other using requests and FastAPI
- How to train a ML model properly and avoid overfitting


## What's next for Seek
- Better UI, more fluid animations and design
- Add many more filters for housing and what kind of roommates you are looking for
- Complete a the messaging system



<!-- GETTING STARTED -->
## Getting Started

To get started, make sure you have the latest version of NodeJS installed. 

### Installation

1. Clone the repository
2. Run ```pod install``` in the cloned directory
3. Navigate to the 'backend' directory and run ```pip3 install```
4. Run ```python3 seak-api.py``` to start the server.
5. Open the 'seek.xcworkspace' file and run the app!
   ```

    ```
<!-- USAGE EXAMPLES -->
## Usage
<img src="http://g.recordit.co/aeYUcklWlZ.gif" width=250><br>
Video Demonstration: https://www.youtube.com/watch?v=q0KW5OaI_iQ


<!-- CONTACT -->
## Contact

Gerdin Ventura - [@linkedin](https://www.linkedin.com/in/gerdin-ventura-croussett-2b28081a3/) - gerdinventuraedu@gmail.com
<br />
Armando Taveras - [@linkedin](https://www.linkedin.com/in/armando-taveras-04731216a/) - armandogtaveras@gmail.com
Timothy Lee - [@linkedin](https://www.linkedin.com/in/timothy-lee-99097b1b6) - timothy.aram.lee@gmail.com
Dalton Pang - [@linkedin](https://www.linkedin.com/in/dalton-pang/) - dspangp@gmail.com

Sathwik Yanamaddi - [@linkedin](https://www.linkedin.com/in/sathwikyanamaddi/) - sathwik45@gmail.com
<br />


