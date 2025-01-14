# endpoint
https://api.ebay.com/sell/fulfillment/v1/order/{orderId}

# response headers
rlogid:t6pithqauq%60fiiw%3F%3Ctowiugvpd%60jhs.2%60d5%3D2%3Fac1*wwdie-19455bc7736-0x2332
x-ebay-request-id:19455bc7-73a0-a670-a4a1-5486ffffe45e!Ginger.getOrder.GET!slrordsvccont-7fc6848bf7-trbnf!r1slrordsvccont[]
accept-ch:sec-ch-ua-model,sec-ch-ua-platform-version,sec-ch-ua-full-version
permissions-policy:
x-content-type-options:nosniff
x-xss-protection:1; mode=block
cache-control:no-cache, no-store, max-age=0, must-revalidate
pragma:no-cache
expires:0
x-frame-options:DENY
content-type:application/json
content-length:2846
date:Sat, 11 Jan 2025 14:20:02 GMT
x-envoy-upstream-service-time:188
x-ebay-mesh-server-pod-ip:10.103.10.74
x-ebay-mesh-server-duration:185
x-ebay-mesh-server-start:2025-01-11T14:20:02.228Z
x-ebay-mesh-server-response-flag:-
server:ebay-proxy-server
x-ebay-mesh-gw-name:istioingressgateway-production-slcaz05-08
x-ebay-mesh-gw-pod-name:istio-ingressgateway-08-58c79cd86-xtst6
x-ebay-mesh-gw-pod-ip:10.91.143.59
x-ebay-mesh-gw-upstream-duration:186
x-ebay-mesh-gw-duration:186
x-ebay-mesh-gw-start:2025-01-11T14:20:02.228Z
x-ebay-mesh-gw-response-flag:-
x-ebay-tlb-host:Not Found
x-ebay-tlb-duration:201
x-ebay-pop-id:UFES2-SLCAZ01-api


# response body
// 以下のコード内で特にコメントがないDBの情報については別のapiから取得予定
// 取得時の日付指定は別途リクエスト時に作成（参考: https://developer.ebay.com/api-docs/sell/fulfillment/resources/order/methods/getOrders）
// Orderテーブルのuser_idはUserテーブルのidと紐づく。Deviseを使っており、現在のcurrent_userをuser_idとするのが適切。UserテーブルはWebアプリのユーザーにまつわるDBであり、ebayのuserはDBに保存することはない。
{
  "orderId": "19-11396-02421", // orderテーブルのorder_id
  "legacyOrderId": "19-11396-02421",
  "creationDate": "2024-04-05T07:52:12.000Z", //orderテーブルのsale_date
  "lastModifiedDate": "2024-04-15T23:29:33.000Z",
  "orderFulfillmentStatus": "FULFILLED",
  "orderPaymentStatus": "PAID",
  "sellerId": "ngc-motors",
  "buyer": {
    "username": "geofue_niljz",
    "taxAddress": {
      "city": "Ceiba",
      "stateOrProvince": "Puerto Rico",
      "postalCode": "00735",
      "countryCode": "PR"
    },
    "buyerRegistrationAddress": {
      "contactAddress": {
        "city": "Ceiba,PR",
        "postalCode": "00735",
        "countryCode": "PR"
      }
    }
  },
  "pricingSummary": {
    "priceSubtotal": {
      "value": "87.88", // saleテーブルのorder_gross_amount
      "currency": "USD"
    },
    "deliveryCost": {
      "value": "0.0",
      "currency": "USD"
    },
    "total": {
      "value": "87.88", // saleテーブルのorder_gross_amount
      "currency": "USD"
    }
  },
  "cancelStatus": {
    "cancelState": "NONE_REQUESTED",
    "cancelRequests": []
  },
  "paymentSummary": {
    "totalDueSeller": {
      "value": "71.86", // saleテーブルのorder_net_amount
      "currency": "USD"
    },
    "refunds": [], // 返金額. これがある場合は別途反映するロジックが考慮必要
    "payments": [
      {
        "paymentMethod": "EBAY",
        "paymentReferenceId": "420004_S",
        "paymentDate": "2024-04-05T07:52:12.025Z",
        "amount": {
          "value": "71.86",
          "currency": "USD"
        },
        "paymentStatus": "PAID",  // 支払い状況. PAIDの場合のみ今回取り込みたい
        "paymentHolds": [
          {
            "holdReason": "SELLER_IS_ON_BLOCK_LIST",
            "holdAmount": {
              "value": "71.86",
              "currency": "USD"
            },
            "holdState": "RELEASED",
            "expectedReleaseDate": "2024-04-16T23:29:25.000Z",
            "releaseDate": "2024-04-05T07:52:12.025Z"
          }
        ]
      }
    ]
  },
  "fulfillmentStartInstructions": [
    {
      "fulfillmentInstructionsType": "SHIP_TO",
      "minEstimatedDeliveryDate": "2024-04-10T07:00:00.000Z",
      "maxEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
      "ebaySupportedFulfillment": false,
      "shippingStep": {
        "shipTo": {
          "contactAddress": {
            "city": "Ceiba",
            "stateOrProvince": "Puerto Rico",
            "postalCode": "00735",
            "countryCode": "PR"
          }
        },
        "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
      }
    }
  ],
  "fulfillmentHrefs": [
    "https://api.ebay.com/sell/fulfillment/v1/order/19-11396-02421/shipping_fulfillment/EX00000009909220001020002E0N" // shipping_fulfillment/のあとの文字列はshipmentsテーブルのtracking_number
  ],
  "lineItems": [
    // 決済単位の商品明細。複数itemがある場合は複数の配列の中身になる。それぞれSKUsテーブルに対応
    // skuごとの
    {
      "lineItemId": "10062216439719", //itemidはDBに保存しない
      "legacyItemId": "355590382011",
      "sku": "36162-RDV-J01", // skuテーブルのsku_code
      "title": "HONDA CIVIC EG 3D 92-95 Genuine Rear Quarter Glass Window Molding Seal  Set OEM", // skuテーブルのinternational_title
      "lineItemCost": {
        "value": "87.88", // skuテーブルのsku_gross_amount
        "currency": "USD"
      },
      "quantity": 1, // skuテーブルのquantity
      "soldFormat": "FIXED_PRICE",
      "listingMarketplaceId": "EBAY_MOTORS_US",
      "purchaseMarketplaceId": "EBAY_US",
      "lineItemFulfillmentStatus": "FULFILLED",
      "total": {
        "value": "87.88",
        "currency": "USD"
      },
      "deliveryCost": {
        "shippingCost": {
          "value": "0.0",
          "currency": "USD"
        }
      },
      "appliedPromotions": [],
      "taxes": [],
      "ebayCollectAndRemitTaxes": [
        {
          "taxType": "STATE_SALES_TAX",
          "amount": {
            "value": "10.11",
            "currency": "USD"
          },
          "collectionMethod": "NET"
        }
      ],
      "properties": {
        "buyerProtection": true
      },
      "lineItemFulfillmentInstructions": {
        "minEstimatedDeliveryDate": "2024-04-10T07:00:00.000Z",
        "maxEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
        "shipByDate": "2024-04-12T14:59:59.000Z",
        "guaranteedDelivery": false
      },
      "itemLocation": {
        "location": "JP",
        "countryCode": "JP"
      }
    }
  ],
  "ebayCollectAndRemitTax": true,
  "salesRecordReference": "152",
  "totalFeeBasisAmount": {
    "value": "97.99",
    "currency": "USD"
  },
  "totalMarketplaceFee": {
    "value": "16.02", //この費用をsku_gross_amountから引いた差がsku_net_amountになる。この値はPaymentfeeテーブルに該当する値はなく、保存しない。
    "currency": "USD"
  }
}
