---
title: "CONTRIBUTING"
author: "Ellen Talbot"
date: "03/10/2019"
output: html_document
---

# Contributing to reportfactory

Contributions are welcomed by pull request from everybody.

# How to contribute

Third-party patches are essential for keeping recon great. We want to
keep it as easy as possible to contribute changes that get things
working in your environment. There are a few guidelines that we need
contributors to follow so that we can have a chance of keeping on top of
things.

## Getting Started

  - Make sure you have a [GitHub
    account](https://github.com/signup/free).
  - Submit an issue if one does not already exist.
      - Clearly describe the issue including steps to reproduce when it
        is a bug.
      - Make sure you fill in the earliest version that you know has the
        issue.
      - An issue is not necessary for trivial changes (see below)
  - Fork the repository on GitHub.

## Making Changes

  - Create a topic branch from where you want to base your work.
      - This is usually the master branch.
      - Only target release branches if you are certain your fix must be
        on that branch.
      - To quickly create a topic branch based on master, run `git
        checkout -b fix/master/my_contribution master`. Please avoid
        working directly on the `master` branch.
  - Make commits of logical and atomic units.
  - Check for unnecessary whitespace with `git diff --check` before
    committing.
  - Make sure your commit messages are in the proper format. If the
    commit addresses an issue, start the first line of the commit with
    the issue number in parentheses.
  - Make sure you have added the necessary tests for your changes.

## Making Trivial Changes

Trivial changes include but are not limited to: \* Spelling / grammar
fixes. \* Correcting typos like the transposition of letters in a
variable name. \* Cleaning up comments in the code. \* Changes to white
space or formatting. \* Patches that are purely deletions, such as
removal of duplicate information or code that never executes.

For changes of a trivial nature it is not always necessary to create a
new issue. In this case, it is appropriate to start the first line of a
commit with one of `(docs)`, `(maint)`, or `(packaging)` instead of an
issue number.

For commits that address trivial repository maintenance tasks or
packaging issues, start the first line of the commit with `(maint)` or
`(packaging)`, respectively.

## Submitting Changes

  - Push your changes to a topic branch in your fork of the repository.
  - Submit a pull request to the repository in the recon organization.
  - Update your issue and indicate that it is ready for review
  - The core team looks at Pull Requests on a regular basis
  - After feedback has been given we expect responses within two weeks.
    After two weeks we may close the pull request if it isn’t showing
    any activity.

## Revert Policy

By running tests in advance and by engaging with peer review for
prospective changes, your contributions have a high probability of
becoming long lived parts of the the project. After being merged, the
code will run through a series of testing pipelines on a large number of
operating system environments. These pipelines can reveal
incompatibilities that are difficult to detect in advance.

If the code change results in a test failure, we will make our best
effort to correct the error. If a fix cannot be determined and committed
within 24 hours of its discovery, the commit(s) responsible *may* be
reverted, at the discretion of the committer and maintainers. This
action would be taken to help maintain passing states in our testing
pipelines.

The original contributor will be notified of the revert. A reference to
the test(s) and operating system(s) that failed as a result of the code
change will also be noted. This test(s) should be used to check future
submissions of the code to ensure the issue has been resolved.

### Summary

  - Changes resulting in test pipeline failures will be reverted if they
    cannot be resolved within one business day.

## Additional Resources

  - [General GitHub documentation](https://help.github.com/)
  - [GitHub pull request
    documentation](https://help.github.com/articles/creating-a-pull-request/)
