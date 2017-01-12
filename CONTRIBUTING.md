# Contributing Guide

Contributions are most welcome. Below is described procedure for contributing to
this repository.

* Fork this repository over GitHub
* Create a separate branch, for instance `patch-1` so you will not need to rebase
  your fork if your master branch is merged

  ```bash
  git clone git@github.com:your_username/docker-php
  cd docker-php
  git checkout -b patch-1
  ```
* Make changes, commit them and push to your fork

  ```bash
  git add .
  git commit -m "Fix bug"
  git push origin patch-1
  ```
* Open a pull request

## Style Guide

* This repository uses [Markdown](https://daringfireball.net/projects/markdown/)
  syntax and follows
  [cirosantilli/markdown-style-guide](http://www.cirosantilli.com/markdown-style-guide/)
  style guide.

## GitHub Issues Labels

Labels are used to organize issues and pull requests into manageable categories.
The following labels are used:

* **bug** - Attached when bug is reported.
* **duplicate** - Attached when the same issue or pull request already exists.
* **enhancement** - Attached when creating a new feature.
* **invalid** - Attached when the issue or pull request does not correspond with
  scope of the repository or because of some inconsistency.
* **question** - Attached for questions or discussions.
* **wontfix** - Attached when decided that issue will not be fixed.
