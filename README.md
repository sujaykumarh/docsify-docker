# 📦 Docsify

A Simple [Docsify](https://github.com/docsifyjs/docsify) running env.

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/sujaykumarh/docsify-docker/build-docker)](https://github.com/Sujaykumarh/docsify-docker/actions)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/sujaykumarh/docsify/latest)](https://hub.docker.com/r/sujaykumarh/docsify)
[![Docker Pulls](https://img.shields.io/docker/pulls/sujaykumarh/docsify)](https://hub.docker.com/r/sujaykumarh/docsify)

### Table of contents

- 📥 [Download](#-download)

- 🛠️ [Usage](#%EF%B8%8F-usage)

- 📄 [License](#-license)

<br>

# 📥 Download

### Docker Image

- [DockerHub](https://hub.docker.com/r/sujaykumarh/docsify)

    ```bash
    docker pull sujaykumarh/docsify:latest
    ```

- [GitHub Registry](https://github.com/users/Sujaykumarh/packages/container/package/docsify)

    ```bash
    docker pull ghcr.io/sujaykumarh/docsify:latest
    ```

<br>

# 🛠️ Usage

### Example setup

```bash
git clone https://github.com/Sujaykumarh/docsify-docker-example.git
```

<br>

### Using Docker Image

### setup

```bash
# initilize docs folder using docsify
docker run --rm -v docs:/docs sujaykumarh/docsify init
```

### Run

``` bash
# using docker container
docker run --rm -v docs:/docs sujaykumarh/docsify serve
```

### Optional Params

Optional parameters to pass to docsify

```bash

--livereload-port=PORT_HERE     livereload on PORT_HERE

```

<br>


# 📖 Resources

For more info on docsify

- Read docsify [documentation](https://docsify.js.org/#/?id=docsify)
- Find docsify source on [github](https://github.com/docsifyjs/docsify)

<br>

# 📄 License

    Copyright (c) 2021 Sujaykumar.Hublikar <hello@sujaykumarh.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
