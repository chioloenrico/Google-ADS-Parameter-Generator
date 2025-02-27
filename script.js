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