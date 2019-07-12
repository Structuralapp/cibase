# CIBase

CIBase is a base docker image which does nothing when executed. But its a useful base for
running CI builds, as it ships a wide range of binaries pre-installed. Check out the
`CHANGELOG.md` for a list of the software each tagged version includes.

If you just need NodeJS, use `node:*`. But if you need node, python 3.7, the aws cli, and kubectl...
maybe use this.

## Usage

```dockerfile
FROM structural/cibase:1.0

# Write the rest of your thing
```
