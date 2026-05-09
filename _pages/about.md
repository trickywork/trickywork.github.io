---
layout: splash
permalink: /
title:
excerpt: "Software Engineer portfolio"
redirect_from:
  - /about/
  - /about.html
---

<div class="jun-home">
  <section class="jun-hero" aria-labelledby="jun-home-title">
    <div class="jun-hero-copy">
      <p class="jun-kicker">Software Engineer · Backend · Cloud</p>
      <h1 id="jun-home-title">Jun Liu</h1>
      <p class="jun-role-line">I work on backend services, full-stack web applications, and cloud deployment.</p>
      <p class="jun-lede">I am an M.S. Computer Engineering student at New York University. My recent projects use Java/Spring Boot, React, Python, Go, SQL, Docker, and Google Cloud. I care about clear APIs, reliable setup instructions, and interfaces that are easy to understand and test.</p>
      <div class="jun-hero-actions">
        <a class="jun-button jun-button-primary" href="/portfolio/">View projects</a>
        <a class="jun-button" href="/cv/">Read CV</a>
        <a class="jun-button" href="https://github.com/trickywork">GitHub</a>
      </div>
    </div>

    <aside class="jun-profile-panel" aria-label="Profile summary">
      <img src="/images/avatar.jpg" alt="Jun Liu">
      <div>
        <h2>NYU Computer Engineering</h2>
        <p>I am looking for full-time Software Engineer roles starting in May 2026, especially roles related to backend engineering, cloud infrastructure, and full-stack product development.</p>
      </div>
      <ul class="jun-profile-facts">
        <li><span>Current base</span><strong>Jersey City / New York</strong></li>
        <li><span>Core stack</span><strong>Spring Boot, React, Python, SQL, GCP</strong></li>
      </ul>
    </aside>
  </section>

  <section class="jun-proof-grid" aria-label="Portfolio highlights">
    <div>
      <strong>8</strong>
      <span>projects collected on this site</span>
    </div>
    <div>
      <strong>6+</strong>
      <span>live demos deployed for review</span>
    </div>
    <div>
      <strong>CI</strong>
      <span>basic build checks added to public repos</span>
    </div>
    <div>
      <strong>Docs</strong>
      <span>local setup and deployment notes kept with the code</span>
    </div>
  </section>

  <section class="jun-section-heading">
    <p class="jun-kicker">Selected Work</p>
    <h2>Projects, source code, and deployment notes</h2>
  </section>

  <section class="jun-project-grid" aria-label="Project demos and repositories">
    {% for project in site.data.projects %}
      <article class="jun-project-card">
        <div class="jun-project-meta">
          <span class="jun-status jun-status-{{ project.status_class }}">{{ project.status }}</span>
          <span>{{ project.footprint }}</span>
        </div>
        <h3>{{ project.title }}</h3>
        <p>{{ project.summary }}</p>
        <div class="jun-chip-row">
          {% for item in project.stack limit: 4 %}
            <span class="jun-chip">{{ item }}</span>
          {% endfor %}
        </div>
        <div class="jun-asset-strip">
          {% for item in project.assets limit: 4 %}
            <span>{{ item }}</span>
          {% endfor %}
        </div>
        {% if project.domain and project.domain != "" %}
          <p class="jun-project-domain">{{ project.domain }}</p>
        {% endif %}
        <div class="jun-card-actions">
          {% if project.live_url and project.live_url != "" %}
            <a class="jun-button jun-button-primary" href="{{ project.live_url }}">Open demo</a>
          {% endif %}
          {% for repo in project.repos limit: 2 %}
            <a class="jun-button" href="{{ repo.url }}">{{ repo.label }}</a>
          {% endfor %}
        </div>
      </article>
    {% endfor %}
  </section>

  <section class="jun-assets-panel" aria-labelledby="jun-assets-title">
    <div>
      <p class="jun-kicker">Project Notes</p>
      <h2 id="jun-assets-title">How I organized the repos</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>Local setup:</strong> the public repos include the commands and environment variables needed to run each project locally.</p>
      <p><strong>Deployment:</strong> Docker, Cloud Build, Cloud Run, and database notes are documented where they are used.</p>
      <p><strong>API testing:</strong> Postman collections are kept in my local workspace, while the repos describe the main endpoints and expected behavior.</p>
    </div>
  </section>
</div>
