# CIBase

CIBase has a few base docker images which do nothing when executed. But they're a useful base for
running CI builds, as they ship commonly used binaries pre-installed. Check out the
`CHANGELOG.md` for a list of the software each image and tag includes.

If you just need NodeJS, use `node:*`. But if you need node, python 3.7, the aws cli, and kubectl...
maybe use this.

## Images

- `structural/cibase`: Very large image which includes a bunch of different utilities.
- `structural/cibase-tf`: Focused image designed for running cloud provisioning w/ terraform.

## Versioning

As always, you should avoid using `:latest`, and instead pin the exact version you expect to work
against. The rules we'll follow for versioning are as follows.

- The addition of new binaries and tools warrants a patch `0.0.x` semver upgrade.
- The update of one-or-more existing tools one-or-more patch versions warrants a patch `0.0.x` semver upgrade.
- The update of one-or-more existing tools one-or-more minor versions warrants a minor `0.x.0` semver upgrade.
- The removal of a binary or tool warrants a major `x.0.0` semver upgrade.
- The update of one-or-more existing tools one-or-more major versions warrants a major `x.0.0` semver upgrade.

A single upgrade may include more than one of these changes, which means the most substantial semver
upgrade will be applied.
