#!/bin/bash
owner=Rinorragi
repo=ci-security

# Check the fields you want from https://docs.github.com/en/graphql/reference/objects#branchprotectionrule
gh api graphql -f query="{
repository(owner:"$owner", name:"$repo") {
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
