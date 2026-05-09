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
      <p class="jun-kicker">Software Engineer · Backend Systems · Cloud Deployment</p>
      <h1 id="jun-home-title-zh">我做的是能真正跑起来的工程项目。</h1>
      <p class="jun-lede">我是 Jun Liu，目前就读于纽约大学计算机工程硕士项目。我的项目主要围绕 Java/Spring Boot、React、Python、Go、SQL、Docker 和 Google Cloud，重点是清晰 API、可交互界面，以及方便复现的部署和本地配置说明。</p>
      <div class="jun-hero-actions">
        <a class="jun-button jun-button-primary" href="/portfolio/">查看项目</a>
        <a class="jun-button" href="/cv/">查看 CV</a>
        <a class="jun-button" href="https://github.com/trickywork">GitHub</a>
      </div>
    </div>

    <aside class="jun-profile-panel" aria-label="个人简介">
      <img src="/images/avatar.jpg" alt="Jun Liu">
      <div>
        <h2>Jun Liu</h2>
        <p>纽约大学计算机工程硕士。正在寻找 2026 年 5 月开始的全职软件工程师岗位。</p>
      </div>
      <ul class="jun-profile-facts">
        <li><span>方向</span><strong>后端、云部署、全栈演示项目</strong></li>
        <li><span>地点</span><strong>Jersey City / New York</strong></li>
        <li><span>技术栈</span><strong>Spring Boot, React, Python, SQL, GCP</strong></li>
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
      <strong>API-first</strong>
      <span>README、Docker、数据库和本地配置说明都跟代码对应</span>
    </div>
  </section>

  <section class="jun-section-heading">
    <p class="jun-kicker">项目作品</p>
    <h2>每个项目都包含演示入口、源码和配置文件说明</h2>
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
      <h2 id="jun-assets-title-zh">这些项目链接主要展示什么</h2>
    </div>
    <div class="jun-assets-list">
      <p><strong>可运行代码：</strong>每个公开 repo 都保留本地启动方式和预期结果。</p>
      <p><strong>部署配置：</strong>需要的 Dockerfile、Cloud Build、Cloud Run 和价格控制说明会放在对应项目里。</p>
      <p><strong>本地工具：</strong>Postman collection 已经放进本机 Postman；网站和公开 repo 只展示安全的使用说明，不直接公开课程素材。</p>
    </div>
  </section>
</div>
