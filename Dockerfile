FROM squidfunk/mkdocs-material:9.5.34
RUN pip install mkdocs-git-revision-date-localized-plugin
RUN pip install mkdocs-meta-descriptions-plugin
