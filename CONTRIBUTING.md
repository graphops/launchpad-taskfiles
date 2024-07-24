# Contributing to *Launchpad Taskfiles*

Hello! :wave: and thank you for considering investing your time in contributing to Launchpad Taskfiles! As an open source project, it depends on a strong community to flourish, and we welcome any type of contribution (not just code) that aligns with our [Code of Conduct](/CODE_OF_CONDUCT.md).

Some of the ways to contribute:
- **Community:** by hanging with our community at ![Discord](https://avatars.githubusercontent.com/u/1965106?s=12&v=4) [Discord *(The Graph)*](https://discord.com/channels/438038660412342282/1029379955307585568), even if just to let us know you're using some of our *Taskfiles* we would appreciate to hear from you. We don't bite, promise!
- **Opening Issues:** by being a user and taking the time to report issues (or feature requests) you've ran into. Please see the [Opening Issues](/CONTRIBUTING.md#opening-issues) section below on how to do just that.
- **Code:** by channeling your skills and knowledge to craft valuable pull requests (PRs). We wholeheartedly welcome your contributions. Please see the [Contributing Code](/CONTRIBUTING.md#contributing-code) section below on how to do just that.

# Opening Issues

To ensure a consistent and efficient response to your issues, we have created two issue templates that will provide guidance and streamline the process. When creating a new issue in the repository, you will be presented with the option to choose from these templates. This approach aims to enhance clarity and facilitate the information gathering process for a faster resolution.

# Contributing Code

## Commit messages and pull requests

We follow [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

In brief, each commit message consists of a header, with optional body and footer:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

`<type>` must be one of the following:
- feat: A new feature
- fix: A bug fix
- docs: Documentation only changes
- style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- refactor: A code change that neither fixes a bug nor adds a feature
- perf: A code change that improves performance
- test: Adding missing tests
- chore: Changes to the build process or auxiliary tools and libraries such as documentation generation
- revert: If the commit reverts a previous commit, contains the header of the reverted commit.

Make sure to include an exclamation mark after the commit type and scope if there is a breaking change.

`<scope>` optional and could be anything that specifies the place of the commit change, e.g. solver, [filename], tests, lib, ... we are not very restrictive on the scope. The scope should just be lowercase and if possible contain of a single word.

`<description>` contains succinct description of the change with imperative, present tense. don't capitalize first letter, and no dot (.) at the end.

`<body>` include the motivation for the change, use the imperative, present tense

`<footer>` contain any information about Breaking Changes and reference GitHub issues that this commit closes

Commits in a pull request should be structured in such a way that each commit consists of a small logical step towards the overall goal of the pull request. Your pull request should make it as easy as possible for the reviewer to follow each change you made. For example, it is a good idea to separate simple mechanical changes like renaming a method that touches many files from logic changes. Your pull request should not be structured into commits according to how you implemented your feature, often indicated by commit messages like 'Fix problem' or 'Cleanup'. Flex a bit, and make the world think that you implemented your feature perfectly, in small logical steps, in one sitting without ever having to touch up something you did earlier in the pull request. (In reality, that means you'll use `git rebase -i` a lot).

Please do not merge the remote branch into yours as you develop your pull request; instead, rebase your branch on top of the latest remote if your pull request branch is long-lived.
