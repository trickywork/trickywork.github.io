---
layout: splash
title: "Projects"
permalink: /portfolio/
---

{% include base_path %}

<div class="jun-portfolio">
  <section class="jun-portfolio-hero">
    <p class="jun-kicker">Project Index</p>
    <h1>Deployed demos, source repos, and setup files</h1>
    <p class="jun-lede">This page is the public map for my project work. Each entry points to the live demo when available, the relevant GitHub repo or split frontend/backend repos, and the configuration files that make the project reproducible locally.</p>
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
      <h2>How to read the project packages</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>Frontend/backend split:</strong> projects with separate surfaces link both repos so their setup and deployment paths stay clean.</p>
      <p><strong>Database-backed projects:</strong> schemas, seed data, and environment variables are listed in the repo README and checked-in setup files.</p>
      <p><strong>Postman:</strong> collections are installed in my local Postman workspace; public repos now point to safe usage notes instead of carrying Postman exports.</p>
    </div>
  </section>
</div>
