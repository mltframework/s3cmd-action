# GitHub Action: Run `s3cmd` With Arguments

This action simply runs [s3cmd](https://s3tools.org/) with all of the arguments supplied by you. See the s3cmd [usage](https://s3tools.org/usage)
for more information about the arguments.

## Example

### Upload One File

Use `>-` to pass a multi-line string. Put the file name in quotes to handle spaces.

```
uses: mltframework/s3cmd-action@v0
with:
  args: >-
    --access_key=${{ secrets.AWS_ACCESS_KEY }}
    --secret_key=${{ secrets.AWS_SECRET_KEY }}
    --acl-public
    --stop-on-error
    put
    "local file"
    s3://bucket/prefix/
```
