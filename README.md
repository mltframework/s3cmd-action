![.github/workflows/test.yml](https://github.com/mltframework/s3cmd-action/workflows/.github/workflows/test.yml/badge.svg)

# GitHub Action: Run `s3cmd` With Arguments

This action simply runs [s3cmd](https://s3tools.org/) with all of the arguments supplied by you. See the s3cmd [usage](https://s3tools.org/usage)
for more information about the arguments.

## Example

### Upload One File

Use `>-` to pass a multi-line string.

```
uses: mltframework/s3cmd-action@v0
with:
  args: >-
    --access_key=${{ secrets.AWS_ACCESS_KEY }}
    --secret_key=${{ secrets.AWS_SECRET_KEY }}
    --acl-public
    --stop-on-error
    put
    local-file
    s3://bucket/prefix/
```

### Upload Multiple Files By Wildcard

```
uses: mltframework/s3cmd-action@v0
with:
  args: >-
    --access_key=${{ secrets.AWS_ACCESS_KEY }}
    --secret_key=${{ secrets.AWS_SECRET_KEY }}
    --acl-public
    --stop-on-error
    put
    /tmp/*.zip
    s3://bucket/prefix/
```
