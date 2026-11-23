# Contributing to OpenAir KZ

Thank you for helping! Everyone is welcome. By participating you agree to follow
our [Code of Conduct](CODE_OF_CONDUCT.md).

## Report a bug or suggest a feature

1. Search existing [issues](../../issues) first.
2. Open a new issue and describe: what you did, what you expected, what happened,
   and your environment (OS, Docker version).

## Submit a pull request

1. Fork the repository and create a branch: `git checkout -b fix/short-description`.
2. Make your change; keep it small and focused.
3. Run the tests: `pip install -r requirements.txt && pytest`.
4. Update the documentation in `/docs` if behavior changes.
5. Commit with a clear message and open a pull request against `main`.
6. A maintainer will review it; please respond to review comments.

## Licensing of contributions

By submitting a contribution you agree that your code is licensed under the
Apache License 2.0 and that your documentation/data is licensed under CC BY 4.0.

## Local development

```bash
docker compose up --build        # full stack
# or
pip install -r requirements.txt
uvicorn app.main:app --reload    # uses SQLite when DATABASE_URL is not set
```

## Security issues

Do not open public issues for vulnerabilities. See [SECURITY.md](SECURITY.md).
