param(
  # Which domain to scan
  #  [Parameter(Mandatory = $true)]
  #  $domain,
  # Where to generate the report
  [Parameter()]
  [string]
  $fileName = "mdn.sarif.json"
)

$domain = "huuhka.net"
#$mozillaResultJson = mdn-http-observatory-scan $domain

$mozillaResultJson = @"
{
    "history": [
        {
            "id": 55650752,
            "scanned_at": "2025-01-06T12:09:17.911Z",
            "grade": "F",
            "score": 20
        }
    ],
    "scan": {
        "id": 55650752,
        "algorithm_version": 4,
        "scanned_at": "2025-01-06T12:09:17.911Z",
        "error": null,
        "grade": "F",
        "response_headers": {
            "date": "Mon, 06 Jan 2025 12:09:18 GMT",
            "etag": "W/\"7163-RBY8A4GyT5vK1TQZMfiBTkO3o1Q\"",
            "vary": "Accept-Encoding",
            "connection": "close",
            "content-type": "text/html; charset=utf-8",
            "x-powered-by": "Express",
            "cache-control": "public, max-age=600",
            "request-context": "appId=cid-v1:",
            "transfer-encoding": "chunked"
        },
        "score": 20,
        "status_code": 200,
        "tests_failed": 6,
        "tests_passed": 4,
        "tests_quantity": 10
    },
    "tests": {
        "content-security-policy": {
            "expectation": "csp-implemented-with-no-unsafe",
            "name": "content-security-policy",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/CSP",
            "title": "Content Security Policy (CSP)",
            "pass": false,
            "result": "csp-not-implemented",
            "score_description": "<p>\n      Content Security Policy (CSP) header not implemented\n      </p>",
            "recommendation": "<p>\n      Implement one, see <a href=\"/en-US/docs/Web/HTTP/CSP\">MDN's Content Security Policy (CSP) documentation</a>.\n      </p>",
            "score_modifier": -25,
            "data": null,
            "http": false,
            "meta": false,
            "policy": null,
            "num_policies": 0
        },
        "cookies": {
            "expectation": "cookies-secure-with-httponly-sessions",
            "name": "cookies",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/Cookies",
            "title": "Cookies",
            "pass": null,
            "result": "cookies-not-found",
            "score_description": "<p>\n      No cookies detected\n      </p>",
            "recommendation": "",
            "score_modifier": 0,
            "data": null,
            "same_site": false
        },
        "cross-origin-resource-sharing": {
            "expectation": "cross-origin-resource-sharing-not-implemented",
            "name": "cross-origin-resource-sharing",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/CORS",
            "title": "Cross Origin Resource Sharing (CORS)",
            "pass": true,
            "result": "cross-origin-resource-sharing-not-implemented",
            "score_description": "<p>\n      Content is not visible via cross-origin resource sharing (CORS) files or headers.\n      </p>",
            "recommendation": "",
            "score_modifier": 0,
            "data": null
        },
        "redirection": {
            "expectation": "redirection-to-https",
            "name": "redirection",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/TLS#http_redirections",
            "title": "Redirection",
            "pass": true,
            "result": "redirection-to-https",
            "score_description": "<p>\n      Initial redirection is to HTTPS on same host, final destination is HTTPS\n      </p>",
            "recommendation": "",
            "score_modifier": 0,
            "route": [
                "http://www.huuhka.net/",
                "https://www.huuhka.net/"
            ],
            "redirects": true,
            "status_code": 200,
            "destination": "https://www.huuhka.net/"
        },
        "referrer-policy": {
            "expectation": "referrer-policy-private",
            "name": "referrer-policy",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/Referrer_policy",
            "title": "Referrer Policy",
            "pass": false,
            "result": "referrer-policy-unsafe",
            "score_description": "<p>\n        <code>Referrer-Policy</code> header set unsafely to <code>origin</code>, <code>origin-when-cross-origin</code>, <code>unsafe-url</code> or <code>no-referrer-when-downgrade</code>.\n        </p>",
            "recommendation": "<p>\n      Set to strict-origin-when-cross-origin at a minimum\n      </p>",
            "score_modifier": -5,
            "data": "no-referrer-when-downgrade",
            "http": false,
            "meta": true
        },
        "strict-transport-security": {
            "expectation": "hsts-implemented-max-age-at-least-six-months",
            "name": "strict-transport-security",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/TLS#http_strict_transport_security_implementation",
            "title": "Strict Transport Security (HSTS)",
            "pass": false,
            "result": "hsts-not-implemented",
            "score_description": "<p>\n      <code>Strict-Transport-Security</code> header not implemented.\n      </p>",
            "recommendation": "<p>\n      Add HSTS. Consider rolling out with shorter periods first (as suggested on <a href=\"https://hstspreload.org/#deployment-recommendations\" target=\"_blank\" rel=\"noreferrer\" class=\"external\">https://hstspreload.org/</a>).\n      </p>",
            "score_modifier": -20,
            "data": null,
            "max_age": null,
            "preload": false,
            "preloaded": false,
            "include_sub_domains": false
        },
        "subresource-integrity": {
            "expectation": "sri-implemented-and-external-scripts-loaded-securely",
            "name": "subresource-integrity",
            "link": "/en-US/docs/Web/Security/Subresource_Integrity",
            "title": "Subresource Integrity",
            "pass": false,
            "result": "sri-not-implemented-but-external-scripts-loaded-securely",
            "score_description": "<p>\n      Subresource Integrity (SRI) not implemented, but all external scripts are loaded over HTTPS.\n      </p>",
            "recommendation": "<p>\n      Add SRI to external scripts.\n      </p>",
            "score_modifier": -5,
            "data": {
                "https://www.googletagmanager.com/gtag/js?id=UA-152228894-1": {
                    "integrity": null,
                    "crossorigin": null
                },
                "https://cdn.jsdelivr.net/ghost/portal@~2.37/umd/portal.min.js": {
                    "integrity": null,
                    "crossorigin": "anonymous"
                },
                "https://cdn.jsdelivr.net/ghost/sodo-search@~1.1/umd/sodo-search.min.js": {
                    "integrity": null,
                    "crossorigin": "anonymous"
                },
                "https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/components/prism-core.min.js": {
                    "integrity": "sha512-9khQRAUBYEJDCDVP2yw3LRUQvjJ0Pjx0EShmaQjcHa6AXiOv6qHQu9lCAIR8O+/D8FtaCoJ2c0Tf9Xo7hYH01Q==",
                    "crossorigin": "anonymous"
                },
                "https://cdnjs.cloudflare.com/ajax/libs/prism/1.29.0/plugins/autoloader/prism-autoloader.min.js": {
                    "integrity": "sha512-SkmBfuA2hqjzEVpmnMt/LINrjop3GKWqsuLSSB3e7iBmYK7JuWw4ldmmxwD9mdm2IRTTi0OxSAfEGvgEi0i2Kw==",
                    "crossorigin": "anonymous"
                }
            }
        },
        "x-content-type-options": {
            "expectation": "x-content-type-options-nosniff",
            "name": "x-content-type-options",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/MIME_types",
            "title": "X-Content-Type-Options",
            "pass": false,
            "result": "x-content-type-options-not-implemented",
            "score_description": "<p>\n      <code>X-Content-Type-Options</code> header not implemented.\n      </p>",
            "recommendation": "<p>\n      Set to <code>nosniff</code>.\n      </p>",
            "score_modifier": -5,
            "data": null
        },
        "x-frame-options": {
            "expectation": "x-frame-options-sameorigin-or-deny",
            "name": "x-frame-options",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/Clickjacking",
            "title": "X-Frame-Options",
            "pass": false,
            "result": "x-frame-options-not-implemented",
            "score_description": "<p>\n      <code>X-Frame-Options</code> (XFO) header not implemented.\n      </p>",
            "recommendation": "<p>\n      Implement frame-ancestors CSP.\n      </p>",
            "score_modifier": -20,
            "data": null
        },
        "cross-origin-resource-policy": {
            "expectation": "corp-implemented-with-same-site",
            "name": "cross-origin-resource-policy",
            "link": "/en-US/docs/Web/Security/Practical_implementation_guides/CORP",
            "title": "Cross Origin Resource Policy",
            "pass": null,
            "result": "corp-not-implemented",
            "score_description": "<p>\n      Cross Origin Resource Policy (CORP) is not implemented (defaults to <code>cross-origin</code>).\n      </p>",
            "recommendation": "",
            "score_modifier": 0,
            "data": null,
            "http": false,
            "meta": false
        }
    }
}
"@

# Convert JSON to PS Object
$mozillaTestResults =
$mozillaResultJson
| ConvertFrom-Json
| Select-Object -ExpandProperty tests

# Convert PSObject graph into array of custom objects
$testResults =
$mozillaTestResults
| Get-Member -MemberType NoteProperty
| Select-Object -ExpandProperty Name
| ForEach-Object {
  $test = $mozillaTestResults.$_
  [PSCustomObject]@{
    Pass        = $test.pass
    Name        = $test.title
    MessageText = $test.recommendation
    Score       = $test.score_modifier
    RuleId      = $test.result
    Description = $test.score_description
    Link        = $test.link
  }
}
| Where-Object { $_.Pass -eq $False } # Take only failing results (SARIF does not exactly support pass=true type of results)

$sarifResultJsonTemplate = @"
{
  "version": "2.1.0",
  "`$schema": "https://docs.oasis-open.org/sarif/sarif/v2.1.0/os/schemas/sarif-schema-2.1.0.json",
  "runs": [
    {
      "tool": {
        "driver": {
          "version": "1.0",
          "semanticVersion": "1.0.0",
          "name": "MDN-SARIF",
          "fullName": "Mozilla Observatory SARIF generator",
          "informationUri": "https://github.com/Rinorragi/ci-security/blob/main/scripts/mozilla-observatory-sarif-generator.ps1",
          "rules": []
        }
      },
      "results": []
    }
  ]
}
"@

$sarifResult = $sarifResultJsonTemplate | ConvertFrom-Json
$sarifPhysicalLocationTemplate = [PSCustomObject]@{
  physicalLocation = [PSCustomObject]@{
    artifactLocation = [PSCustomObject]@{
      uri = $domain
    }
    region           = [PSCustomObject]@{
      startLine   = 1
      startColumn = 1
      endLine     = 9999
      endColumn   = 9999
    }
  }
}

$null =
$testResults
| ForEach-Object {
  # Add to results
  $sarifResult.runs[0].results += [PSCustomObject]@{
    ruleId    = $_.RuleId | Out-String
    level     = "error"
    message   = [PSCustomObject]@{
      text = $_.MessageText | Out-String
    }
    locations = @($sarifPhysicalLocationTemplate)
  }
  # Add to tool rules
  $sarifResult.runs[0].tool.driver.rules += [PSCustomObject]@{
    id               = $_.RuleId | Out-String
    name             = $_.Name
    shortDescription = [PSCustomObject]@{
      text = $_.Description
    }
    fullDescription  = [PSCustomObject]@{
      text = "https://developer.mozilla.org" + $_.Link
    }
    help             = [PSCustomObject]@{
      text = $_.Description
    }
    properties       = [PSCustomObject]@{
      precision           = "very-high"
      severity            = "error"
      "security-severity" = "6"
    }
  }
}

$null =
$testResults
| ForEach-Object {

}

$null = $sarifResult | ConvertTo-Json -Depth 10 | Out-File $fileName



