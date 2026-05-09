# junliu.dev Portfolio Site

Personal portfolio site for Jun Liu. The site is built from the Academic Pages/Minimal Mistakes Jekyll theme and customized to present project demos, GitHub repositories, and deployed Cloud Run applications.

## Live Site

- Primary domain: `https://junliu.dev`
- Portfolio page: `https://junliu.dev/portfolio`
- GitHub Pages repo: `https://github.com/trickywork/trickywork.github.io`
- Hosting: GitHub Pages
- DNS/CDN: Cloudflare

## Tech Stack

- Jekyll
- Ruby Bundler
- Academic Pages / Minimal Mistakes theme
- Markdown pages
- SCSS customization
- GitHub Pages
- Cloudflare DNS

## Recent Customization

The homepage and portfolio page were redesigned to make the projects more visible and less template-like. The custom layout styles live in:

```text
_sass/layout/_jun_portfolio.scss
```

Project links are maintained primarily in:

```text
_pages/about.md
_pages/about-zh.md
_pages/portfolio.md
_pages/portfolio.html
```

## Featured Project Links

Current Cloud Run-backed project demos:

| Project | Portfolio URL | Cloud Run Service |
| --- | --- | --- |
| NextAI | `https://nextai.junliu.dev` | `nextai` |
| Online Order | `https://onlineorder.junliu.dev` | `onlineorder` |
| SocialAI | `https://socialai.junliu.dev` | `socialai` |
| Spotify | `https://spotify.junliu.dev` | `spotify` and `spotify-api` |
| Twitch | `https://twitch.junliu.dev` | `twitch` and `twitch-api` |
| Crowd Tracking | `https://crowdtracking.junliu.dev` | `crowd-tracking` |

Some custom domains may show a certificate or DNS pending state until the Cloudflare CNAME records and Google-managed certificates finish provisioning.

## Local Development

Install Ruby dependencies:

```bash
bundle install
```

If system Ruby permissions cause problems, install gems locally:

```bash
bundle config set --local path 'vendor/bundle'
bundle install
```

Run the site:

```bash
bundle exec jekyll serve -l -H localhost
```

Open:

```text
http://localhost:4000
```

Expected result:

- Homepage loads with the redesigned project-first layout.
- Portfolio page shows project cards and live links.
- Markdown/SCSS edits rebuild automatically while the dev server is running.

## Build

```bash
bundle exec jekyll build
```

The generated site is written to:

```text
_site/
```

## Deployment

Deployment is handled by GitHub Pages from the `master` branch. Pushing changes to GitHub triggers the Pages build.

```bash
git status
git add <changed files>
git commit -m "Update portfolio site"
git push origin master
```

## DNS Notes

The root site uses Cloudflare for `junliu.dev`. Project subdomains point to Google Cloud Run domain mappings, usually with CNAME records like:

```text
Type: CNAME
Name: <project-subdomain>
Target: ghs.googlehosted.com
```

After DNS is added, Cloud Run provisions a Google-managed TLS certificate. This can take time.

## Expected Portfolio Behavior

A visitor should immediately see who the site belongs to, what projects are available, which demos are live, and where the code lives. Project cards should link either to the custom subdomain or the GitHub repo, depending on deployment status.

## Development Notes

There may be local generated or theme files in the working tree during development. Review `git status` before committing and stage only intentional content/design changes.
