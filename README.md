# markbind-deploy-gh-pages

Configure your `main.yml` as follows

```yaml
name: MarkBind Deploy

on: [push]

jobs: 
  build_and_deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: Build & Deploy to GitHub Pages
        env: 
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          GITHUB_REPOSITORY: ${{ secrets.GITHUB_REPOSITORY }}
          GITHUB_ACTOR: ${{ secrets.GITHUB_ACTOR }}
          BASE_URL: # base URL to your gh-page
        uses: le0tan/markbind-deploy-gh-pages@master

```