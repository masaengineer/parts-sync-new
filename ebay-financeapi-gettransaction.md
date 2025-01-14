# endpoint
https://apiz.ebay.com/sell/finances/v1/transaction

# Response Headers
rlogid:t6sd%7Fhvqgwj5ehmq%3C%3Dsd%7Fhvqgwj5ehmq%2B2%60032%3A%3C%6004%28qd%60b0-19454f94f66-0x2364
x-ebay-request-id:19454f94-f690-ad9a-f710-df43ffd9cbb3!Ginger.v1.transaction.GET!payoutapi0cont-5c55599f77-wccg6!r1payoutapi0cont[]
x-content-type-options:nosniff
x-xss-protection:0
cache-control:no-cache, no-store, max-age=0, must-revalidate
pragma:no-cache
expires:0
x-frame-options:DENY
content-type:application/json
date:Sat, 11 Jan 2025 10:46:53 GMT
x-envoy-upstream-service-time:1430
x-ebay-mesh-server-pod-ip:10.217.175.113
x-ebay-mesh-server-duration:1418
x-ebay-mesh-server-start:2025-01-11T10:46:52.518Z
x-ebay-mesh-server-response-flag:-
server:ebay-proxy-server
x-ebay-mesh-gw-name:istioingressgateway-rnpci-lvsaz04-04
x-ebay-mesh-gw-pod-name:istio-ingressgateway-04-5f7d9dd6c8-kzmjd
x-ebay-mesh-gw-pod-ip:10.43.15.100
x-ebay-mesh-gw-upstream-duration:1419
x-ebay-mesh-gw-duration:1419
x-ebay-mesh-gw-start:2025-01-11T10:46:52.517Z
x-ebay-mesh-gw-response-flag:-
x-ebay-pop-id:SLBLVSAZ02RNPCI
transfer-encoding:chunked

# Response Body
{
  "href": "https://apiz.ebay.com/sell/finances/v1/transaction?limit=20&offset=0",
  "next": "https://apiz.ebay.com/sell/finances/v1/transaction?limit=20&offset=20",
  "limit": 20,
  "offset": 0,
  "transactions": [
    {
      "transactionId": "FEE-6274994611516_11",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "4.85",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-09-17T12:52:12.625Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "355789037190",
          "referenceType": "ITEM_ID"
        },
        {
          "referenceId": "04-12087-72462",
          "referenceType": "ORDER_ID"
        }
      ],
      "feeType": "AD_FEE"
    },
    {
      "transactionId": "04-12087-72462",
      "orderId": "04-12087-72462",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "buyer": {
        "username": "co_jpjj_q7fmrbduw"
      },
      "transactionType": "SALE",
      "amount": {
        "value": "189.29",
        "currency": "USD"
      },
      "totalFeeBasisAmount": {
        "value": "220.54",
        "currency": "USD"
      },
      "totalFeeAmount": {
        "value": "31.25",
        "currency": "USD"
      },
      "orderLineItems": [
        {
          "lineItemId": "10066771120704",
          "feeBasisAmount": {
            "value": "220.54",
            "currency": "USD"
          },
          "marketplaceFees": [
            {
              "feeType": "FINAL_VALUE_FEE_FIXED_PER_ORDER",
              "amount": {
                "value": "0.44",
                "currency": "USD"
              }
            },
            {
              "feeType": "FINAL_VALUE_FEE",
              "amount": {
                "value": "27.53",
                "currency": "USD"
              }
            },
            {
              "feeType": "INTERNATIONAL_FEE",
              "amount": {
                "value": "3.28",
                "currency": "USD"
              },
              "feeMemo": "Charged because the delivery address is in United States. Final amount: $220.54."
            }
          ]
        }
      ],
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-09-17T12:48:08.764Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc."
    },
    {
      "transactionId": "18107298644",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "TRANSFER",
      "amount": {
        "value": "56.33",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-09-03T23:49:44.000Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "TRANSFER_FROM"
    },
    {
      "transactionId": "FEE-6244683388416_11",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "56.33",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-09-03T03:47:01.717Z",
      "transactionStatus": "PAYOUT",
      "feeType": "STORE_SUBSCRIPTION_EARLY_TERMINATION_FEE"
    },
    {
      "transactionId": "18089504732",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "TRANSFER",
      "amount": {
        "value": "24.14",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-09-02T02:42:37.000Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "TRANSFER_FROM"
    },
    {
      "transactionId": "INVOICE-6241237787216_11",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "24.14",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-09-01T16:39:13.543Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "2024-08-31 - 2024-09-29",
      "feeType": "OTHER_FEES"
    },
    {
      "transactionId": "17842886516",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "TRANSFER",
      "amount": {
        "value": "20.73",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-08-08T21:07:12.000Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "TRANSFER_FROM"
    },
    {
      "transactionId": "INVOICE-6176859676216_11",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "24.14",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-08-01T16:38:40.798Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "2024-07-31 - 2024-08-30",
      "feeType": "OTHER_FEES"
    },
    {
      "transactionId": "FEE-5341241417-e91286c3-2016-49a8-b15f-e8dae1fc54ec_42",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "3.41",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-31T01:34:54.316Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "355590381927",
          "referenceType": "ITEM_ID"
        },
        {
          "referenceId": "12-11784-92982",
          "referenceType": "ORDER_ID"
        }
      ],
      "feeType": "AD_FEE"
    },
    {
      "transactionId": "DISPUTE_HOLD_REVERSE-6361163698-6123778643",
      "orderId": "12-11784-92982",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "buyer": {
        "username": "sable-4976"
      },
      "transactionType": "CREDIT",
      "amount": {
        "value": "143.98",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-31T01:33:22.188Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "5341241417",
          "referenceType": "CASE_ID"
        }
      ]
    },
    {
      "transactionId": "RRP-6362487660-CCM_CHARGE",
      "orderId": "12-11784-92982",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "buyer": {
        "username": "sable-4976"
      },
      "transactionType": "REFUND",
      "amount": {
        "value": "122.31",
        "currency": "USD"
      },
      "totalFeeBasisAmount": {
        "value": "143.98",
        "currency": "USD"
      },
      "totalFeeAmount": {
        "value": "21.67",
        "currency": "USD"
      },
      "orderLineItems": [
        {
          "lineItemId": "10064504641912",
          "feeBasisAmount": {
            "value": "155.14",
            "currency": "USD"
          },
          "marketplaceFees": [
            {
              "feeType": "INTERNATIONAL_FEE",
              "amount": {
                "value": "2.3",
                "currency": "USD"
              }
            },
            {
              "feeType": "FINAL_VALUE_FEE",
              "amount": {
                "value": "19.37",
                "currency": "USD"
              }
            }
          ]
        }
      ],
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-07-31T01:28:16.806Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "5341241417",
          "referenceType": "CASE_ID"
        }
      ]
    },
    {
      "transactionId": "REFUND_CHARGE-6362487660",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "transactionType": "TRANSFER",
      "amount": {
        "value": "122.31",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-31T01:28:16.406Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "TRANSFER_FROM"
    },
    {
      "transactionId": "DISPUTE_HOLD-6361163698",
      "orderId": "12-11784-92982",
      "payoutId": "6556787780",
      "salesRecordReference": "0",
      "buyer": {
        "username": "sable-4976"
      },
      "transactionType": "DISPUTE",
      "amount": {
        "value": "143.98",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-07-28T01:37:13.303Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "5341241417",
          "referenceType": "CASE_ID"
        }
      ]
    },
    {
      "transactionId": "FEE-6146562755416_11",
      "payoutId": "6462466844",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "1.64",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-07-17T20:18:14.084Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "355590382026",
          "referenceType": "ITEM_ID"
        },
        {
          "referenceId": "23-11818-70220",
          "referenceType": "ORDER_ID"
        }
      ],
      "feeType": "AD_FEE"
    },
    {
      "transactionId": "23-11818-70220",
      "orderId": "23-11818-70220",
      "payoutId": "6462466844",
      "salesRecordReference": "0",
      "buyer": {
        "username": "sly17v6"
      },
      "transactionType": "SALE",
      "amount": {
        "value": "58.91",
        "currency": "USD"
      },
      "totalFeeBasisAmount": {
        "value": "69.73",
        "currency": "USD"
      },
      "totalFeeAmount": {
        "value": "10.82",
        "currency": "USD"
      },
      "orderLineItems": [
        {
          "lineItemId": "10065005456123",
          "feeBasisAmount": {
            "value": "74.35",
            "currency": "USD"
          },
          "marketplaceFees": [
            {
              "feeType": "FINAL_VALUE_FEE_FIXED_PER_ORDER",
              "amount": {
                "value": "0.44",
                "currency": "USD"
              }
            },
            {
              "feeType": "FINAL_VALUE_FEE",
              "amount": {
                "value": "9.28",
                "currency": "USD"
              }
            },
            {
              "feeType": "INTERNATIONAL_FEE",
              "amount": {
                "value": "1.1",
                "currency": "USD"
              },
              "feeMemo": "Charged because the delivery address is in United States. Final amount: $74.35."
            }
          ]
        }
      ],
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-17T20:12:57.892Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "ebayCollectedTaxAmount": {
        "value": "4.62",
        "currency": "USD"
      }
    },
    {
      "transactionId": "FEE-6123843826816_11",
      "payoutId": "6438267884",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "3.41",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-07-06T23:16:40.007Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "355590381927",
          "referenceType": "ITEM_ID"
        },
        {
          "referenceId": "12-11784-92982",
          "referenceType": "ORDER_ID"
        }
      ],
      "feeType": "AD_FEE"
    },
    {
      "transactionId": "12-11784-92982",
      "orderId": "12-11784-92982",
      "payoutId": "6438267884",
      "salesRecordReference": "0",
      "buyer": {
        "username": "sable-4976"
      },
      "transactionType": "SALE",
      "amount": {
        "value": "121.87",
        "currency": "USD"
      },
      "totalFeeBasisAmount": {
        "value": "143.98",
        "currency": "USD"
      },
      "totalFeeAmount": {
        "value": "22.11",
        "currency": "USD"
      },
      "orderLineItems": [
        {
          "lineItemId": "10064504641912",
          "feeBasisAmount": {
            "value": "155.14",
            "currency": "USD"
          },
          "marketplaceFees": [
            {
              "feeType": "FINAL_VALUE_FEE_FIXED_PER_ORDER",
              "amount": {
                "value": "0.44",
                "currency": "USD"
              }
            },
            {
              "feeType": "FINAL_VALUE_FEE",
              "amount": {
                "value": "19.37",
                "currency": "USD"
              }
            },
            {
              "feeType": "INTERNATIONAL_FEE",
              "amount": {
                "value": "2.3",
                "currency": "USD"
              },
              "feeMemo": "Charged because the delivery address is in United States. Final amount: $155.14."
            }
          ]
        }
      ],
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-06T23:13:02.523Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "ebayCollectedTaxAmount": {
        "value": "11.16",
        "currency": "USD"
      }
    },
    {
      "transactionId": "FEE-6117344904716_11",
      "payoutId": "6438267884",
      "salesRecordReference": "0",
      "transactionType": "NON_SALE_CHARGE",
      "amount": {
        "value": "3.17",
        "currency": "USD"
      },
      "bookingEntry": "DEBIT",
      "transactionDate": "2024-07-03T17:52:08.823Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc.",
      "references": [
        {
          "referenceId": "355590381927",
          "referenceType": "ITEM_ID"
        },
        {
          "referenceId": "05-11779-76870",
          "referenceType": "ORDER_ID"
        }
      ],
      "feeType": "AD_FEE"
    },
    {
      "transactionId": "05-11779-76870",
      "orderId": "05-11779-76870",
      "payoutId": "6438267884",
      "salesRecordReference": "0",
      "buyer": {
        "username": "msrahmans"
      },
      "transactionType": "SALE",
      "amount": {
        "value": "123.44",
        "currency": "USD"
      },
      "totalFeeBasisAmount": {
        "value": "143.98",
        "currency": "USD"
      },
      "totalFeeAmount": {
        "value": "20.54",
        "currency": "USD"
      },
      "orderLineItems": [
        {
          "lineItemId": "10064643058205",
          "feeBasisAmount": {
            "value": "143.98",
            "currency": "USD"
          },
          "marketplaceFees": [
            {
              "feeType": "FINAL_VALUE_FEE_FIXED_PER_ORDER",
              "amount": {
                "value": "0.44",
                "currency": "USD"
              }
            },
            {
              "feeType": "FINAL_VALUE_FEE",
              "amount": {
                "value": "17.97",
                "currency": "USD"
              }
            },
            {
              "feeType": "INTERNATIONAL_FEE",
              "amount": {
                "value": "2.13",
                "currency": "USD"
              },
              "feeMemo": "Charged because the delivery address is in United States. Final amount: $143.98."
            }
          ]
        }
      ],
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-03T17:47:57.528Z",
      "transactionStatus": "PAYOUT",
      "paymentsEntity": "eBay Commerce Inc."
    },
    {
      "transactionId": "17484771452",
      "payoutId": "6438267884",
      "salesRecordReference": "0",
      "transactionType": "TRANSFER",
      "amount": {
        "value": "24.14",
        "currency": "USD"
      },
      "bookingEntry": "CREDIT",
      "transactionDate": "2024-07-02T03:01:49.000Z",
      "transactionStatus": "PAYOUT",
      "transactionMemo": "TRANSFER_FROM"
    }
  ],
  "total": 201
}
