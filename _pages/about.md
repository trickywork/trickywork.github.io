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
      <p class="jun-kicker">Software Engineer · Backend Systems · Applied AI</p>
      <h1 id="jun-home-title">Jun Liu</h1>
      <p class="jun-role-line">Backend-leaning full-stack engineer building deployed, inspectable systems.</p>
      <p class="jun-lede">I am an M.S. Computer Engineering student at New York University. My project work spans Java/Spring Boot, React, Python, Go, SQL, Docker, and Google Cloud, with a focus on clean APIs, useful interfaces, and setup notes that make each demo easy to run and evaluate.</p>
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
        <p>Seeking full-time Software Engineer roles starting May 2026, with an emphasis on backend services, cloud deployment, and product-minded full-stack work.</p>
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
      <span>project packages linked from this site</span>
    </div>
    <div>
      <strong>6+</strong>
      <span>live demos hosted with low-cost cloud settings</span>
    </div>
    <div>
      <strong>CI</strong>
      <span>public repos include build checks and cleaner project history</span>
    </div>
    <div>
      <strong>Docs</strong>
      <span>README, Docker, database, and local setup notes stay close to code</span>
    </div>
  </section>

  <section class="jun-section-heading">
    <p class="jun-kicker">Selected Work</p>
    <h2>Live demos, source repos, and setup files in one place</h2>
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
      <p class="jun-kicker">Engineering Assets</p>
      <h2 id="jun-assets-title">What each project package is meant to show</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>Runnable code:</strong> each public repo is organized around local startup instructions and expected results.</p>
      <p><strong>Deployment:</strong> Dockerfiles, Cloud Build configs, Cloud Run notes, and cost controls are documented where they apply.</p>
      <p><strong>Local tooling:</strong> Postman collections live in my local Postman workspace, while public repos point to safe setup notes instead of publishing course-provided assets.</p>
    </div>
  </section>
</div>
