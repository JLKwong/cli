#!/usr/bin/env bats
load test-helper

@test "$clinom message slack apitoken" {
  run "${clicmd}" message slack apitoken
  assert_success
}

@test "$clinom message slack apitoken (create token)" {
  run "${clicmd}" config delete slack_token
  run "${clicmd}" message slack apitoken xoxp-fake-token
  assert_output --partial 'Your slack apitoken'
}

@test "$clinom message slack apitoken (create invalid token)" {
  run "${clicmd}" config delete slack_token
  run "${clicmd}" message slack apitoken fake-token
  assert_output --partial 'invalid token'
}

@test "$clinom message slack apitoken (no token)" {
  run "${clicmd}" config delete slack_token
  run "${clicmd}" message slack apitoken
  assert_output --partial 'api.slack.com/apps'
}

@test "$clinom message slack apitoken (with token)" {
  run "${clicmd}" message slack apitoken xoxp-fake-token
  run "${clicmd}" message slack apitoken
  assert_output --partial 'Your API access token is'
}

@test "$clinom message slack apitoken (after invalid token)" {
  run "${clicmd}" config delete slack_token
  run "${clicmd}" message slack apitoken fake-token
  run "${clicmd}" message slack apitoken
  assert_output --partial 'api.slack.com/apps'
}
