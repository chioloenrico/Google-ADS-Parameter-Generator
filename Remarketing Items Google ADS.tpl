___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Remarketing Items Google ADS",
  "description": "Generates the desired parameter from an array.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "orderItems",
    "displayName": "Array of Objects",
    "simpleValueType": true,
    "help": "For example, this can be Items array from enhanced ecommerce variable."
  },
  {
    "type": "RADIO",
    "name": "task",
    "displayName": "What to return",
    "radioItems": [
      {
        "value": "contents",
        "displayValue": "Retail"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "GROUP",
    "name": "keyGroup",
    "displayName": "Array Keys",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "keyId",
        "displayName": "Product ID",
        "simpleValueType": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

let content_name = '';
let content_ids = [];
let contents = [];
let num_items = 0;
let value = 0;

let arr = data.orderItems;
let task = data.task;

let keyId = data.keyId;
let keyPr = data.keyPr;
let keyNm = data.keyNm;
let keyQt = data.keyQt;

if (arr && arr.length) {
    if (task === 'name') {
        for (let i = 0; i < arr.length; i++) {
            if (i === 0) {
                content_name = arr[0][keyNm];
            } else {
                content_name = content_name + ', ' + arr[i][keyNm];
            }
        }
    
        return content_name;
    }
    
    
    if (task === 'contents') {
        for (let i = 0; i < arr.length; i++) {
            contents.push({
                'id': arr[i][keyId],
                'quantity': arr[i][keyQt],
                'google_business_vertical': 'retail'
            });
        }
    
        return contents;
    }
    
    
}

return task === 'name' ? '' : [];


___TESTS___

scenarios: []


___NOTES___

Created on 12/10/2021, 11:11:20


