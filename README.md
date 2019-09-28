# GitHub Actions for Yarn

> Look https://github.com/actions/npm for more details.

This Github Action is for [yarn](https://yarnpkg.com), and enables actions with the `yarn` command-line client.

## Usage

An example workflow to install, test and build:

```hcl
workflow "Install, Test, and Build" {
  on = "push"
  resolves = ["yarn.build"]
}

action "yarn.install" {
  uses = "minddocdev/actions-ci-yarn@master"
  args = "install"
}

action "yarn.test" {
  needs = "yarn.install"
  uses = "minddocdev/actions-ci-yarn@master"
  args = "test"
}

action "yarn.build" {
  needs = "yarn.test"
  uses = "minddocdev/actions-ci-yarn@master"
  args = "build"
}
```
