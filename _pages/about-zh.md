---
layout: splash
permalink: /zh/
title:
excerpt: "软件工程作品集"
redirect_from:
  - /about-zh/
  - /about-zh.html
---

<div class="jun-home">
  <section class="jun-hero" aria-labelledby="jun-home-title-zh">
    <div class="jun-hero-copy">
      <p class="jun-kicker">Software Engineer · Backend · Cloud</p>
      <h1 id="jun-home-title-zh">Jun Liu</h1>
      <p class="jun-role-line">我主要做后端服务、全栈 Web 应用和云端部署相关的项目。</p>
      <p class="jun-lede">我目前在纽约大学读计算机工程硕士。近期项目主要使用 Java/Spring Boot、React、Python、Go、SQL、Docker 和 Google Cloud。我比较重视 API 设计、本地运行说明，以及能让人直接理解和测试的界面。</p>
      <div class="jun-hero-actions">
        <a class="jun-button jun-button-primary" href="/portfolio/">查看项目</a>
        <a class="jun-button" href="/cv/">查看 CV</a>
        <a class="jun-button" href="https://github.com/trickywork">GitHub</a>
      </div>
    </div>

    <aside class="jun-profile-panel" aria-label="个人简介">
      <img src="/images/avatar.jpg" alt="Jun Liu">
      <div>
        <h2>NYU Computer Engineering</h2>
        <p>我正在寻找 2026 年 5 月开始的全职软件工程师岗位，比较感兴趣的方向是后端工程、云基础设施和全栈产品开发。</p>
      </div>
      <ul class="jun-profile-facts">
        <li><span>当前地点</span><strong>Jersey City / New York</strong></li>
        <li><span>核心技术</span><strong>Spring Boot, React, Python, SQL, GCP</strong></li>
      </ul>
    </aside>
  </section>

  <section class="jun-proof-grid" aria-label="作品集概览">
    <div>
      <strong>8</strong>
      <span>个项目整理在这个网站上</span>
    </div>
    <div>
      <strong>6+</strong>
      <span>个在线演示可以直接打开查看</span>
    </div>
    <div>
      <strong>CI</strong>
      <span>公开 repo 已加入基本构建检查</span>
    </div>
    <div>
      <strong>Docs</strong>
      <span>本地运行和部署说明跟代码放在一起</span>
    </div>
  </section>

  <section class="jun-section-heading">
    <p class="jun-kicker">项目作品</p>
    <h2>项目演示、源码和部署说明</h2>
  </section>

  <section class="jun-project-grid" aria-label="项目演示和源码">
    {% for project in site.data.projects %}
      <article class="jun-project-card">
        <div class="jun-project-meta">
          <span class="jun-status jun-status-{{ project.status_class }}">{{ project.status_zh }}</span>
          <span>{{ project.footprint_zh }}</span>
        </div>
        <h3>{{ project.title_zh }}</h3>
        <p>{{ project.summary_zh }}</p>
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
            <a class="jun-button jun-button-primary" href="{{ project.live_url }}">打开演示</a>
          {% endif %}
          {% for repo in project.repos limit: 2 %}
            <a class="jun-button" href="{{ repo.url }}">{{ repo.label_zh }}</a>
          {% endfor %}
        </div>
      </article>
    {% endfor %}
  </section>

  <section class="jun-assets-panel" aria-labelledby="jun-assets-title-zh">
    <div>
      <p class="jun-kicker">项目说明</p>
      <h2 id="jun-assets-title-zh">我对这些 repo 的整理方式</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>本地运行：</strong>公开 repo 里保留了启动命令、环境变量和预期结果。</p>
      <p><strong>部署配置：</strong>用到 Docker、Cloud Build、Cloud Run 或数据库的项目，会在 README 里写清楚对应配置。</p>
      <p><strong>接口测试：</strong>Postman collection 保留在我的本地工作区，公开 repo 只写主要接口和使用方式。</p>
    </div>
  </section>
</div>
