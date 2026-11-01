# valet-sandbox

A throwaway repository for [Valet](https://github.com/xcwds/valet)'s end-to-end demo
([#22](https://github.com/xcwds/valet/issues/22)). AI agents work here through Valet, holding only
a per-job session token, never a GitHub credential.

What the demo shows:

- An **implementer** agent clones this repository, fixes [`src/greet.sh`](src/greet.sh) on its own
  branch (`agent/<job-id>/…`) and opens a pull request. A push to `main` is refused twice: by
  Valet's policy, and by GitHub's rulesets if the policy were bypassed.
- A **reviewer** agent comments on a pull request; its attempt to approve or merge it is denied,
  audited and alerted.
- Merging always needs a person: `main` requires a pull request approved by a code owner
  ([`.github/CODEOWNERS`](.github/CODEOWNERS)).

## Running the demo

On the machine running Valet (see [docs/deploy.md](https://github.com/xcwds/valet/blob/main/docs/deploy.md)),
from a checkout of this repository:

```sh
path/to/valet/deploy/devcontainer/new-job.sh implementer xcwds/valet-sandbox --ttl 2h
```

then **Reopen in Container** within ten minutes. The container enrolls, and git, HTTPS and MCP all
go through Valet.

Nothing here matters: branches and pull requests come and go.
