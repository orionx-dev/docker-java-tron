# JavaTron Image Builder

# Usage

First log in to the registry

```bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 658464581062.dkr.ecr.us-east-1.amazonaws.com
```
Run script with github released version as first argument

```bash
./build.sh ${VERSION}
```

Example

```bash
./build.sh GreatVoyage-v4.2.2.1
```

Image tag name would be 4.2.2.1