---
layout: archive
title: "Projects"
permalink: /portfolio/
author_profile: true
---

{% include base_path %}

These projects are deployed as live portfolio demos and connected to this site. Frontend/backend repos are split when the project has separate surfaces.

| Project | Live Demo | Source |
| --- | --- | --- |
| NextAI | [nextai.junliu.dev](https://nextai.junliu.dev) | [GitHub](https://github.com/trickywork/NextAI) |
| Online Order | [onlineorder.junliu.dev](https://onlineorder.junliu.dev) | [Backend](https://github.com/trickywork/OnlineOrder_Backend), [Frontend](https://github.com/trickywork/OnlineOrder_Frontend) |
| SocialAI | [Live Demo](https://socialai-gb7rmueyna-uc.a.run.app) | [GitHub](https://github.com/trickywork/social-ai) |
| Spotify | [Live Demo](https://spotify-gb7rmueyna-uc.a.run.app) | [Backend](https://github.com/trickywork/Spotify_Backend), [Frontend](https://github.com/trickywork/Spotify_Frontend) |
| Twitch Explorer | [Live Demo](https://twitch-gb7rmueyna-uc.a.run.app) | [Backend](https://github.com/trickywork/Twitch_Backend), [Frontend](https://github.com/trickywork/Twitch_Frontend) |
| Netflix News | Deployment pending Cloud SQL | [GitHub](https://github.com/trickywork/NetflixNews-CS6083-FinalProject) |

**NextAI: Interactive AI Agent for PDF Document Queries**
* Built a React and Ant Design interface for uploading PDFs and asking contextual questions.
* Implemented a Node/Express API for document upload, parsing, and chat requests.
* Integrated OpenAI-powered retrieval workflows for document-grounded answers.

**Online Order: Spring Boot Online Food Ordering System**
* Built a restaurant menu, cart, and checkout flow with React and REST APIs.
* Implemented the backend with Spring Boot, Spring Security, Spring Data JDBC, and a demo H2 profile for low-cost Cloud Run deployment.
* Deployed the combined demo service to Google Cloud Run with a custom domain.

**SocialAI: AI-Based Social Network**
* Implemented a Go web service for signup, signin, post upload, post deletion, and keyword/user search.
* Added a demo in-memory backend so the portfolio deployment can run without paid Elasticsearch infrastructure.
* Deployed the app to Google Cloud Run as a low-cost interactive demo.

**Spotify: Music Browsing Demo**
* Built a static frontend for playlist browsing, track selection, and simulated playback controls.
* Implemented a Kotlin/Ktor backend with playlist, feed, and health endpoints.
* Deployed frontend and backend as separate Cloud Run services.

**Twitch Explorer: Personalized Twitch Resource Recommendation Demo**
* Built a React frontend for game discovery, resource search, and recommendations.
* Implemented a Spring Boot backend with demo-mode Twitch data and portable health endpoints.
* Deployed frontend and backend as separate Cloud Run services.

**Netflix News: News Management System**
* Built a Spring Boot and MySQL news management system with JWT login, registration, CRUD workflows, and reporting screens.
* Prepared Docker, Cloud Build, Postman, and database setup files.
* Cloud deployment is pending a managed MySQL or Cloud SQL decision.

{% for post in site.portfolio reversed %}
  {% include archive-single.html %}
{% endfor %}
