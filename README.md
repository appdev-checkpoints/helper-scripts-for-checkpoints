# Helper scripts for checkpoints

## generate_commit_list.sh

Run this script from a checkpoints repository, like:

```bash
bulletin-board main % ./generate_commit_list.sh
```

And it will print to the terminal a list of the format:

- Commit message 1
  - link to commit diff
  - link to codebase at commit
- Commit message 2
  - link to commit diff
  - link to codebase at commit
- etc...

The commits are ordered from oldest at the top to most recent at the bottom

