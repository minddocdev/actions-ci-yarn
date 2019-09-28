FROM node:12

LABEL version="1.0.0"
LABEL repository="https://github.com/minddocdev/actions-ci-yarn"
LABEL homepage="https://github.com/minddocdev/actions-ci-yarn"
LABEL maintainer="MindDoc Dev <development@minddoc.com >"

LABEL com.github.actions.name="GitHub Action for Yarn CLI"
LABEL com.github.actions.description="Wraps the yarn CLI."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="orange"

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
