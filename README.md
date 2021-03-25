# export-env
This GitHub Action:
- Sets up the environment variables from the file into the GitHub's environment.
- Uses .env as the default filename

### Usage
The following example illustrates how to invoke export-env from within a GitHub workflow:
```yaml
name: Export ENV
on: [push]
jobs:
  export_env:
    runs-on: ubuntu-latest
    name: Testing the exported env
    steps:
      - name: Check Out Source Code
        uses: actions/checkout@v2
      - name: export env
        uses: krisalay/export-env@v1.0.0
        with:
          filename: .env
```

This example workflow demonstrates the use of the `krisalay/export-env` action to set up environment variables from the .env file into the GitHub workflow.

Following are the most common use cases for this GitHub Action:
- Use some data as environment variables while unit testing

### Additional Considerations
- In order to use export-env action, you will need to add data into the file in the `key=value` format.
- `key` should not have any space.
- file must exist in the root folder

### Inputs
`filename`
**Required** The filename which consists of the environment variables. It must exist in the root folder.
