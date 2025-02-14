# Check the fields you want from https://docs.github.com/en/graphql/reference/objects#branchprotectionrule
$query = @"
{
  repository(owner:"Rinorragi", name:"ci-security") {
    branchProtectionRules(first:100) {
      nodes {
        pattern,
        allowsDeletions,
        allowsForcePushes,
        blocksCreations,
        dismissesStaleReviews,
        lockBranch,
        requireLastPushApproval,
        requiredApprovingReviewCount,
        requiredDeploymentEnvironments,
        requiredStatusCheckContexts,
        requiresApprovingReviews,
        requiresCodeOwnerReviews,
        requiresCommitSignatures,
        requiresConversationResolution,
        requiresDeployments,
        requiresLinearHistory,
        requiresStatusChecks,
        requiresStrictStatusChecks,
        restrictsPushes,
        databaseId
      }
    }
  }
}
"@

gh api graphql -f query="$query"
