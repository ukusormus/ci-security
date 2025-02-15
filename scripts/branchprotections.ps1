# Check the fields you want from https://docs.github.com/en/graphql/reference/objects#repositoryruleset
$query = @"
query {
  repository(name:"ci-security", owner:"ukusormus") {
    rulesets(first: 100) {
      nodes {
        name
        target
        rules(first: 100) {
          nodes {
            type
          }
        }
      }
    }
  }
}
"@

gh api graphql -f query="$query"
