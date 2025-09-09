# Pack 59 Den 6

## Info

This is the GitHub repo that powers our [den website](https://pack59den6.org/).

Any changes to this repo will automatically be picked up by CI/CD and rolled into production.

## Tech Stack
* Python server called mkdocs
* Markdown files

## Making Edits
* Familiarize yourself with [markdown formatting](https://www.markdownguide.org/basic-syntax/)
* The files that make up the pages for each rank are located in `Pack59Den6/docs/` and named the `RankName.md` unless it is the current year's rank, then it is `index.md`
* Navigation is configured in `Pack59Den6/mkdocs.yml`
* Images for the badges go in `Pack59Den6/custom_theme/img/`
* everything is rendered with the template in `Pack59Den6/custom_theme/main.html`
* Styling of that index page is done with [PicoCSS](https://picocss.com/docs)
* The top of the file contains metadata:
```
---
welcometitle: <value for top heading>
welcometext: <value for paragraph in first card>
hidecalendar: <True or False if you want to hide calendar>
---
```

## Running locally
* Install and configure docker
* Download repo
* Run `./build.sh` from the root of this folder
* Visit `http://localhost:8000`