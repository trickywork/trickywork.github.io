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
      <p class="jun-kicker">Software Engineer · Backend Systems · Applied AI</p>
      <h1 id="jun-home-title-zh">Jun Liu</h1>
      <p class="jun-role-line">偏后端的全栈工程师，专注把项目做成可部署、可检查、可复现的系统。</p>
      <p class="jun-lede">我目前就读于纽约大学计算机工程硕士项目。项目主要围绕 Java/Spring Boot、React、Python、Go、SQL、Docker 和 Google Cloud，重点是清晰 API、可交互界面，以及方便复现的部署和本地配置说明。</p>
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
        <p>正在寻找 2026 年 5 月开始的全职软件工程师岗位，方向包括后端服务、云部署和有产品意识的全栈开发。</p>
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
      <span>个项目入口集中放在个人网站</span>
    </div>
    <div>
      <strong>6+</strong>
      <span>个在线演示使用低成本云端配置</span>
    </div>
    <div>
      <strong>CI</strong>
      <span>公开 repo 包含构建检查和更干净的项目历史</span>
    </div>
    <div>
      <strong>Docs</strong>
      <span>README、Docker、数据库和本地配置说明都跟代码对应</span>
    </div>
  </section>

  <section class="jun-section-heading">
    <p class="jun-kicker">项目作品</p>
    <h2>在线演示、源码和配置说明集中在一个入口</h2>
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
      <p class="jun-kicker">工程资产</p>
      <h2 id="jun-assets-title-zh">每个项目包主要展示什么</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>可运行代码：</strong>每个公开 repo 都保留本地启动方式和预期结果。</p>
      <p><strong>部署配置：</strong>需要的 Dockerfile、Cloud Build、Cloud Run 和价格控制说明会放在对应项目里。</p>
      <p><strong>本地工具：</strong>Postman collection 已经放进本机 Postman；网站和公开 repo 只展示安全的使用说明，不直接公开课程素材。</p>
    </div>
  </section>
</div>
