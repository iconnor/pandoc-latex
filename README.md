# Pandox and latex Docker project

This project is a docker image for pandoc and latex.

## Usage

```bash
docker run --rm -v $(pwd):/usr/app iconnor/pandox-latex:latest ./convert.sh
```

## Build

```bash
docker build -t iconnor/pandox-latex:latest .
```

## License
MIT License
(c) 2023 Ian Connor
