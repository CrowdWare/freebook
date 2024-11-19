## Payment 
    30,- € from stripe 

print(payload)
---
{#012  "id": "evt_1QKKUZQ4PHylGmF0EWTgjADI",#012  "object": "event",#012  "api_version": "2024-10-28.acacia",#012  "created": 1731419451,#012  "data": {#012    "object": {#012      "id": "cs_test_a1jllPnHvB8Rvzv83xtUNXkMbkNxCFg6WVUDYOh5DKFRSU9sJJ4TuFrG97",#012      "object": "checkout.session",#012      "adaptive_pricing": null,#012      "after_expiration": null,#012      "allow_promotion_codes": false,#012      "amount_subtotal": 3000,#012      "amount_total": 3000,#012      "automatic_tax": {#012        "enabled": false,#012        "liability": null,#012        "status": null#012      },#012      "billing_address_collection": "auto",#012      "cancel_url": "https://stripe.com",#012      "client_reference_id": null,#012      "client_secret": null,#012      "consent": null,#012      "consent_collection": {#012        "payment_method_reuse_agreement": null,#012        "promotions": "none",#012        "terms_of_service": "none"#012      },#012      "created": 1731419429,#012      "currency": "eur",#012      "currency_convers

{#012  "id": "evt_1QKKhLQ4PHylGmF0N9jukZez",#012  "object": "event",#012  "api_version": "2024-10-28.acacia",#012  "created": 1731420243,#012  "data": {#012    "object": {#012      "id": "cs_test_a1TvknjB0OS3bm23BcmZczChitJG4nAomLq31mDbTTvjqgaUbz2feqLe8q",#012      "object": "checkout.session",#012      "adaptive_pricing": null,#012      "after_expiration": null,#012      "allow_promotion_codes": false,#012      "amount_subtotal": 3000,#012      "amount_total": 3000,#012      "automatic_tax": {#012        "enabled": false,#012        "liability": null,#012        "status": null#012      },#012      "billing_address_collection": "auto",#012      "cancel_url": "https://stripe.com",#012      "client_reference_id": null,#012      "client_secret": null,#012      "consent": null,#012      "consent_collection": {#012        "payment_method_reuse_agreement": null,#012        "promotions": "none",#012        "terms_of_service": "none"#012      },#012      "created": 1731420235,#012      "currency": "eur",#012      "currency_convers


session
---
{
  "object": {
    "id": "cs_test_a1ZQrOrAwauYGrjDLvtcDz6AzRt9BDLIHKM3jgBZKvbo7yQ1tHWqextBVo",
    "object": "checkout.session",
    "adaptive_pricing": null,
    "after_expiration": null,
    "allow_promotion_codes": false,
    "amount_subtotal": 6000,
    "amount_total": 6000,
    "automatic_tax": {
      "enabled": false,
      "liability": null,
      "status": null
    },
    "billing_address_collection": "auto",
    "cancel_url": "https://stripe.com",
    "client_reference_id": null,
    "client_secret": null,
    "consent": null,
    "consent_collection": {
      "payment_method_reuse_agreement": null,
      "promotions": "none",
      "terms_of_service": "none"
    },
    "created": 1731428786,
    "currency": "eur",
    "currency_conversion": null,
    "custom_fields": [],
    "custom_text": {
      "after_submit": null,
      "shipping_address": null,
      "submit": null,
      "terms_of_service_acceptance": null
    },
    "customer": "cus_RCmUHIqhGm3wW5",
    "customer_creation": "if_required",
    "customer_details": {
      "address": {
        "city": null,
        "country": "DE",
        "line1": null,
        "line2": null,
        "postal_code": null,
        "state": null
      },
      "email": "japp.olaf@gmail.com",
      "name": "Olaf Japp",
      "phone": null,
      "tax_exempt": "none",
      "tax_ids": []
    },
    "customer_email": null,
    "expires_at": 1731515185,
    "invoice": "in_1QKMvBQ4PHylGmF0FzyhVpWG",
    "invoice_creation": null,
    "livemode": false,
    "locale": "de",
    "metadata": {},
    "mode": "subscription",
    "payment_intent": null,
    "payment_link": "plink_1QKMksQ4PHylGmF0aqGUE6AU",
    "payment_method_collection": "always",
    "payment_method_configuration_details": {
      "id": "pmc_1QKJAvQ4PHylGmF09Sb3dLsv",
      "parent": null
    },
    "payment_method_options": {
      "card": {
        "request_three_d_secure": "automatic"
      }
    },
    "payment_method_types": [
      "card",
      "link"
    ],
    "payment_status": "paid",
    "phone_number_collection": {
      "enabled": false
    },
    "recovered_from": null,
    "saved_payment_method_options": {
      "allow_redisplay_filters": [
        "always"
      ],
      "payment_method_remove": null,
      "payment_method_save": null
    },
    "setup_intent": null,
    "shipping_address_collection": null,
    "shipping_cost": null,
    "shipping_details": null,
    "shipping_options": [],
    "status": "complete",
    "submit_type": "auto",
    "subscription": "sub_1QKMvBQ4PHylGmF0ETtbsNQT",
    "success_url": "https://stripe.com",
    "total_details": {
      "amount_discount": 0,
      "amount_shipping": 0,
      "amount_tax": 0
    },
    "ui_mode": "hosted",
    "url": null
  },
  "previous_attributes": null
}

print(sig_header)
---
t=1731419451,v1=2306dc0aaf135a94307751c28b29fc4ae242c7dfd64d5e29c6a5e651e4891eee,v0=1a3c3a221b2cfc71d5b8c20c31b1e9b8ddbe0d79c77dab8e48ab0949e162438b