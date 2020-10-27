# github-tag-action


`git_add_tag.yml`

```yaml
name: GitTagAdd

on:
  workflow_dispatch:
    inputs:
      tag_version:
        description: 'tag_version'
        required: true
        default: 'v0.0.0'

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      - name: Github Tag Bump
        uses: naofumi-fujii/github-tag-action@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          TAG_VERSION: ${{ github.event.inputs.tag_version }}
```
