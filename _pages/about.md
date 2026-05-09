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
      <p class="jun-kicker">Software Engineer · Backend Systems · Cloud Deployment</p>
      <h1 id="jun-home-title">I build portfolio-ready systems that actually run.</h1>
      <p class="jun-lede">I am Jun Liu, an M.S. Computer Engineering student at New York University. My work focuses on Java/Spring Boot, React, Python, Go, SQL, Docker, and Google Cloud, with an emphasis on clean APIs, useful interfaces, and deployment notes that make projects easy to inspect.</p>
      <div class="jun-hero-actions">
        <a class="jun-button jun-button-primary" href="/portfolio/">View projects</a>
        <a class="jun-button" href="/cv/">Read CV</a>
        <a class="jun-button" href="https://github.com/trickywork">GitHub</a>
      </div>
    </div>

    <aside class="jun-profile-panel" aria-label="Profile summary">
      <img src="/images/avatar.jpg" alt="Jun Liu">
      <div>
        <h2>Jun Liu</h2>
        <p>M.S. Computer Engineering, NYU. Seeking full-time Software Engineer roles starting May 2026.</p>
      </div>
      <ul class="jun-profile-facts">
        <li><span>Focus</span><strong>Backend, cloud, full-stack demos</strong></li>
        <li><span>Location</span><strong>Jersey City / New York</strong></li>
        <li><span>Current stack</span><strong>Spring Boot, React, Python, SQL, GCP</strong></li>
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
      <strong>API-first</strong>
      <span>README, Docker, database, and local setup notes kept close to code</span>
    </div>
  </section>

  <section class="jun-section-heading">
    <p class="jun-kicker">Selected Work</p>
    <h2>Projects with demos, source repos, and setup files</h2>
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
      <h2 id="jun-assets-title">What the project links are meant to prove</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>Runnable code:</strong> each public repo is organized around local startup instructions and expected results.</p>
      <p><strong>Deployment:</strong> Dockerfiles, Cloud Build configs, Cloud Run notes, and cost controls are documented where they apply.</p>
      <p><strong>Local tooling:</strong> Postman collections live in my local Postman workspace, while public repos point to safe setup notes instead of publishing course-provided assets.</p>
    </div>
  </section>
</div>
