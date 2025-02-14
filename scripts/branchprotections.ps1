# Check the fields you want from https://docs.github.com/en/graphql/reference/objects#branchprotectionrule
$query = @"
{repository(owner:"Rinorragi", name:"ci-security") {
branchProtectionRules(first:100){
  nodes{
    pattern,
    allowsDeletions,
    allowsForcePushes,
    blocksCreations,
    lockBranch,
    pushAllowances,
    requiredApprovingReviewCount,
    requiresApprovingReviews,
    requiresConversationResolution,
    restrictsPushes,
    databaseId,
    creator}
}}}
"@

gh api graphql -f query="$query"
