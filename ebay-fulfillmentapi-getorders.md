# endpoint
https://api.ebay.com/sell/fulfillment/v1/order?filter=creationdate:%5B{yyyy-mm-dd}T00:00:00.000Z..%5D

# Response Headers
rlogid:t6pithqauq%60fiiw%3F%3Ctowiugvpd%60jhs.30e5a13ec1*e1es5-19455086104-0x2333
x-ebay-request-id:19455086-1090-adb9-cd56-e7e0ffc938f3!Ginger.getOrders.GET!slrordsvccont-66b6d74ff7-f4ct6!r1slrordsvccont[]
accept-ch:sec-ch-ua-model,sec-ch-ua-platform-version,sec-ch-ua-full-version
permissions-policy:
x-content-type-options:nosniff
x-xss-protection:1; mode=block
cache-control:no-cache, no-store, max-age=0, must-revalidate
pragma:no-cache
expires:0
x-frame-options:DENY
content-type:application/json
date:Sat, 11 Jan 2025 11:03:20 GMT
x-envoy-upstream-service-time:514
x-ebay-mesh-server-pod-ip:10.219.156.213
x-ebay-mesh-server-duration:499
x-ebay-mesh-server-start:2025-01-11T11:03:20.067Z
x-ebay-mesh-server-response-flag:-
server:ebay-proxy-server
x-ebay-mesh-gw-name:istioingressgateway-production-slcaz03-08
x-ebay-mesh-gw-pod-name:istio-ingressgateway-08-b79999b69-d9bmb
x-ebay-mesh-gw-pod-ip:10.91.150.173
x-ebay-mesh-gw-upstream-duration:500
x-ebay-mesh-gw-duration:501
x-ebay-mesh-gw-start:2025-01-11T11:03:20.067Z
x-ebay-mesh-gw-response-flag:-
x-ebay-tlb-host:Not Found
x-ebay-tlb-duration:201
x-ebay-pop-id:UFES2-RNOAZ05-api
transfer-encoding:chunked



# Response Body
{
  "href": "https://api.ebay.com/sell/fulfillment/v1/order?filter=creationdate:%5B2024-01-01T00:00:00.000Z..%5D&limit=50&offset=0",
  "total": 90,
  "next": "https://api.ebay.com/sell/fulfillment/v1/order?filter=creationdate:%5B2024-01-01T00:00:00.000Z..%5D&limit=50&offset=50",
  "limit": 50,
  "offset": 0,
  "orders": [
    {
      "orderId": "04-12087-72462",
      "legacyOrderId": "04-12087-72462",
      "creationDate": "2024-09-17T12:47:59.000Z",
      "lastModifiedDate": "2024-10-15T19:02:36.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "co_jpjj_q7fmrbduw",
        "taxAddress": {
          "stateOrProvince": "NH",
          "postalCode": "03070-4607",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "New Boston",
            "stateOrProvince": "NH",
            "postalCode": "03070",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "220.54",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "220.54",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "189.29",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-09-17T12:48:08.764Z",
            "amount": {
              "value": "189.29",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-09-19T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-09-23T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "New Boston",
                "stateOrProvince": "NH",
                "postalCode": "03070-4607",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/04-12087-72462/shipping_fulfillment/EX1012857447165FE06020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10066771120704",
          "legacyItemId": "355789037190",
          "title": "HONDA Genuine OEM ABS Accumulator Accord Odyssey Acura CL RL TL Integra Oasis",
          "lineItemCost": {
            "value": "220.54",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "220.54",
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
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-09-19T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-09-23T07:00:00.000Z",
            "shipByDate": "2024-09-18T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "192",
      "totalFeeBasisAmount": {
        "value": "220.54",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "31.25",
        "currency": "USD"
      }
    },
    {
      "orderId": "23-11818-70220",
      "legacyOrderId": "23-11818-70220",
      "creationDate": "2024-07-17T20:12:44.000Z",
      "lastModifiedDate": "2024-08-01T01:08:08.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "sly17v6",
        "taxAddress": {
          "city": "North Brunswick",
          "stateOrProvince": "NJ",
          "postalCode": "08902-2820",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "New Brunswick",
            "stateOrProvince": "NJ",
            "postalCode": "08901",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590382026\nBuyer's Vehicle: 2007 Acura TL Type-S Sedan 4-Door 3.5L 3471CC V6 GAS SOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "59.73",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "10.0",
          "currency": "USD"
        },
        "total": {
          "value": "69.73",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "58.91",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-07-17T20:12:57.892Z",
            "amount": {
              "value": "58.91",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-07-23T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-08-02T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "North Brunswick",
                "stateOrProvince": "NJ",
                "postalCode": "08902-2820",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/23-11818-70220/shipping_fulfillment/EX10028213855550001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10065005456123",
          "legacyItemId": "355590382026",
          "sku": "36162-RDV-J01",
          "title": "Genuine Honda Acura TL Accord Vapor Canister Purge Solenoid Valve 36162-RDV-J01",
          "lineItemCost": {
            "value": "59.73",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "69.73",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "10.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [],
          "ebayCollectAndRemitTaxes": [
            {
              "taxType": "STATE_SALES_TAX",
              "amount": {
                "value": "4.62",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-07-23T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-08-02T07:00:00.000Z",
            "shipByDate": "2024-08-01T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "191",
      "totalFeeBasisAmount": {
        "value": "74.35",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "10.82",
        "currency": "USD"
      }
    },
    {
      "orderId": "12-11784-92982",
      "legacyOrderId": "12-11784-92982",
      "creationDate": "2024-07-06T23:12:45.000Z",
      "lastModifiedDate": "2024-08-28T00:01:48.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "FULLY_REFUNDED",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "sable-4976",
        "taxAddress": {
          "city": "Sacramento",
          "stateOrProvince": "CA",
          "postalCode": "95825-1083",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Sacramento",
            "stateOrProvince": "CA",
            "postalCode": "95825",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "143.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "143.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "-0.44",
          "currency": "USD"
        },
        "refunds": [
          {
            "refundDate": "2024-07-31T01:30:32.000Z",
            "amount": {
              "value": "122.31",
              "currency": "USD"
            },
            "refundStatus": "REFUNDED",
            "refundReferenceId": "5341241417"
          }
        ],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-07-06T23:13:02.523Z",
            "amount": {
              "value": "121.87",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-07-09T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-07-11T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Sacramento",
                "stateOrProvince": "CA",
                "postalCode": "95825-1083",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/12-11784-92982/shipping_fulfillment/EX00000023653100001020002F0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10064504641912",
          "legacyItemId": "355590381927",
          "sku": "161A0-29015",
          "title": "OEM Toyota 161A0-29015 LEXUS Prius Prius CV + CT200h Electric Water Pump Genuine",
          "lineItemCost": {
            "value": "143.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "143.98",
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
                "value": "11.16",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "refunds": [
            {
              "refundDate": "2024-07-31T01:30:32.000Z",
              "amount": {
                "value": "143.98",
                "currency": "USD"
              }
            }
          ],
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-07-09T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-07-11T07:00:00.000Z",
            "shipByDate": "2024-07-08T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "190",
      "totalFeeBasisAmount": {
        "value": "155.14",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "22.11",
        "currency": "USD"
      }
    },
    {
      "orderId": "05-11779-76870",
      "legacyOrderId": "05-11779-76870",
      "creationDate": "2024-07-03T17:47:55.000Z",
      "lastModifiedDate": "2024-07-12T04:39:24.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "msrahmans",
        "taxAddress": {
          "city": "Chicago",
          "stateOrProvince": "IL",
          "postalCode": "60626-2428",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Chicago",
            "stateOrProvince": "IL",
            "postalCode": "60626",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "143.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "143.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "123.44",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-07-03T17:47:57.528Z",
            "amount": {
              "value": "123.44",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-07-08T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-07-10T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Chicago",
                "stateOrProvince": "IL",
                "postalCode": "60626-2428",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/05-11779-76870/shipping_fulfillment/EX00000023653220001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10064643058205",
          "legacyItemId": "355590381927",
          "sku": "161A0-29015",
          "title": "OEM Toyota 161A0-29015 LEXUS Prius Prius CV + CT200h Electric Water Pump Genuine",
          "lineItemCost": {
            "value": "143.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "143.98",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "0.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [
            {
              "amount": {
                "value": "0.0",
                "currency": "USD"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-07-08T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-07-10T07:00:00.000Z",
            "shipByDate": "2024-07-05T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "189",
      "totalFeeBasisAmount": {
        "value": "143.98",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "20.54",
        "currency": "USD"
      }
    },
    {
      "orderId": "12-11654-13951",
      "legacyOrderId": "12-11654-13951",
      "creationDate": "2024-06-04T20:40:01.000Z",
      "lastModifiedDate": "2024-06-14T14:05:07.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "onuo-se2015",
        "taxAddress": {
          "postalCode": "151 54",
          "countryCode": "SE"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Södertälje",
            "stateOrProvince": "stockholm",
            "postalCode": "15154",
            "countryCode": "SE"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "71.77",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "71.77",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "58.8",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-06-04T20:40:09.421Z",
            "amount": {
              "value": "58.8",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-06-10T22:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-06-18T22:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Södertälje",
                "postalCode": "151 54",
                "countryCode": "SE"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/12-11654-13951/shipping_fulfillment/EX00000018644850001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063746397612",
          "legacyItemId": "355590381991",
          "sku": "48075-24010 48076-24010",
          "title": "TOYOTA OEM LEXUS GS250 IS250 IS300 GS-F RC-F Control Lower Arm Bracket Bushing",
          "lineItemCost": {
            "value": "71.77",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "71.77",
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
              "taxType": "VAT",
              "amount": {
                "value": "17.94",
                "currency": "USD"
              },
              "collectionMethod": "NET",
              "ebayReference": {
                "name": "IOSS",
                "value": "IM2760000742"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-06-10T22:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-06-18T22:00:00.000Z",
            "shipByDate": "2024-06-12T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "188",
      "totalFeeBasisAmount": {
        "value": "89.71",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "12.97",
        "currency": "USD"
      }
    },
    {
      "orderId": "17-11606-63374",
      "legacyOrderId": "17-11606-63374",
      "creationDate": "2024-05-25T16:59:28.000Z",
      "lastModifiedDate": "2024-06-11T02:03:54.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "maxisdrunk",
        "taxAddress": {
          "city": "Flint",
          "stateOrProvince": "TX",
          "postalCode": "75762-8109",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Tyler",
            "stateOrProvince": "TX",
            "postalCode": "75701",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590381898\nBuyer's Vehicle: 2003 Toyota Tundra SR5 Extended Cab Pickup 4-Door 4.7L 4663CC 285Cu. In. V8 GAS DOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "184.12",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "184.12",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "156.17",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-05-25T16:59:28.556Z",
            "amount": {
              "value": "156.17",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-30T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-06-08T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Flint",
                "stateOrProvince": "TX",
                "postalCode": "75762-8109",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/17-11606-63374/shipping_fulfillment/EX00000017557220001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063464259117",
          "legacyItemId": "355590381898",
          "sku": "43330-39466 43340-39356",
          "title": "Toyota Genuine Sequoia Tundra Front Lower Ball Joint Left & Right Pairs OEM",
          "lineItemCost": {
            "value": "184.12",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "184.12",
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
                "value": "15.19",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-30T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-06-08T07:00:00.000Z",
            "shipByDate": "2024-06-07T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "187",
      "totalFeeBasisAmount": {
        "value": "199.31",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "27.95",
        "currency": "USD"
      }
    },
    {
      "orderId": "22-11583-12120",
      "legacyOrderId": "22-11583-12120",
      "creationDate": "2024-05-20T22:27:13.000Z",
      "lastModifiedDate": "2024-06-02T14:37:24.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "bra_80135",
        "taxAddress": {
          "city": "Lodi",
          "stateOrProvince": "CA",
          "postalCode": "95240",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Lodi",
            "stateOrProvince": "CA",
            "postalCode": "95240",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "56.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "56.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "48.03",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-05-20T22:27:13.159Z",
            "amount": {
              "value": "48.03",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-29T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-06-05T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Lodi",
                "stateOrProvince": "CA",
                "postalCode": "95240-4242",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/22-11583-12120/shipping_fulfillment/EX00000015603300001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063681206122",
          "legacyItemId": "355682750046",
          "sku": "13568-49025",
          "title": "Genuine Toyota 1JZ-GE 1JZ-GTE Timing Belt Serpentine belt Chaser Cresta Martk II",
          "lineItemCost": {
            "value": "56.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "56.98",
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
                "value": "4.7",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-29T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-06-05T07:00:00.000Z",
            "shipByDate": "2024-06-04T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "186",
      "totalFeeBasisAmount": {
        "value": "61.68",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "8.95",
        "currency": "USD"
      }
    },
    {
      "orderId": "09-11551-23266",
      "legacyOrderId": "09-11551-23266",
      "creationDate": "2024-05-10T06:13:12.000Z",
      "lastModifiedDate": "2024-06-02T14:37:57.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "joker7613",
        "taxAddress": {
          "city": "Canonsburg",
          "stateOrProvince": "PA",
          "postalCode": "15317-2751",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Dawsonville",
            "stateOrProvince": "GA",
            "postalCode": "30534",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "118.0",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "118.0",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "100.29",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-05-10T06:13:12.374Z",
            "amount": {
              "value": "100.29",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-25T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Canonsburg",
                "stateOrProvince": "PA",
                "postalCode": "15317-2751",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/09-11551-23266/shipping_fulfillment/EX00000015162820001020002C0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063118799309",
          "legacyItemId": "355682692348",
          "sku": "23300-46050",
          "title": "OEM Toyota Chaser Mark II JZX100 Fuel Filter 23300-46050 Genuine New 1JZ-GTE EFI",
          "lineItemCost": {
            "value": "118.0",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "118.0",
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
                "value": "7.08",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-25T07:00:00.000Z",
            "shipByDate": "2024-05-24T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "185",
      "totalFeeBasisAmount": {
        "value": "125.08",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "17.71",
        "currency": "USD"
      }
    },
    {
      "orderId": "10-11541-03086",
      "legacyOrderId": "10-11541-03086",
      "creationDate": "2024-05-07T21:14:41.000Z",
      "lastModifiedDate": "2024-05-16T18:20:59.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "driver-motorsports",
        "taxAddress": {
          "city": "Rustburg",
          "stateOrProvince": "VA",
          "postalCode": "24588-4407",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Rustburg",
            "stateOrProvince": "VA",
            "postalCode": "24588",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "149.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "149.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "128.84",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-05-07T21:14:41.668Z",
            "amount": {
              "value": "128.84",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-14T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-23T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Rustburg",
                "stateOrProvince": "VA",
                "postalCode": "24588-4407",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/10-11541-03086/shipping_fulfillment/EX00000013899320001020002F0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063061868210",
          "legacyItemId": "355683357083",
          "sku": "04436-51010",
          "title": "JZX100 TOYOTA Genuine Front LH & RH Lower Ball Joints Set 04436-51010 JDM",
          "lineItemCost": {
            "value": "149.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "149.98",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "0.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [
            {
              "amount": {
                "value": "0.0",
                "currency": "USD"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-14T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-23T07:00:00.000Z",
            "shipByDate": "2024-05-22T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "184",
      "totalFeeBasisAmount": {
        "value": "149.98",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "21.14",
        "currency": "USD"
      }
    },
    {
      "orderId": "24-11533-44614",
      "legacyOrderId": "24-11533-44614",
      "creationDate": "2024-05-05T18:53:23.000Z",
      "lastModifiedDate": "2024-06-02T14:16:07.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PARTIALLY_REFUNDED",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "tommula_51",
        "taxAddress": {
          "stateOrProvince": "PL",
          "postalCode": "55-010",
          "countryCode": "PL"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Zębice",
            "stateOrProvince": "PL",
            "postalCode": "55-010",
            "countryCode": "PL"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "192.87",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "192.87",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "122.71",
          "currency": "USD"
        },
        "refunds": [
          {
            "refundDate": "2024-06-02T14:16:07.000Z",
            "amount": {
              "value": "43.1",
              "currency": "USD"
            },
            "refundStatus": "REFUNDED",
            "refundReferenceId": "5136618796",
            "refundId": "5136618796"
          }
        ],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-05-05T18:53:22.363Z",
            "amount": {
              "value": "165.81",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-15T22:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-27T22:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Zębice",
                "stateOrProvince": "PL",
                "postalCode": "55-010",
                "countryCode": "PL"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/24-11533-44614/shipping_fulfillment/EX00000013898760001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063071708024",
          "legacyItemId": "355590381968",
          "sku": "75106-758-013 75141-758-003",
          "title": "Genuine Honda Lawn Tractor H4514 PTO Clutch & pulley 75106-758-013&75141-758-003",
          "lineItemCost": {
            "value": "192.87",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_PL",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "192.87",
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
          "properties": {
            "buyerProtection": true
          },
          "refunds": [
            {
              "refundDate": "2024-06-02T14:16:07.000Z",
              "amount": {
                "value": "50.0",
                "currency": "USD"
              },
              "refundId": "5136618796"
            }
          ],
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-15T22:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-27T22:00:00.000Z",
            "shipByDate": "2024-05-20T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "183",
      "totalFeeBasisAmount": {
        "value": "192.87",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "27.06",
        "currency": "USD"
      }
    },
    {
      "orderId": "09-11517-27532",
      "legacyOrderId": "09-11517-27532",
      "creationDate": "2024-05-02T01:12:53.000Z",
      "lastModifiedDate": "2024-05-21T21:06:03.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "danleb-4902",
        "taxAddress": {
          "city": "yauco",
          "stateOrProvince": "puerto rico",
          "postalCode": "00698",
          "countryCode": "PR"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "yauco",
            "stateOrProvince": "puerto rico",
            "postalCode": "00698",
            "countryCode": "PR"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "71.77",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "71.77",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "60.28",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420008_S",
            "paymentDate": "2024-05-02T01:12:52.917Z",
            "amount": {
              "value": "60.28",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-10T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-15T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "yauco",
                "stateOrProvince": "puerto rico",
                "postalCode": "00698",
                "countryCode": "PR"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/09-11517-27532/shipping_fulfillment/EX00000012850850001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062921817309",
          "legacyItemId": "355590381991",
          "sku": "48075-24010 48076-24010",
          "title": "TOYOTA OEM LEXUS GS250 IS250 IS300 GS-F RC-F Control Lower Arm Bracket Bushing",
          "lineItemCost": {
            "value": "71.77",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "71.77",
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
                "value": "8.25",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-10T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-15T07:00:00.000Z",
            "shipByDate": "2024-05-13T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "182",
      "totalFeeBasisAmount": {
        "value": "80.02",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "11.49",
        "currency": "USD"
      }
    },
    {
      "orderId": "11-11502-49572",
      "legacyOrderId": "11-11502-49572",
      "creationDate": "2024-04-29T04:41:45.000Z",
      "lastModifiedDate": "2024-05-16T17:31:52.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "sebb_seb",
        "taxAddress": {
          "city": "Davie",
          "stateOrProvince": "FL",
          "postalCode": "33328-7006",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Davie",
            "stateOrProvince": "FL",
            "postalCode": "33328",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "268.0",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "10.0",
          "currency": "USD"
        },
        "total": {
          "value": "278.0",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "236.49",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420014_S",
            "paymentDate": "2024-04-29T04:41:45.429Z",
            "amount": {
              "value": "236.49",
              "currency": "USD"
            },
            "paymentStatus": "PAID"
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-06T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Davie",
                "stateOrProvince": "FL",
                "postalCode": "33328-7006",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/11-11502-49572/shipping_fulfillment/EX00000013897210001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062897993411",
          "legacyItemId": "355673292729",
          "sku": "MR412241",
          "title": "Mitsubishi Genuine MR412241 Lancer EVO6 CP9A Hood Insulator Bonnet Heat Shield",
          "lineItemCost": {
            "value": "268.0",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "278.0",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "10.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [],
          "ebayCollectAndRemitTaxes": [
            {
              "taxType": "STATE_SALES_TAX",
              "amount": {
                "value": "19.46",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-06T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
            "shipByDate": "2024-05-15T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "181",
      "totalFeeBasisAmount": {
        "value": "297.46",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "41.51",
        "currency": "USD"
      }
    },
    {
      "orderId": "16-11490-10763",
      "legacyOrderId": "16-11490-10763",
      "creationDate": "2024-04-27T05:03:30.000Z",
      "lastModifiedDate": "2024-05-15T00:10:40.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "smith186",
        "taxAddress": {
          "city": "Seattle",
          "stateOrProvince": "WA",
          "postalCode": "98109-2269",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Seattle",
            "stateOrProvince": "WA",
            "postalCode": "98109",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "142.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "142.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "116.81",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-27T05:03:30.360Z",
            "amount": {
              "value": "116.81",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "116.81",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-16T00:10:34.000Z",
                "releaseDate": "2024-04-27T05:03:30.360Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-04T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Seattle",
                "stateOrProvince": "WA",
                "postalCode": "98109-2269",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/16-11490-10763/shipping_fulfillment/EX00000013895340001020002D0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062780910216",
          "legacyItemId": "355590381912",
          "title": "OEM GENUINE HONDA ACURA VTEC SOLENOID SPOOL VALVE W/GASKET 15810-RAA-A03 NIB",
          "lineItemCost": {
            "value": "142.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "142.19",
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
                "value": "14.72",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-04T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
            "shipByDate": "2024-05-15T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "180",
      "totalFeeBasisAmount": {
        "value": "156.91",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "25.38",
        "currency": "USD"
      }
    },
    {
      "orderId": "17-11483-45573",
      "legacyOrderId": "17-11483-45573",
      "creationDate": "2024-04-25T18:02:40.000Z",
      "lastModifiedDate": "2024-04-30T21:01:46.000Z",
      "orderFulfillmentStatus": "NOT_STARTED",
      "orderPaymentStatus": "FULLY_REFUNDED",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "santiago-84",
        "taxAddress": {
          "city": "Cataño",
          "stateOrProvince": "Puerto Rico",
          "postalCode": "00963",
          "countryCode": "PR"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Cataño",
            "stateOrProvince": "Puerto Rico",
            "postalCode": "00963",
            "countryCode": "PR"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "166.85",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "166.85",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "CANCELED",
        "cancelRequests": [
          {
            "cancelReason": "ADDRESS_ISSUES",
            "cancelRequestedDate": "2024-04-30T20:55:24.173Z",
            "cancelInitiator": "SELLER",
            "cancelRequestId": "5361611183",
            "cancelRequestState": "COMPLETED"
          }
        ]
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "0.0",
          "currency": "USD"
        },
        "refunds": [
          {
            "refundDate": "2024-04-30T21:01:16.000Z",
            "amount": {
              "value": "136.84",
              "currency": "USD"
            },
            "refundStatus": "REFUNDED",
            "refundReferenceId": "5361611183"
          }
        ],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-25T18:02:39.793Z",
            "amount": {
              "value": "136.84",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "136.84",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-01T21:01:28.000Z",
                "releaseDate": "2024-04-25T18:02:39.793Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-30T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Cataño",
                "stateOrProvince": "Puerto Rico",
                "postalCode": "00963",
                "countryCode": "PR"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [],
      "lineItems": [
        {
          "lineItemId": "10062748687517",
          "legacyItemId": "355590381918",
          "title": "MITSUBISHI Genuine LANCER CJ2A CJ4A CK2A CK4A CM5A GSR Upper Glove Box MR753370",
          "lineItemCost": {
            "value": "166.85",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "NOT_STARTED",
          "total": {
            "value": "166.85",
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
                "value": "19.19",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "refunds": [
            {
              "refundDate": "2024-04-30T21:01:16.000Z",
              "amount": {
                "value": "166.85",
                "currency": "USD"
              }
            }
          ],
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-30T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-16T07:00:00.000Z",
            "shipByDate": "2024-05-15T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "179",
      "totalFeeBasisAmount": {
        "value": "186.04",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "30.01",
        "currency": "USD"
      }
    },
    {
      "orderId": "26-11472-38775",
      "legacyOrderId": "26-11472-38775",
      "creationDate": "2024-04-24T22:23:08.000Z",
      "lastModifiedDate": "2024-05-09T19:16:28.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "sc-71813",
        "taxAddress": {
          "city": "Denver",
          "stateOrProvince": "CO",
          "postalCode": "80215",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Denver",
            "stateOrProvince": "CO",
            "postalCode": "80215",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "139.68",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "139.68",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "115.03",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-24T22:23:07.419Z",
            "amount": {
              "value": "115.03",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "115.03",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-10T19:16:07.000Z",
                "releaseDate": "2024-04-24T22:23:07.419Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-05-02T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-15T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Denver",
                "stateOrProvince": "CO",
                "postalCode": "80215-0424",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/26-11472-38775/shipping_fulfillment/EX00000012055090001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062648969026",
          "legacyItemId": "355590381954",
          "title": "HONDA CIVIC 1992-1995 Genuine Front Windshield Molding Upper & RH & LH Set OEM",
          "lineItemCost": {
            "value": "139.68",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "139.68",
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
                "value": "12.59",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-05-02T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-15T07:00:00.000Z",
            "shipByDate": "2024-05-14T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "178",
      "totalFeeBasisAmount": {
        "value": "152.27",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "24.65",
        "currency": "USD"
      }
    },
    {
      "orderId": "01-11486-23781",
      "legacyOrderId": "01-11486-23781",
      "creationDate": "2024-04-23T01:33:20.000Z",
      "lastModifiedDate": "2024-05-03T17:29:18.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "jawi-990",
        "taxAddress": {
          "city": "Plant city",
          "stateOrProvince": "FL",
          "postalCode": "33565-7104",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Gainesville",
            "stateOrProvince": "FL",
            "postalCode": "32605",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590381898\nBuyer's Vehicle: 2002 Toyota Tundra SR5 Extended Cab Pickup 4-Door 4.7L 4663CC 285Cu. In. V8 GAS DOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "154.12",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "154.12",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "127.34",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420007_S",
            "paymentDate": "2024-04-23T01:33:19.953Z",
            "amount": {
              "value": "127.34",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "127.34",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-04T17:28:52.000Z",
                "releaseDate": "2024-04-23T01:33:19.953Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-11T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Plant city",
                "stateOrProvince": "FL",
                "postalCode": "33565-7104",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/01-11486-23781/shipping_fulfillment/EX00000012053900001020002F0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062774041001",
          "legacyItemId": "355590381898",
          "sku": "43330-39466 43340-39356",
          "title": "Toyota Genuine Sequoia Tundra Front Lower Ball Joint Left & Right Pairs OEM",
          "lineItemCost": {
            "value": "154.12",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "154.12",
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
                "value": "11.56",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-11T07:00:00.000Z",
            "shipByDate": "2024-05-10T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "177",
      "totalFeeBasisAmount": {
        "value": "165.68",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "26.78",
        "currency": "USD"
      }
    },
    {
      "orderId": "09-11478-87609",
      "legacyOrderId": "09-11478-87609",
      "creationDate": "2024-04-22T23:53:23.000Z",
      "lastModifiedDate": "2024-05-01T23:18:19.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "williahenr-4",
        "taxAddress": {
          "city": "STUDIO CITY",
          "stateOrProvince": "CA",
          "postalCode": "91604-1614",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "STUDIO CITY",
            "stateOrProvince": "CA",
            "postalCode": "91604",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590382041\nBuyer's Vehicle: 1987 Toyota Land Cruiser HJ60 Sport Utility 4-Door 2.4L 2366CC l4 DIESEL Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "79.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "79.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "64.97",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-22T23:53:22.753Z",
            "amount": {
              "value": "64.97",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "64.97",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-02T23:18:02.000Z",
                "releaseDate": "2024-04-22T23:53:22.753Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-11T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "STUDIO CITY",
                "stateOrProvince": "CA",
                "postalCode": "91604-1614",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/09-11478-87609/shipping_fulfillment/EX00000012054160001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062698895709",
          "legacyItemId": "355590382041",
          "title": "TOYOTA GENUINE Land Cruiser 60 Room Rear View Mirror Interior NEW 87810-90A03",
          "lineItemCost": {
            "value": "79.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "79.19",
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
                "value": "7.52",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-11T07:00:00.000Z",
            "shipByDate": "2024-05-10T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "176",
      "totalFeeBasisAmount": {
        "value": "86.71",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "14.22",
        "currency": "USD"
      }
    },
    {
      "orderId": "08-11479-57110",
      "legacyOrderId": "08-11479-57110",
      "creationDate": "2024-04-22T23:11:32.000Z",
      "lastModifiedDate": "2024-05-01T18:19:15.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "jesus2341",
        "taxAddress": {
          "city": "Philadelphia",
          "stateOrProvince": "PA",
          "postalCode": "19140-3025",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Philadelphia",
            "stateOrProvince": "PA",
            "postalCode": "19140",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "88.75",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "88.75",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "73.35",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-22T23:11:32.267Z",
            "amount": {
              "value": "73.35",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "73.35",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-02T18:19:13.000Z",
                "releaseDate": "2024-04-22T23:11:32.267Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-11T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Philadelphia",
                "stateOrProvince": "PA",
                "postalCode": "19140-3025",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/08-11479-57110/shipping_fulfillment/EX00000012053750001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062762999408",
          "legacyItemId": "355590381896",
          "sku": "11233-JK50A",
          "title": "GENUINE INFINITI 09-13 AWD G37 3.7 V6 FRONT MOUNT BRACKET DRIVER SIDE New Japan",
          "lineItemCost": {
            "value": "88.75",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "88.75",
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
                "value": "5.33",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-11T07:00:00.000Z",
            "shipByDate": "2024-05-10T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "175",
      "totalFeeBasisAmount": {
        "value": "94.08",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "15.4",
        "currency": "USD"
      }
    },
    {
      "orderId": "27-11461-35251",
      "legacyOrderId": "27-11461-35251",
      "creationDate": "2024-04-22T14:32:54.000Z",
      "lastModifiedDate": "2024-05-10T16:04:16.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "lekkerding1",
        "taxAddress": {
          "city": "San Antonio",
          "stateOrProvince": "TX",
          "postalCode": "78230-2002",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "San Antonio",
            "stateOrProvince": "TX",
            "postalCode": "78230",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "596.99",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "596.99",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "493.83",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-22T14:32:53.866Z",
            "amount": {
              "value": "493.83",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "493.83",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-03T21:18:36.000Z",
                "releaseDate": "2024-04-22T14:32:53.866Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-10T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "San Antonio",
                "stateOrProvince": "TX",
                "postalCode": "78230-2002",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/27-11461-35251/shipping_fulfillment/EX00000012053510001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10066945035827",
          "legacyItemId": "355590382047",
          "sku": "49141-60010 49151-60010",
          "title": "Toyota Genuine OEM Lexus LX470 Suspension accumulator 49141-60010 49151-60010",
          "lineItemCost": {
            "value": "596.99",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "596.99",
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
                "value": "49.25",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-10T07:00:00.000Z",
            "shipByDate": "2024-05-09T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "174",
      "totalFeeBasisAmount": {
        "value": "646.24",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "103.16",
        "currency": "USD"
      }
    },
    {
      "orderId": "16-11468-59549",
      "legacyOrderId": "16-11468-59549",
      "creationDate": "2024-04-22T02:36:39.000Z",
      "lastModifiedDate": "2024-05-01T12:47:26.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PARTIALLY_REFUNDED",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "chcast-9844",
        "taxAddress": {
          "city": "La Habra Heights",
          "stateOrProvince": "CA",
          "postalCode": "90631-8115",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "La Habra Heights",
            "stateOrProvince": "CA",
            "postalCode": "90631",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "45.48",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "10.0",
          "currency": "USD"
        },
        "total": {
          "value": "55.48",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "33.1",
          "currency": "USD"
        },
        "refunds": [
          {
            "refundDate": "2024-05-01T12:47:26.000Z",
            "amount": {
              "value": "12.44",
              "currency": "USD"
            },
            "refundStatus": "REFUNDED",
            "refundReferenceId": "5134520173",
            "refundId": "5134520173"
          }
        ],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420006_S",
            "paymentDate": "2024-04-22T02:36:39.405Z",
            "amount": {
              "value": "45.54",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "45.54",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-30T22:42:22.000Z",
                "releaseDate": "2024-04-22T02:36:39.405Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-10T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "La Habra Heights",
                "stateOrProvince": "CA",
                "postalCode": "90631-8115",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/16-11468-59549/shipping_fulfillment/EX00000011820960001020002D0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062656700916",
          "legacyItemId": "355590381888",
          "sku": "22821-PPP-000 写真撮影必須",
          "title": "Honda Genuine Acura RSX K20A Civic Si K20A3 K20Z3 Clutch Release Fork & Spring",
          "lineItemCost": {
            "value": "45.48",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "55.48",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "10.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [],
          "ebayCollectAndRemitTaxes": [
            {
              "taxType": "STATE_SALES_TAX",
              "amount": {
                "value": "4.32",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "refunds": [
            {
              "refundDate": "2024-05-01T12:47:26.000Z",
              "amount": {
                "value": "15.0",
                "currency": "USD"
              },
              "refundId": "5134520173"
            }
          ],
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-10T07:00:00.000Z",
            "shipByDate": "2024-05-09T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "173",
      "totalFeeBasisAmount": {
        "value": "59.8",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "9.94",
        "currency": "USD"
      }
    },
    {
      "orderId": "11-11462-66656",
      "legacyOrderId": "11-11462-66656",
      "creationDate": "2024-04-19T14:14:00.000Z",
      "lastModifiedDate": "2024-04-30T19:15:50.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "jorggarci_7",
        "taxAddress": {
          "city": "Corcoran",
          "stateOrProvince": "CA",
          "postalCode": "93212-1716",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "corcoran",
            "stateOrProvince": "CA",
            "postalCode": "93212",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590381990\nBuyer's Vehicle: 1996 Toyota 4Runner Limited Sport Utility 4-Door 3.4L 3378CC V6 GAS DOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "69.09",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "69.09",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "56.76",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-19T14:14:00.303Z",
            "amount": {
              "value": "56.76",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "56.76",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-01T19:15:41.000Z",
                "releaseDate": "2024-04-19T14:14:00.303Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-23T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-09T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Corcoran",
                "stateOrProvince": "CA",
                "postalCode": "93212-1716",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/11-11462-66656/shipping_fulfillment/EX00000011821890001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062664396311",
          "legacyItemId": "355590381990",
          "sku": "47704-35091 47703-35091",
          "title": "Toyota Genuine Pair Set of 2 Front Brake Dust Shields for 4Runner Tacoma Japan",
          "lineItemCost": {
            "value": "69.09",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "69.09",
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
                "value": "5.7",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-23T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-09T07:00:00.000Z",
            "shipByDate": "2024-05-08T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "172",
      "totalFeeBasisAmount": {
        "value": "74.79",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "12.33",
        "currency": "USD"
      }
    },
    {
      "orderId": "09-11460-87112",
      "legacyOrderId": "09-11460-87112",
      "creationDate": "2024-04-18T16:57:46.000Z",
      "lastModifiedDate": "2024-04-29T21:14:44.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "snejam-9omnck",
        "taxAddress": {
          "city": "Wichita",
          "stateOrProvince": "KS",
          "postalCode": "67203-1031",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Wichita",
            "stateOrProvince": "KS",
            "postalCode": "67203",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590382037\nBuyer's Vehicle: 2004 Honda Pilot EX Sport Utility 4-Door 3.5L 3475CC V6 GAS SOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "96.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "96.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "79.32",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-18T16:57:45.349Z",
            "amount": {
              "value": "79.32",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "79.32",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-30T21:14:31.000Z",
                "releaseDate": "2024-04-18T16:57:45.349Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-24T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-09T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Wichita",
                "stateOrProvince": "KS",
                "postalCode": "67203-1031",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/09-11460-87112/shipping_fulfillment/EX00000011821640001020002C0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062593150909",
          "legacyItemId": "355590382037",
          "sku": "17315-S84-A02",
          "title": "OEM HONDA 2003 - 2004 Honda Pilot EVAP Vapor Canister Filter 17315-S84-A02",
          "lineItemCost": {
            "value": "96.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "96.19",
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
                "value": "7.21",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-24T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-09T07:00:00.000Z",
            "shipByDate": "2024-05-08T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "171",
      "totalFeeBasisAmount": {
        "value": "103.4",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "16.87",
        "currency": "USD"
      }
    },
    {
      "orderId": "12-11455-72146",
      "legacyOrderId": "12-11455-72146",
      "creationDate": "2024-04-17T23:08:24.000Z",
      "lastModifiedDate": "2024-04-26T22:42:29.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "fastgrnstang",
        "taxAddress": {
          "city": "Hacienda heights",
          "stateOrProvince": "CA",
          "postalCode": "91745-2833",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Hacienda Heights",
            "stateOrProvince": "CA",
            "postalCode": "91745",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "63.88",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "63.88",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "52.32",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420009_S",
            "paymentDate": "2024-04-17T23:08:23.460Z",
            "amount": {
              "value": "52.32",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "52.32",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-27T22:42:06.000Z",
                "releaseDate": "2024-04-17T23:08:23.460Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-24T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-08T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Hacienda heights",
                "stateOrProvince": "CA",
                "postalCode": "91745-2833",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/12-11455-72146/shipping_fulfillment/EX00000011641060001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062593521112",
          "legacyItemId": "355590382028",
          "sku": "75507-17010",
          "title": "Toyota Genuine MR2 AW11 Upper Moulding Back Window Outside 1984-89 75507-17010",
          "lineItemCost": {
            "value": "63.88",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "63.88",
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
                "value": "6.07",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-24T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-08T07:00:00.000Z",
            "shipByDate": "2024-05-07T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "170",
      "totalFeeBasisAmount": {
        "value": "69.95",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "11.56",
        "currency": "USD"
      }
    },
    {
      "orderId": "17-11437-69599",
      "legacyOrderId": "17-11437-69599",
      "creationDate": "2024-04-14T21:35:02.000Z",
      "lastModifiedDate": "2024-04-19T20:17:54.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "jerryjss",
        "taxAddress": {
          "city": "madisonville",
          "stateOrProvince": "LA",
          "postalCode": "70447-9533",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "madisonville",
            "stateOrProvince": "LA",
            "postalCode": "70447",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590381898\nBuyer's Vehicle: 2003 Toyota Tundra Limited Extended Cab Pickup 4-Door 4.7L 4663CC 285Cu. In. V8 GAS DOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "154.12",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "154.12",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "127.05",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-14T21:35:01.606Z",
            "amount": {
              "value": "127.05",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "127.05",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T20:17:41.000Z",
                "releaseDate": "2024-04-14T21:35:01.606Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-18T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-01T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "madisonville",
                "stateOrProvince": "LA",
                "postalCode": "70447-9533",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/17-11437-69599/shipping_fulfillment/EX00000010499330001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062483371617",
          "legacyItemId": "355590381898",
          "sku": "43330-39466 43340-39356",
          "title": "Toyota Genuine Sequoia Tundra Front Lower Ball Joint Left & Right Pairs OEM",
          "lineItemCost": {
            "value": "154.12",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "154.12",
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
                "value": "13.41",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-18T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-01T07:00:00.000Z",
            "shipByDate": "2024-04-30T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "169",
      "totalFeeBasisAmount": {
        "value": "167.53",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "27.07",
        "currency": "USD"
      }
    },
    {
      "orderId": "03-11448-55801",
      "legacyOrderId": "03-11448-55801",
      "creationDate": "2024-04-14T18:14:23.000Z",
      "lastModifiedDate": "2024-04-19T08:14:35.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "sccon_27",
        "taxAddress": {
          "city": "Diamond Springs",
          "stateOrProvince": "CA",
          "postalCode": "95619-9501",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Diamond Springs",
            "stateOrProvince": "CA",
            "postalCode": "95619",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "205.09",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "205.09",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "169.7",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420007_S",
            "paymentDate": "2024-04-14T18:14:22.583Z",
            "amount": {
              "value": "169.7",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "169.7",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-19T23:32:36.000Z",
                "releaseDate": "2024-04-14T18:14:22.583Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-01T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Diamond Springs",
                "stateOrProvince": "CA",
                "postalCode": "95619-9501",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/03-11448-55801/shipping_fulfillment/EX00000010501900001020002C0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063366329103",
          "legacyItemId": "355590382038",
          "title": "Toyota Celsior Lexus LS400 1998-2000 Front Turn Signal Lamp Lens Genuine OEM",
          "lineItemCost": {
            "value": "205.09",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "205.09",
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
                "value": "14.87",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-01T07:00:00.000Z",
            "shipByDate": "2024-04-30T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "168",
      "totalFeeBasisAmount": {
        "value": "219.96",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "35.39",
        "currency": "USD"
      }
    },
    {
      "orderId": "20-11432-11493",
      "legacyOrderId": "20-11432-11493",
      "creationDate": "2024-04-14T05:49:46.000Z",
      "lastModifiedDate": "2024-04-19T20:16:24.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "yungking876",
        "taxAddress": {
          "city": "New Orleans",
          "stateOrProvince": "LA",
          "postalCode": "70129-2044",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "San Antonio",
            "stateOrProvince": "TX",
            "postalCode": "78223",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590381990\nBuyer's Vehicle: 2004 Toyota Tacoma Pre Runner Crew Cab Pickup 4-Door 3.4L 3378CC V6 GAS DOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "69.09",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "69.09",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "56.63",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-14T05:49:46.237Z",
            "amount": {
              "value": "56.63",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "56.63",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T20:16:07.000Z",
                "releaseDate": "2024-04-14T05:49:46.237Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "New Orleans",
                "stateOrProvince": "LA",
                "postalCode": "70129-2044",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/20-11432-11493/shipping_fulfillment/EX00000010501750001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062523817920",
          "legacyItemId": "355590381990",
          "sku": "47704-35091 47703-35091",
          "title": "Toyota Genuine Pair Set of 2 Front Brake Dust Shields for 4Runner Tacoma Japan",
          "lineItemCost": {
            "value": "69.09",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "69.09",
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
                "value": "6.53",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "167",
      "totalFeeBasisAmount": {
        "value": "75.62",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "12.46",
        "currency": "USD"
      }
    },
    {
      "orderId": "13-11436-92395",
      "legacyOrderId": "13-11436-92395",
      "creationDate": "2024-04-13T19:38:43.000Z",
      "lastModifiedDate": "2024-06-24T19:49:12.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "herus_wu2vo",
        "taxAddress": {
          "city": "San Sebastian",
          "stateOrProvince": "PR",
          "postalCode": "00685",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "El Paso",
            "stateOrProvince": "TX",
            "postalCode": "79924",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "377.96",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "377.96",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "310.53",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420006_S",
            "paymentDate": "2024-04-13T19:38:42.766Z",
            "amount": {
              "value": "310.53",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "HIGH_RISK_TXN",
                "holdAmount": {
                  "value": "310.53",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-06T09:03:37.000Z",
                "releaseDate": "2024-04-13T19:38:42.766Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-05-04T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "San Sebastian",
                "stateOrProvince": "PR",
                "postalCode": "00685",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/13-11436-92395/shipping_fulfillment/EX00000010502820001020002C0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063752016013",
          "legacyItemId": "355590381981",
          "title": "Innovative for 00-05 Toyota MR2 Spyder 1ZZ Black Steel Mounts 75A Bushings",
          "lineItemCost": {
            "value": "377.96",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "377.96",
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
                "value": "43.47",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-29T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-05-04T07:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "166",
      "totalFeeBasisAmount": {
        "value": "421.43",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "67.43",
        "currency": "USD"
      }
    },
    {
      "orderId": "05-11443-18729",
      "legacyOrderId": "05-11443-18729",
      "creationDate": "2024-04-13T16:21:40.000Z",
      "lastModifiedDate": "2024-04-22T05:04:45.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "anden-de-umrjhm2sv",
        "taxAddress": {
          "city": "Orlando",
          "stateOrProvince": "FL",
          "postalCode": "32819-7415",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Orlando",
            "stateOrProvince": "FL",
            "postalCode": "32809-6557",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "403.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "403.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "335.15",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420007_S",
            "paymentDate": "2024-04-13T16:21:40.263Z",
            "amount": {
              "value": "335.15",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "HIGH_RISK_TXN",
                "holdAmount": {
                  "value": "335.15",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-23T05:04:44.000Z",
                "releaseDate": "2024-04-13T16:21:40.263Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Orlando",
                "stateOrProvince": "FL",
                "postalCode": "32819-7415",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/05-11443-18729/shipping_fulfillment/EX00000010500710001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062687477405",
          "legacyItemId": "355590381910",
          "sku": "49141-60020 49151-60020",
          "title": "LEXUS Toyota 49141-60020 49151-60020 SUSPENSION ACCUMULATOR SET LX570 URJ200 JP",
          "lineItemCost": {
            "value": "403.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "403.98",
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
                "value": "26.26",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "165",
      "totalFeeBasisAmount": {
        "value": "430.24",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "68.83",
        "currency": "USD"
      }
    },
    {
      "orderId": "05-11442-25986",
      "legacyOrderId": "05-11442-25986",
      "creationDate": "2024-04-13T11:28:12.000Z",
      "lastModifiedDate": "2024-04-20T00:05:22.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "copar9012",
        "taxAddress": {
          "city": "Jupiter",
          "stateOrProvince": "FL",
          "postalCode": "33458-5004",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Kailua",
            "stateOrProvince": "HI",
            "postalCode": "96734",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "245.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "245.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "203.7",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-13T11:28:11.758Z",
            "amount": {
              "value": "203.7",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "HIGH_RISK_TXN",
                "holdAmount": {
                  "value": "203.7",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-21T00:05:20.000Z",
                "releaseDate": "2024-04-13T11:28:11.758Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Jupiter",
                "stateOrProvince": "FL",
                "postalCode": "33458-5004",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/05-11442-25986/shipping_fulfillment/EX00000010082930001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062682077505",
          "legacyItemId": "355590381970",
          "sku": "63627-17010 63628-17010",
          "title": "TOYOTA OEM MR2 AW11 T-Bar Removable Roof Weatherstrip R&L SET 63628 &63627-17010",
          "lineItemCost": {
            "value": "245.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "245.98",
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
                "value": "17.22",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "164",
      "totalFeeBasisAmount": {
        "value": "263.2",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "42.28",
        "currency": "USD"
      }
    },
    {
      "orderId": "07-11438-49922",
      "legacyOrderId": "07-11438-49922",
      "creationDate": "2024-04-12T20:47:12.000Z",
      "lastModifiedDate": "2024-04-19T20:16:43.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "her_83698",
        "taxAddress": {
          "city": "Yakima",
          "stateOrProvince": "WA",
          "postalCode": "98902-1837",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Yakima",
            "stateOrProvince": "WA",
            "postalCode": "98901-8301",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "131.38",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "131.38",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "108.32",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-12T20:47:12.244Z",
            "amount": {
              "value": "108.32",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "108.32",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T20:16:36.000Z",
                "releaseDate": "2024-04-12T20:47:12.244Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Yakima",
                "stateOrProvince": "WA",
                "postalCode": "98902-1837",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/07-11438-49922/shipping_fulfillment/EX00000010916680001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10067556198007",
          "legacyItemId": "355590382003",
          "title": "TOYOTA GENUINE MR2 SW20 SW21 Outer Door Moulding Weather Strip L&R OEM Japan New",
          "lineItemCost": {
            "value": "131.38",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "131.38",
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
                "value": "10.9",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "163",
      "totalFeeBasisAmount": {
        "value": "142.28",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "23.06",
        "currency": "USD"
      }
    },
    {
      "orderId": "16-11428-61878",
      "legacyOrderId": "16-11428-61878",
      "creationDate": "2024-04-12T11:22:12.000Z",
      "lastModifiedDate": "2024-05-04T12:50:53.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "rotti.ricca",
        "taxAddress": {
          "postalCode": "9519",
          "countryCode": "NO"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Vartdal",
            "stateOrProvince": "Møre og Romsdal",
            "postalCode": "6170",
            "countryCode": "NO"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "131.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "131.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "104.68",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420006_S",
            "paymentDate": "2024-04-12T11:22:11.922Z",
            "amount": {
              "value": "104.68",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "104.68",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-05T12:50:51.000Z",
                "releaseDate": "2024-04-12T11:22:11.922Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-17T22:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-28T22:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Kviby",
                "postalCode": "9519",
                "countryCode": "NO"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/16-11428-61878/shipping_fulfillment/EX00000010502160001020002D0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062422679516",
          "legacyItemId": "355590382007",
          "sku": "72410-S2A-023 72450-S2A-023",
          "title": "HONDA S2000 AP1 AP2 Genuine Front Door Window Molding RH & LH belt Weather strip",
          "lineItemCost": {
            "value": "131.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_IT",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "131.19",
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
              "taxType": "GST",
              "amount": {
                "value": "32.8",
                "currency": "USD"
              },
              "collectionMethod": "NET",
              "ebayReference": {
                "name": "VAT",
                "value": "VOEC NO:2024926"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-17T22:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-28T22:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "162",
      "totalFeeBasisAmount": {
        "value": "163.99",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "26.51",
        "currency": "USD"
      }
    },
    {
      "orderId": "08-11434-43163",
      "legacyOrderId": "08-11434-43163",
      "creationDate": "2024-04-12T04:51:41.000Z",
      "lastModifiedDate": "2024-05-03T06:15:28.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "banded-45",
        "taxAddress": {
          "stateOrProvince": "NSW",
          "postalCode": "2446",
          "countryCode": "AU"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Wauchope",
            "stateOrProvince": "New South Wales",
            "postalCode": "2446",
            "countryCode": "AU"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "343.29",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "16.0",
          "currency": "USD"
        },
        "total": {
          "value": "359.29",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "296.03",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-12T04:51:41.355Z",
            "amount": {
              "value": "296.03",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "HIGH_RISK_TXN",
                "holdAmount": {
                  "value": "296.03",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-04T06:15:18.000Z",
                "releaseDate": "2024-04-12T04:51:41.355Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-17T14:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-28T14:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Wauchope",
                "stateOrProvince": "NSW",
                "postalCode": "2446",
                "countryCode": "AU"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/08-11434-43163/shipping_fulfillment/EX00000010787850001020002C0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062499542108",
          "legacyItemId": "355590381956",
          "title": "36410-60093 Genuine Toyota LAND CRUISER PRADO Transfer Shift Actuator Assy New",
          "lineItemCost": {
            "value": "343.29",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_AU",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "359.29",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "16.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [],
          "ebayCollectAndRemitTaxes": [
            {
              "taxType": "GST",
              "amount": {
                "value": "35.93",
                "currency": "USD"
              },
              "collectionMethod": "NET",
              "ebayReference": {
                "name": "GST",
                "value": "ABN#64652016681"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-17T14:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-28T14:00:00.000Z",
            "shipByDate": "2024-04-26T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "161",
      "totalFeeBasisAmount": {
        "value": "395.22",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "63.26",
        "currency": "USD"
      }
    },
    {
      "orderId": "18-11422-92079",
      "legacyOrderId": "18-11422-92079",
      "creationDate": "2024-04-11T11:56:34.000Z",
      "lastModifiedDate": "2024-05-12T19:33:26.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "edwar510",
        "taxAddress": {
          "city": "Snellville",
          "stateOrProvince": "GA",
          "postalCode": "30078-3597",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Snellville",
            "stateOrProvince": "GA",
            "postalCode": "30078-3597",
            "countryCode": "US"
          }
        }
      },
      "buyerCheckoutNotes": "Item Id: 355590382037\nBuyer's Vehicle: 2000 Honda Accord EX Sedan 4-Door 2.3L 2254CC l4 GAS SOHC Naturally Aspirated\n",
      "pricingSummary": {
        "priceSubtotal": {
          "value": "96.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "96.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "79.55",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-11T11:56:34.000Z",
            "amount": {
              "value": "79.55",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "79.55",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-19T18:21:17.000Z",
                "releaseDate": "2024-04-11T11:56:34.000Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-26T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Snellville",
                "stateOrProvince": "GA",
                "postalCode": "30078-3597",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/18-11422-92079/shipping_fulfillment/EX00000010498800001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10065408206818",
          "legacyItemId": "355590382037",
          "sku": "17315-S84-A02",
          "title": "OEM HONDA 2003 - 2004 Honda Pilot EVAP Vapor Canister Filter 17315-S84-A02",
          "lineItemCost": {
            "value": "96.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "96.19",
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
                "value": "5.77",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-26T07:00:00.000Z",
            "shipByDate": "2024-04-25T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "160",
      "totalFeeBasisAmount": {
        "value": "101.96",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "16.64",
        "currency": "USD"
      }
    },
    {
      "orderId": "11-11428-35568",
      "legacyOrderId": "11-11428-35568",
      "creationDate": "2024-04-11T09:33:17.000Z",
      "lastModifiedDate": "2024-04-19T09:19:09.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "aupeti_834",
        "taxAddress": {
          "stateOrProvince": "Centre-Val de Loire",
          "postalCode": "18170",
          "countryCode": "FR"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "MARCAIS",
            "stateOrProvince": "Centre-Val de Loire",
            "postalCode": "18170",
            "countryCode": "FR"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "192.87",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "192.87",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "155.63",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-11T09:33:17.323Z",
            "amount": {
              "value": "155.63",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "155.63",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T09:18:58.000Z",
                "releaseDate": "2024-04-11T09:33:17.323Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-15T22:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-25T22:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "MARCAIS",
                "stateOrProvince": "Centre-Val de Loire",
                "postalCode": "18170",
                "countryCode": "FR"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/11-11428-35568/shipping_fulfillment/EX00000010498140001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062464559311",
          "legacyItemId": "355590381968",
          "title": "Genuine Honda Lawn Tractor H4514 PTO Clutch & pulley 75106-758-013&75141-758-003",
          "lineItemCost": {
            "value": "192.87",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_FR",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "192.87",
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
              "taxType": "IMPORT_VAT",
              "amount": {
                "value": "38.57",
                "currency": "USD"
              },
              "collectionMethod": "NET",
              "ebayReference": {
                "name": "VAT_ID",
                "value": "FR48878792076"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-15T22:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-25T22:00:00.000Z",
            "shipByDate": "2024-04-25T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "159",
      "totalFeeBasisAmount": {
        "value": "231.44",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "37.24",
        "currency": "USD"
      }
    },
    {
      "orderId": "19-11420-24630",
      "legacyOrderId": "19-11420-24630",
      "creationDate": "2024-04-10T22:23:03.000Z",
      "lastModifiedDate": "2024-04-19T21:19:10.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "skylineauto2012",
        "taxAddress": {
          "city": "PHILADELPHIA",
          "stateOrProvince": "PA",
          "postalCode": "19124-1626",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Philadelphia",
            "stateOrProvince": "PA",
            "postalCode": "19124",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "138.64",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "138.64",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "116.16",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-10T22:23:02.502Z",
            "amount": {
              "value": "116.16",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "116.16",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T21:19:00.000Z",
                "releaseDate": "2024-04-10T22:23:02.502Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-17T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-26T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "PHILADELPHIA",
                "stateOrProvince": "PA",
                "postalCode": "19124-1626",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/19-11420-24630/shipping_fulfillment/EX00000010497100001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062357231119",
          "legacyItemId": "355590381932",
          "sku": "75710-14250 75720-14250",
          "title": "Toyota Genuine Supra JZA80 MK4 1993-98 Moulding Front Door Belt LH & RH Set OEM",
          "lineItemCost": {
            "value": "138.64",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "138.64",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "0.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [
            {
              "amount": {
                "value": "0.0",
                "currency": "USD"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-17T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-26T07:00:00.000Z",
            "shipByDate": "2024-04-25T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "158",
      "totalFeeBasisAmount": {
        "value": "138.64",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "22.48",
        "currency": "USD"
      }
    },
    {
      "orderId": "10-11422-43737",
      "legacyOrderId": "10-11422-43737",
      "creationDate": "2024-04-09T18:11:16.000Z",
      "lastModifiedDate": "2024-04-15T16:27:42.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "ernma_7620",
        "taxAddress": {
          "city": "Miami",
          "stateOrProvince": "FL",
          "postalCode": "33168-6142",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Hialeah",
            "stateOrProvince": "FL",
            "postalCode": "33012",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "68.87",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "68.87",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "56.72",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420013_S",
            "paymentDate": "2024-04-09T18:11:15.439Z",
            "amount": {
              "value": "56.72",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "56.72",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-16T16:27:33.000Z",
                "releaseDate": "2024-04-09T18:11:15.439Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-25T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Miami",
                "stateOrProvince": "FL",
                "postalCode": "33168-6142",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/10-11422-43737/shipping_fulfillment/EX00000009911350001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062371334410",
          "legacyItemId": "355590381943",
          "title": "Toyota Genuine 69-75 Land Cruiser FJ40 FJ45 Side Turn Signal Marker Lights Lamp",
          "lineItemCost": {
            "value": "68.87",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "68.87",
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
                "value": "4.82",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-25T07:00:00.000Z",
            "shipByDate": "2024-04-24T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "157",
      "totalFeeBasisAmount": {
        "value": "73.69",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "12.15",
        "currency": "USD"
      }
    },
    {
      "orderId": "12-11420-68379",
      "legacyOrderId": "12-11420-68379",
      "creationDate": "2024-04-09T17:31:04.000Z",
      "lastModifiedDate": "2024-04-16T18:21:17.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "greenacacg",
        "taxAddress": {
          "city": "McKinney",
          "stateOrProvince": "TX",
          "postalCode": "75070-4504",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "McKinney",
            "stateOrProvince": "TX",
            "postalCode": "75072",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "79.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "79.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "65.12",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420012_S",
            "paymentDate": "2024-04-09T17:31:04.609Z",
            "amount": {
              "value": "65.12",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "65.12",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-17T18:21:12.000Z",
                "releaseDate": "2024-04-09T17:31:04.609Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-25T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "McKinney",
                "stateOrProvince": "TX",
                "postalCode": "75070-4504",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/12-11420-68379/shipping_fulfillment/EX00000009911090001020002D0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062389806212",
          "legacyItemId": "355590382041",
          "title": "TOYOTA GENUINE Land Cruiser 60 Room Rear View Mirror Interior NEW 87810-90A03",
          "lineItemCost": {
            "value": "79.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "79.19",
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
                "value": "6.53",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-25T07:00:00.000Z",
            "shipByDate": "2024-04-24T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "156",
      "totalFeeBasisAmount": {
        "value": "85.72",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "14.07",
        "currency": "USD"
      }
    },
    {
      "orderId": "03-11423-65848",
      "legacyOrderId": "03-11423-65848",
      "creationDate": "2024-04-08T17:35:12.000Z",
      "lastModifiedDate": "2024-04-15T21:19:32.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "ktk78-97",
        "taxAddress": {
          "city": "Waddell",
          "stateOrProvince": "AZ",
          "postalCode": "85355-4356",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Waddell",
            "stateOrProvince": "AZ",
            "postalCode": "85355",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "152.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "152.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "126.69",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-08T17:35:11.639Z",
            "amount": {
              "value": "126.69",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "126.69",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-16T21:19:23.000Z",
                "releaseDate": "2024-04-08T17:35:11.639Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-15T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-24T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Waddell",
                "stateOrProvince": "AZ",
                "postalCode": "85355-4356",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/03-11423-65848/shipping_fulfillment/EX00000009910550001020002F0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10063221467103",
          "legacyItemId": "355590381945",
          "title": "TOYOTA Genuine TACOMA 4RUNNER 1996-2000 Charcoal Canister 77740-35392",
          "lineItemCost": {
            "value": "152.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "152.98",
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
                "value": "9.64",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-15T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-24T07:00:00.000Z",
            "shipByDate": "2024-04-23T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "155",
      "totalFeeBasisAmount": {
        "value": "162.62",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "26.29",
        "currency": "USD"
      }
    },
    {
      "orderId": "14-11406-85671",
      "legacyOrderId": "14-11406-85671",
      "creationDate": "2024-04-06T22:42:39.000Z",
      "lastModifiedDate": "2024-04-21T10:25:44.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "collectibleculture_mik3d05",
        "taxAddress": {
          "city": "Corona",
          "stateOrProvince": "CA",
          "postalCode": "92882-8710",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Corona",
            "stateOrProvince": "CA",
            "postalCode": "92882",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "23.5",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "23.5",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "18.99",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-06T22:42:38.912Z",
            "amount": {
              "value": "18.99",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "18.99",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T23:14:07.000Z",
                "releaseDate": "2024-04-06T22:42:38.912Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-15T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-17T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Corona",
                "stateOrProvince": "CA",
                "postalCode": "92882-8710",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/14-11406-85671/shipping_fulfillment/EX00000009913850001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062279493414",
          "legacyItemId": "355590382009",
          "title": "Pokemon Japanese 2021 Pikachu YU NAGAMA X PCG Campaign Promo 208/S-P",
          "lineItemCost": {
            "value": "23.5",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "AUCTION",
          "listingMarketplaceId": "EBAY_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "23.5",
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
                "value": "2.06",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "fromBestOffer": false,
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-15T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-17T07:00:00.000Z",
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
      "salesRecordReference": "147",
      "totalFeeBasisAmount": {
        "value": "25.56",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "4.51",
        "currency": "USD"
      }
    },
    {
      "orderId": "05-11413-86394",
      "legacyOrderId": "05-11413-86394",
      "creationDate": "2024-04-06T17:57:18.000Z",
      "lastModifiedDate": "2024-04-18T22:43:11.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "toy4matt",
        "taxAddress": {
          "stateOrProvince": "OR",
          "postalCode": "97006-6429",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Beaverton",
            "stateOrProvince": "OR",
            "postalCode": "97006",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "95.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "95.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "79.63",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420010_S",
            "paymentDate": "2024-04-06T17:57:18.142Z",
            "amount": {
              "value": "79.63",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "79.63",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-19T22:43:08.000Z",
                "releaseDate": "2024-04-06T17:57:18.142Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-12T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-20T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Beaverton",
                "stateOrProvince": "OR",
                "postalCode": "97006-6429",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/05-11413-86394/shipping_fulfillment/EX00000010967920001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062516749105",
          "legacyItemId": "355590381924",
          "sku": "84250-35070",
          "title": "Genuine TOYOTA FJ CRUISER Switch Assy Steering Pad Radio Control 84250-35070 OEM",
          "lineItemCost": {
            "value": "95.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "95.19",
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
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-12T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-20T07:00:00.000Z",
            "shipByDate": "2024-04-19T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "154",
      "totalFeeBasisAmount": {
        "value": "95.19",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "15.56",
        "currency": "USD"
      }
    },
    {
      "orderId": "10-11405-59781",
      "legacyOrderId": "10-11405-59781",
      "creationDate": "2024-04-05T18:35:33.000Z",
      "lastModifiedDate": "2024-05-05T08:30:12.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "ivi04_2008",
        "taxAddress": {
          "city": "Ponce",
          "stateOrProvince": "PR",
          "postalCode": "00730-0516",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Ponce",
            "stateOrProvince": "PR",
            "postalCode": "00728",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "915.55",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "915.55",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "752.84",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-05T18:35:33.516Z",
            "amount": {
              "value": "752.84",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "High_ASP_C2C_MAX_DAY",
                "holdAmount": {
                  "value": "752.84",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-05-06T08:30:03.000Z",
                "releaseDate": "2024-04-05T18:35:33.516Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-22T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Ponce",
                "stateOrProvince": "PR",
                "postalCode": "00730-0516",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/10-11405-59781/shipping_fulfillment/EX00000010502310001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062272614810",
          "legacyItemId": "355590382012",
          "sku": "48910-60032",
          "title": "TOYOTA Genuine Land Cruiser Height Control Pump & Motor Assy 48910-60032 NEW",
          "lineItemCost": {
            "value": "915.55",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "915.55",
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
                "value": "105.29",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-22T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-27T07:00:00.000Z",
            "shipByDate": "2024-04-19T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "153",
      "totalFeeBasisAmount": {
        "value": "1020.84",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "162.71",
        "currency": "USD"
      }
    },
    {
      "orderId": "19-11396-02421",
      "legacyOrderId": "19-11396-02421",
      "creationDate": "2024-04-05T07:52:12.000Z",
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
          "value": "87.88",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "87.88",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "71.86",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-05T07:52:12.025Z",
            "amount": {
              "value": "71.86",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
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
        "https://api.ebay.com/sell/fulfillment/v1/order/19-11396-02421/shipping_fulfillment/EX00000009909220001020002E0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062216439719",
          "legacyItemId": "355590382011",
          "title": "HONDA CIVIC EG 3D 92-95 Genuine Rear Quarter Glass Window Molding Seal  Set OEM",
          "lineItemCost": {
            "value": "87.88",
            "currency": "USD"
          },
          "quantity": 1,
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
        "value": "16.02",
        "currency": "USD"
      }
    },
    {
      "orderId": "13-11401-09871",
      "legacyOrderId": "13-11401-09871",
      "creationDate": "2024-04-05T06:44:35.000Z",
      "lastModifiedDate": "2024-04-13T06:40:34.000Z",
      "orderFulfillmentStatus": "NOT_STARTED",
      "orderPaymentStatus": "FULLY_REFUNDED",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "mconti90",
        "taxAddress": {
          "stateOrProvince": "QLD",
          "postalCode": "4124",
          "countryCode": "AU"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Arundel",
            "stateOrProvince": "Queensland",
            "postalCode": "4214",
            "countryCode": "AU"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "78.19",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "16.0",
          "currency": "USD"
        },
        "total": {
          "value": "94.19",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "CANCELED",
        "cancelRequests": [
          {
            "cancelReason": "BUYER_ASKED_CANCEL",
            "cancelRequestedDate": "2024-04-13T06:37:03.530Z",
            "cancelInitiator": "SELLER",
            "cancelRequestId": "5359892106",
            "cancelRequestState": "COMPLETED"
          }
        ]
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "0.0",
          "currency": "USD"
        },
        "refunds": [
          {
            "refundDate": "2024-04-13T06:38:41.000Z",
            "amount": {
              "value": "77.29",
              "currency": "USD"
            },
            "refundStatus": "REFUNDED",
            "refundReferenceId": "5359892106"
          }
        ],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-05T06:44:34.921Z",
            "amount": {
              "value": "77.29",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "77.29",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-14T06:38:46.000Z",
                "releaseDate": "2024-04-05T06:44:34.921Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-10T14:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-21T14:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Greenbank",
                "stateOrProvince": "QLD",
                "postalCode": "4124",
                "countryCode": "AU"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [],
      "lineItems": [
        {
          "lineItemId": "10063543622913",
          "legacyItemId": "355590382016",
          "sku": "74232-22250 74231-22320",
          "title": "Genuine Toyota Mark2 Chaser Front armrest base panel Window Switch panel Set",
          "lineItemCost": {
            "value": "78.19",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_AU",
          "lineItemFulfillmentStatus": "NOT_STARTED",
          "total": {
            "value": "94.19",
            "currency": "USD"
          },
          "deliveryCost": {
            "shippingCost": {
              "value": "16.0",
              "currency": "USD"
            }
          },
          "appliedPromotions": [],
          "taxes": [],
          "ebayCollectAndRemitTaxes": [
            {
              "taxType": "GST",
              "amount": {
                "value": "9.42",
                "currency": "USD"
              },
              "collectionMethod": "NET",
              "ebayReference": {
                "name": "GST",
                "value": "ABN#64652016681"
              }
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "refunds": [
            {
              "refundDate": "2024-04-13T06:38:41.000Z",
              "amount": {
                "value": "94.19",
                "currency": "USD"
              }
            }
          ],
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-10T14:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-21T14:00:00.000Z",
            "shipByDate": "2024-04-19T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "151",
      "totalFeeBasisAmount": {
        "value": "103.61",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "16.9",
        "currency": "USD"
      }
    },
    {
      "orderId": "01-11407-71235",
      "legacyOrderId": "01-11407-71235",
      "creationDate": "2024-04-04T13:34:31.000Z",
      "lastModifiedDate": "2024-04-19T19:19:03.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "drumk-83",
        "taxAddress": {
          "city": "Pisgah Forest",
          "stateOrProvince": "NC",
          "postalCode": "28768-8885",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Pisgah Forest",
            "stateOrProvince": "NC",
            "postalCode": "28768",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "26.0",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "26.0",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "21.15",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420009_S",
            "paymentDate": "2024-04-04T13:34:30.738Z",
            "amount": {
              "value": "21.15",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "21.15",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T19:18:58.000Z",
                "releaseDate": "2024-04-04T13:34:30.738Z"
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
                "city": "Pisgah Forest",
                "stateOrProvince": "NC",
                "postalCode": "28768-8885",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/01-11407-71235/shipping_fulfillment/EX00000009913610001020002A0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062315606101",
          "legacyItemId": "355590382013",
          "title": "Pokemon Card Game Pikachu Yu Nagaba promo E 208/s-p SEALED Limited Japan #4",
          "lineItemCost": {
            "value": "26.0",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "AUCTION",
          "listingMarketplaceId": "EBAY_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "26.0",
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
                "value": "1.76",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "fromBestOffer": false,
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-10T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
            "shipByDate": "2024-04-11T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "146",
      "totalFeeBasisAmount": {
        "value": "27.76",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "4.85",
        "currency": "USD"
      }
    },
    {
      "orderId": "22-11390-12733",
      "legacyOrderId": "22-11390-12733",
      "creationDate": "2024-04-04T13:21:01.000Z",
      "lastModifiedDate": "2024-04-21T14:56:39.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "ronin_tcg",
        "taxAddress": {
          "city": "Brooklyn",
          "stateOrProvince": "NY",
          "postalCode": "11229-4317",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Brooklyn",
            "stateOrProvince": "NY",
            "postalCode": "11229",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "23.5",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "23.5",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "18.99",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-04T13:21:01.450Z",
            "amount": {
              "value": "18.99",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "18.99",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-20T20:16:37.000Z",
                "releaseDate": "2024-04-04T13:21:01.450Z"
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
                "city": "Brooklyn",
                "stateOrProvince": "NY",
                "postalCode": "11229-4317",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ExpeditedShippingFromOutsideUS"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/22-11390-12733/shipping_fulfillment/EX00000009913980001020002F0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062559628122",
          "legacyItemId": "355590382030",
          "title": "208/s-p Pokemon Card Game Pikachu Yu Nagaba promo E  SEALED Limited Japan",
          "lineItemCost": {
            "value": "23.5",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "AUCTION",
          "listingMarketplaceId": "EBAY_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "23.5",
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
                "value": "2.09",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "fromBestOffer": false,
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-10T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-16T07:00:00.000Z",
            "shipByDate": "2024-04-11T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "148",
      "totalFeeBasisAmount": {
        "value": "25.59",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "4.51",
        "currency": "USD"
      }
    },
    {
      "orderId": "26-11386-67506",
      "legacyOrderId": "26-11386-67506",
      "creationDate": "2024-04-04T13:03:11.000Z",
      "lastModifiedDate": "2024-04-18T09:34:34.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "anatol855343",
        "taxAddress": {
          "stateOrProvince": "52/15",
          "postalCode": "5836412",
          "countryCode": "IL"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "holon",
            "stateOrProvince": "52/15",
            "postalCode": "5836412",
            "countryCode": "IL"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "62.54",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "62.54",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "52.15",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-04T13:03:11.451Z",
            "amount": {
              "value": "52.15",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "52.15",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-19T09:34:33.000Z",
                "releaseDate": "2024-04-04T13:03:11.451Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-15T21:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-29T21:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "holon",
                "stateOrProvince": "52/15",
                "postalCode": "5836412",
                "countryCode": "IL"
              }
            },
            "shippingServiceCode": "ExpeditedInternational"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/26-11386-67506/shipping_fulfillment/EX00000009909850001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062150554326",
          "legacyItemId": "355590382002",
          "title": "HONDA GENUINE CIVIC Type-R SIR 96-00 Coolant Reservoir Tank 4 ITEM Set OEM JDM",
          "lineItemCost": {
            "value": "62.54",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "62.54",
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
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-15T21:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-29T21:00:00.000Z",
            "shipByDate": "2024-04-18T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "salesRecordReference": "150",
      "totalFeeBasisAmount": {
        "value": "62.54",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "10.39",
        "currency": "USD"
      }
    },
    {
      "orderId": "25-11385-38183",
      "legacyOrderId": "25-11385-38183",
      "creationDate": "2024-04-03T21:42:02.000Z",
      "lastModifiedDate": "2024-04-13T06:40:19.000Z",
      "orderFulfillmentStatus": "NOT_STARTED",
      "orderPaymentStatus": "FULLY_REFUNDED",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "copar9012",
        "taxAddress": {
          "city": "Jacksonville",
          "stateOrProvince": "NC",
          "postalCode": "28546-8395",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Kailua",
            "stateOrProvince": "HI",
            "postalCode": "96734",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "245.98",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "245.98",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "CANCELED",
        "cancelRequests": [
          {
            "cancelReason": "ADDRESS_ISSUES",
            "cancelRequestedDate": "2024-04-13T06:35:52.571Z",
            "cancelInitiator": "SELLER",
            "cancelRequestId": "5359892062",
            "cancelRequestState": "COMPLETED"
          }
        ]
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "0.0",
          "currency": "USD"
        },
        "refunds": [
          {
            "refundDate": "2024-04-13T06:38:35.000Z",
            "amount": {
              "value": "203.7",
              "currency": "USD"
            },
            "refundStatus": "REFUNDED",
            "refundReferenceId": "5359892062"
          }
        ],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-03T21:42:01.826Z",
            "amount": {
              "value": "203.7",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "203.7",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-14T06:38:37.000Z",
                "releaseDate": "2024-04-03T21:42:01.826Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-11T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Jacksonville",
                "stateOrProvince": "NC",
                "postalCode": "28546-8395",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [],
      "lineItems": [
        {
          "lineItemId": "10062133665025",
          "legacyItemId": "355590381970",
          "sku": "63627-17010 63628-17010",
          "title": "TOYOTA OEM MR2 AW11 T-Bar Removable Roof Weatherstrip R&L SET 63628 &63627-17010",
          "lineItemCost": {
            "value": "245.98",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "NOT_STARTED",
          "total": {
            "value": "245.98",
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
                "value": "17.22",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "refunds": [
            {
              "refundDate": "2024-04-13T06:38:35.000Z",
              "amount": {
                "value": "245.98",
                "currency": "USD"
              }
            }
          ],
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-11T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "shipByDate": "2024-04-18T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "145",
      "totalFeeBasisAmount": {
        "value": "263.2",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "42.28",
        "currency": "USD"
      }
    },
    {
      "orderId": "23-11385-96947",
      "legacyOrderId": "23-11385-96947",
      "creationDate": "2024-04-03T17:41:27.000Z",
      "lastModifiedDate": "2024-04-15T17:19:48.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "bader1616",
        "taxAddress": {
          "city": "Springfield Gardens",
          "stateOrProvince": "NY",
          "postalCode": "11413",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Doha",
            "stateOrProvince": "Qatar",
            "postalCode": "16816",
            "countryCode": "QA"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "177.69",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "177.69",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "146.51",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-03T17:41:26.880Z",
            "amount": {
              "value": "146.51",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "146.51",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-16T17:19:41.000Z",
                "releaseDate": "2024-04-03T17:41:26.880Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-10T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Springfield Gardens",
                "stateOrProvince": "NY",
                "postalCode": "11413",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/23-11385-96947/shipping_fulfillment/EX00000009907500001020002B0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062494406323",
          "legacyItemId": "355590381948",
          "title": "Genuine Land Cruiser FJ40 BJ40 Front Steel Door Hinges SET Toyota OEM 1969-1986",
          "lineItemCost": {
            "value": "177.69",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "177.69",
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
                "value": "15.77",
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
            "maxEstimatedDeliveryDate": "2024-04-19T07:00:00.000Z",
            "shipByDate": "2024-04-18T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "144",
      "totalFeeBasisAmount": {
        "value": "193.46",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "31.18",
        "currency": "USD"
      }
    },
    {
      "orderId": "21-11384-39761",
      "legacyOrderId": "21-11384-39761",
      "creationDate": "2024-04-02T23:36:00.000Z",
      "lastModifiedDate": "2024-05-08T13:50:55.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "nardive",
        "taxAddress": {
          "city": "Toa Alta",
          "stateOrProvince": "PR",
          "postalCode": "00953-4728",
          "countryCode": "PR"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "Toa Alta",
            "stateOrProvince": "PR",
            "postalCode": "00953",
            "countryCode": "PR"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "129.55",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "129.55",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "106.16",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-02T23:35:59.625Z",
            "amount": {
              "value": "106.16",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "106.16",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-19T22:40:32.000Z",
                "releaseDate": "2024-04-02T23:35:59.625Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-12T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-20T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "Toa Alta",
                "stateOrProvince": "PR",
                "postalCode": "00953-4728",
                "countryCode": "PR"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/21-11384-39761/shipping_fulfillment/EX00000010494940001020002C0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10067434707621",
          "legacyItemId": "355590382042",
          "sku": "55670-53010",
          "title": "Toyota Lexus Genuine Instrument Panel AC heater air vent IS250 IS350 55670-53010",
          "lineItemCost": {
            "value": "129.55",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "129.55",
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
                "value": "14.9",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-12T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-20T07:00:00.000Z",
            "shipByDate": "2024-04-17T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "143",
      "totalFeeBasisAmount": {
        "value": "144.45",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "23.39",
        "currency": "USD"
      }
    },
    {
      "orderId": "15-11384-10787",
      "legacyOrderId": "15-11384-10787",
      "creationDate": "2024-04-01T19:47:13.000Z",
      "lastModifiedDate": "2024-04-09T20:18:24.000Z",
      "orderFulfillmentStatus": "FULFILLED",
      "orderPaymentStatus": "PAID",
      "sellerId": "ngc-motors",
      "buyer": {
        "username": "classicautoresto",
        "taxAddress": {
          "city": "North Fort Myers",
          "stateOrProvince": "FL",
          "postalCode": "33903-1402",
          "countryCode": "US"
        },
        "buyerRegistrationAddress": {
          "contactAddress": {
            "city": "North Fort Myers",
            "stateOrProvince": "FL",
            "postalCode": "33903",
            "countryCode": "US"
          }
        }
      },
      "pricingSummary": {
        "priceSubtotal": {
          "value": "177.69",
          "currency": "USD"
        },
        "deliveryCost": {
          "value": "0.0",
          "currency": "USD"
        },
        "total": {
          "value": "177.69",
          "currency": "USD"
        }
      },
      "cancelStatus": {
        "cancelState": "NONE_REQUESTED",
        "cancelRequests": []
      },
      "paymentSummary": {
        "totalDueSeller": {
          "value": "147.17",
          "currency": "USD"
        },
        "refunds": [],
        "payments": [
          {
            "paymentMethod": "EBAY",
            "paymentReferenceId": "420004_S",
            "paymentDate": "2024-04-01T19:47:12.789Z",
            "amount": {
              "value": "147.17",
              "currency": "USD"
            },
            "paymentStatus": "PAID",
            "paymentHolds": [
              {
                "holdReason": "SELLER_IS_ON_BLOCK_LIST",
                "holdAmount": {
                  "value": "147.17",
                  "currency": "USD"
                },
                "holdState": "RELEASED",
                "expectedReleaseDate": "2024-04-10T20:18:12.000Z",
                "releaseDate": "2024-04-01T19:47:12.789Z"
              }
            ]
          }
        ]
      },
      "fulfillmentStartInstructions": [
        {
          "fulfillmentInstructionsType": "SHIP_TO",
          "minEstimatedDeliveryDate": "2024-04-08T07:00:00.000Z",
          "maxEstimatedDeliveryDate": "2024-04-17T07:00:00.000Z",
          "ebaySupportedFulfillment": false,
          "shippingStep": {
            "shipTo": {
              "contactAddress": {
                "city": "North Fort Myers",
                "stateOrProvince": "FL",
                "postalCode": "33903-1402",
                "countryCode": "US"
              }
            },
            "shippingServiceCode": "ShippingMethodExpress"
          }
        }
      ],
      "fulfillmentHrefs": [
        "https://api.ebay.com/sell/fulfillment/v1/order/15-11384-10787/shipping_fulfillment/EX00000009231240001020002G0N"
      ],
      "lineItems": [
        {
          "lineItemId": "10062159217115",
          "legacyItemId": "355590381948",
          "title": "Genuine Land Cruiser FJ40 BJ40 Front Steel Door Hinges SET Toyota OEM 1969-1986",
          "lineItemCost": {
            "value": "177.69",
            "currency": "USD"
          },
          "quantity": 1,
          "soldFormat": "FIXED_PRICE",
          "listingMarketplaceId": "EBAY_MOTORS_US",
          "purchaseMarketplaceId": "EBAY_US",
          "lineItemFulfillmentStatus": "FULFILLED",
          "total": {
            "value": "177.69",
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
                "value": "11.55",
                "currency": "USD"
              },
              "collectionMethod": "NET"
            }
          ],
          "properties": {
            "buyerProtection": true
          },
          "lineItemFulfillmentInstructions": {
            "minEstimatedDeliveryDate": "2024-04-08T07:00:00.000Z",
            "maxEstimatedDeliveryDate": "2024-04-17T07:00:00.000Z",
            "shipByDate": "2024-04-16T14:59:59.000Z",
            "guaranteedDelivery": false
          },
          "itemLocation": {
            "location": "JP",
            "countryCode": "JP"
          }
        }
      ],
      "ebayCollectAndRemitTax": true,
      "salesRecordReference": "142",
      "totalFeeBasisAmount": {
        "value": "189.24",
        "currency": "USD"
      },
      "totalMarketplaceFee": {
        "value": "30.52",
        "currency": "USD"
      }
    }
  ]
}
