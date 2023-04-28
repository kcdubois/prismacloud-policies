# Prisma Cloud policies
This repository serves as a collection of runtime and build-time checks to be used
with Prisma Cloud through the console UI. Some of the policies exist in both domains.

### Running Checkov checks standalone
```bash
checkov -d ./examples/terraform --external-checks-dir ./checkov
```


