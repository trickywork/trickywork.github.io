---
layout: archive
title: "Portfolio"
permalink: /portfolio/
author_profile: true
---

{% include base_path %}

**OnlineOrder: A Spring Boot based online food ordering system**
* Architected an online food ordering system using Spring Boot, with clear separation of structure into controllers, services, repositories and utilizing dependency injection to enhance maintainability and scalability.
* Constructed the frontend using React and CRUD REST APIs controllers, encompassing functionalities such as registration, menu searching, ordering, and check out. Deployed on AWS for efficient deployment.
* Developed Spring Data JDBC with PostgreSQL database and hosted on AWS RDS, handling data related to menus, shopping carts and restaurant operations.

**SocialAI: An AI-Based social network**
* Implemented a social network platform using React, focusing on user-friendly design and seamless interaction. Utilized OpenAI’s Dall-E 3 to assist users in creating and update posts.
* Used scalable web service in Go to handle posts and ElasticSearch (Deployed to Google App Engine) to provide search functionalities for users to search recent posts.
* Improved the authentication using token-based registration/login/logout flow with React Router v4 and server-side user authentication with JWT.

**Next AI: Full-Stack Web-Based interactive AI Agent for PDF Document Queries**
* Architected an interactive conversational UI leveraging React and Ant Design, enabling users to effortlessly upload and interact with PDF documents in real-time.
* Architected and implemented RESTful APIs via Express and Node.js, optimized for high performance request handling.
* Integrated OpenAI’s GPT-3.5 Turbo API and LongChain technologies, achieving a sophisticated AI agent capable of document uploading, splitting, storage, retrieval, and output functionalities.

**Mini Spotify: Mobile Music Application**
* Designed a Kotlin Spotify app by fully leveraging Android Jetpack Library and Hilt Dependency Injection.
* Implemented the BottomBar & app Navigation using Jetpack Navigation component.
* Created RESTful APIs with json-server and used Retrofit to handle requests.
* Built the feed/album/favorite UI in Jetpack Compose following MVVM architecture and enabled the local cache ability for the favorite music feature by using Room Database.

{% for post in site.portfolio reversed %}
  {% include archive-single.html %}
{% endfor %}
