**⚠️ Notice**
This project is no longer maintained - [read on #2](https://github.com/sujaykumarh/docsify-docker/issues/2)

---

# 📦 Docsify

A Simple [Docsify](https://github.com/docsifyjs/docsify) running env.

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/sujaykumarh/docsify-docker/build-docker)](https://github.com/sujaykumarh/docsify-docker/actions)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/sujaykumarh/docsify/latest)](https://hub.docker.com/r/sujaykumarh/docsify)
[![Docker Pulls](https://img.shields.io/docker/pulls/sujaykumarh/docsify)](https://hub.docker.com/r/sujaykumarh/docsify)

<!-- `:latest` docker image is built every week on SUNDAY @ UTC 23:41 hrs -->

<br>

## 📥 Download

**Docker Image**

[DockerHub](https://hub.docker.com/r/sujaykumarh/docsify)

```bash
docker pull sujaykumarh/docsify:latest
```

[GitHub Registry](https://github.com/users/sujaykumarh/packages/container/package/docsify)

```bash
docker pull ghcr.io/sujaykumarh/docsify:latest
```

<br>

## 🛠️ Usage

**Example setup**

Example [repo](https://github.com/sujaykumarh/docsify-docker-example.git)

```bash
git clone https://github.com/sujaykumarh/docsify-docker-example.git
```

<br>

### Using Docker Image

### setup

```bash
# initilize docs folder using docsify
docker run --rm -v docs:/docs ghcr.io/sujaykumarh/docsify init
```

### Run

``` bash
# using docker container
docker run --rm -v docs:/docs ghcr.io/sujaykumarh/docsify serve
```

### Optional Params

Optional parameters to pass to docsify

```bash

--livereload-port=PORT_HERE     livereload on PORT_HERE

```

<br>


## 📖 Resources

For more info on docsify

- Read docsify [documentation](https://docsify.js.org/#/?id=docsify)
- Find docsify source on [github](https://github.com/docsifyjs/docsify)

<br>

## 📄 License

[Apache License, Version 2.0](https://github.com/sujaykumarh/docsify-docker/blob/main/LICENSE) © 2021 [sujaykumarh](https://github.com/sujaykumarh)
