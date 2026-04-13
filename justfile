[doc("List available commands")]
default:
    @just --list --unsorted

[doc("Run the development server")]
dev:
    uv run hugo server --disableFastRender --noHTTPCache

[doc("""
  Build the site

  Optional args are forwarded to `hugo build`, so CI can pass flags like:
    just build --baseURL "$BASE_URL" --cacheDir "$CACHE_DIR"
""")]
build *hugo_args:
    uv run hugo build --minify --gc {{ hugo_args }}
