Rust MUSL Builder Action
========================

GitHub action for building statically linked rust binaries (x86_64-unknown-linux-musl) Based on [emk/rust-musl-builder](https://github.com/emk/rust-musl-builder).

```yaml
- uses: aig787/rust-musl-builder@v1.0
  with:
    args: build --release --all-features
    credentials: ${{ secrets.GIT_CREDENTIALS }}
```
### Inputs
| Variable | Description | Required | Default |
|----------|-------------|----------|---------|
| args     | Arguments passed to cargo | true | `build --release` | 
| credentials | If provided git will be configured to use these credentials and https | false | |
| directory | Relative path under $GITHUB_WORKSPACE where Cargo project is located | false | |
