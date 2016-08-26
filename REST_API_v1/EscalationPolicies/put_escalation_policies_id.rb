#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
ESCALATION_POLICY_ID = 'CHANGE_THIS'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/escalation_policies/" \
           "#{ESCALATION_POLICY_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = { name: 'New name' }

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
