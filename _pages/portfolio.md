---
layout: splash
title: "Projects"
permalink: /portfolio/
---

{% include base_path %}

<div class="jun-portfolio">
  <section class="jun-portfolio-hero">
    <p class="jun-kicker">Project Index</p>
    <h1>Projects, demos, and source code</h1>
    <p class="jun-lede">This page collects the projects I have been working on recently. Each entry links to the live demo when available, the relevant GitHub repo, and the setup notes needed to run or review the project locally.</p>
  </section>

  <section class="jun-project-list" aria-label="Project list">
    {% for project in site.data.projects %}
      <article class="jun-project-wide">
        <div class="jun-project-wide-main">
          <div class="jun-project-meta">
            <span class="jun-status jun-status-{{ project.status_class }}">{{ project.status }}</span>
            <span>{{ project.footprint }}</span>
          </div>
          <h2>{{ project.title }}</h2>
          <p>{{ project.summary }}</p>
          <div class="jun-chip-row">
            {% for item in project.stack %}
              <span class="jun-chip">{{ item }}</span>
            {% endfor %}
          </div>
          <div class="jun-file-list" aria-label="{{ project.title }} files">
            {% for item in project.assets %}
              <span>{{ item }}</span>
            {% endfor %}
          </div>
          {% if project.domain and project.domain != "" %}
            <p class="jun-project-domain">{{ project.domain }}</p>
          {% endif %}
        </div>
        <div class="jun-project-links">
          {% if project.live_url and project.live_url != "" %}
            <a class="jun-button jun-button-primary" href="{{ project.live_url }}">Live demo</a>
          {% endif %}
          {% for repo in project.repos %}
            <a class="jun-button" href="{{ repo.url }}">{{ repo.label }}</a>
          {% endfor %}
        </div>
      </article>
    {% endfor %}
  </section>

  <section class="jun-assets-panel jun-assets-panel-compact">
    <div>
      <p class="jun-kicker">Local and Cloud Notes</p>
      <h2>How the projects are organized</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>Frontend/backend split:</strong> when a project has separate frontend and backend code, both repos are linked here.</p>
      <p><strong>Database-backed projects:</strong> schema files, seed data, and environment variables are documented in the corresponding repo.</p>
      <p><strong>Postman:</strong> API collections are kept in my local Postman workspace; public repos describe the endpoints without exposing private course materials.</p>
    </div>
  </section>
</div>
