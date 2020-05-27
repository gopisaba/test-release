# Test Release

![Release](https://github.com/gopisaba/test-release/workflows/Release/badge.svg)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)

This Repository to test the ChangeLog and semver.
This is going to be a fix commit
BREAKING CHANGE in commit message

## Installation

```bash
npm install -g \
  auto-changelog \
  commitizen \
  semantic-release \
  semantic-release/changelog \
  semantic-release/git
```

## Commit analyzer

[Reference](https://github.com/semantic-release/commit-analyzer/blob/master/lib/default-release-rules.js)
[Reference](https://github.com/semantic-release/commit-analyzer#releaserules)
[Reference](https://www.conventionalcommits.org/en/v1.0.0/#summary)

| **keyword**  | **release** |
| :------: | :-----: |
| breaking |  major  |
|  revert  |  patch  |

| **type**  | **release** |
| :---: | :-----: |
| feat  |  minor  |
|  fix  |  patch  |
| perf  |  patch  |




Add line
