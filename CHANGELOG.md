> The list of software installed shouldn't be considered complete; its mostly just what is 
> explicitly installed and version controlled beyond the base image.

### `structural/cibase:1.4` (2019-10-01)

| Binary     | Change        | Version          | Description                          |
|------------|---------------|------------------|--------------------------------------|
| Base Image | -             | `alpine:3.10.2`  | -                                    |
| `aws`      | up (patch x9) | `1.16.249`       | AWS command line tools               |
| `cdk`      | -             | `1.8.0`          | AWS Cloud Development Kit            |
| `eksctl`   | -             | `0.5.3`          | AWS EKS tool                         |
| `git`      | -             | `2.22.0`         | VCS                                  |
| `helm`     | -             | `2.14.3`         | Kubernetes package manager           |
| `jq`       | -             | `v20190408-1671` | JSON command line processor          |
| `kubectl`  | -             | `1.16.0`         | Kubernetes CLI                       |
| `node`     | -             | `10.16.3`        | NodeJS                               |
| `npm`      | -             | `6.9.0`          | NodeJS package manager               |
| `pip3`     | -             | `19.0.3`         | Python 3 package manager             |
| `python`   | -             | `2.7.16`         | Python 2                             |
| `python3`  | -             | `3.7.3`          | Python 3                             |
| `sam`      | up (minor x1) | `0.22.0`         | AWS Serverless Application Model CLI |
| `ssh`      | add           | `8.0p1`          | SSH                                  |
| `yq`       | -             | `2.4.0`          | YAML command line processor          |

### `structural/cibase:1.3` (2019-10-01)

| Binary     | Change | Version          | Description                          |
|------------|--------|------------------|--------------------------------------|
| Base Image | -      | `alpine:3.10.2`  | -                                    |
| `aws`      | -      | `1.16.240`       | AWS command line tools               |
| `cdk`      | -      | `1.8.0`          | AWS Cloud Development Kit            |
| `eksctl`   | -      | `0.5.3`          | AWS EKS tool                         |
| `git`      | add    | `2.22.0`         | VCS                                  |
| `helm`     | -      | `2.14.3`         | Kubernetes package manager           |
| `jq`       | -      | `v20190408-1671` | JSON command line processor          |
| `kubectl`  | -      | `1.16.0`         | Kubernetes CLI                       |
| `node`     | -      | `10.16.3`        | NodeJS                               |
| `npm`      | -      | `6.9.0`          | NodeJS package manager               |
| `pip3`     | -      | `19.0.3`         | Python 3 package manager             |
| `python`   | -      | `2.7.16`         | Python 2                             |
| `python3`  | -      | `3.7.3`          | Python 3                             |
| `sam`      | -      | `0.21.0`         | AWS Serverless Application Model CLI |
| `yq`       | -      | `2.4.0`          | YAML command line processor          |

### `structural/cibase:1.2` (2019-09-18)

| Binary     | Change         | Version          | Description                          |
|------------|----------------|------------------|--------------------------------------|
| Base Image | up (patch x1)  | `alpine:3.10.2`  | -                                    |
| `aws`      | up (patch x43) | `1.16.240`       | AWS command line tools               |
| `cdk`      | up (minor x5)  | `1.8.0`          | AWS Cloud Development Kit            |
| `eksctl`   | add            | `0.5.3`          | AWS EKS tool                         |
| `helm`     | up (patch x1)  | `2.14.3`         | Kubernetes package manager           |
| `jq`       | -              | `v20190408-1671` | JSON command line processor          |
| `kubectl`  | up (minor x1)  | `1.16.0`         | Kubernetes CLI                       |
| `node`     | up (patch x3)  | `10.16.3`        | NodeJS                               |
| `npm`      | -              | `6.9.0`          | NodeJS package manager               |
| `pip3`     | -              | `19.0.3`         | Python 3 package manager             |
| `python`   | -              | `2.7.16`         | Python 2                             |
| `python3`  | -              | `3.7.3`          | Python 3                             |
| `sam`      | up (patch x3)  | `0.21.0`         | AWS Serverless Application Model CLI |
| `yq`       | -              | `2.4.0`          | YAML command line processor          |

- Added a multistage build. This reduced the `1.2` image size from 766MB to 697MB. Still big. Little better.

### `structural/cibase:1.1` (2019-08-06)

| Binary     | Change | Version          | Description                          |
|------------|--------|------------------|--------------------------------------|
| Base Image | -      | `alpine:3.10.1`  | -                                    |
| `aws`      | -      | `1.16.197`       | AWS command line tools               |
| `cdk`      | add    | `1.3.0`          | AWS Cloud Development Kit            |
| `helm`     | -      | `2.14.2`         | Kubernetes package manager           |
| `jq`       | -      | `v20190408-1671` | JSON command line processor          |
| `kubectl`  | -      | `1.15.0`         | Kubernetes CLI                       |
| `node`     | -      | `10.16.0`        | NodeJS                               |
| `npm`      | -      | `6.9.0`          | NodeJS package manager               |
| `pip3`     | -      | `19.0.3`         | Python 3 package manager             |
| `python`   | -      | `2.7.16`         | Python 2                             |
| `python3`  | -      | `3.7.3`          | Python 3                             |
| `sam`      | -      | `0.18.0`         | AWS Serverless Application Model CLI |
| `yq`       | -      | `2.4.0`          | YAML command line processor          |

### `structural/cibase:1.0` (2019-07-12)

| Binary     | Version          | Description                          |
|------------|------------------|--------------------------------------|
| Base Image | `alpine:3.10.1`  | -                                    |
| `aws`      | `1.16.197`       | AWS command line tools               |
| `helm`     | `2.14.2`         | Kubernetes package manager           |
| `jq`       | `v20190408-1671` | JSON command line processor          |
| `kubectl`  | `1.15.0`         | Kubernetes CLI                       |
| `node`     | `10.16.0`        | NodeJS                               |
| `npm`      | `6.9.0`          | NodeJS package manager               |
| `pip3`     | `19.0.3`         | Python 3 package manager             |
| `python`   | `2.7.16`         | Python 2                             |
| `python3`  | `3.7.3`          | Python 3                             |
| `sam`      | `0.18.0`         | AWS Serverless Application Model CLI |
| `yq`       | `2.4.0`          | YAML command line processor          |
