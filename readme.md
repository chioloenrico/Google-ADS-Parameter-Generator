# What is this project
This is a fork of [Facebook Parameter Generator Variable](https://help.stape.io/hc/en-us/articles/6093337140637-Facebook-parameter-generator) model from Stape. The original model generates Facebook variables (content_ids, contents, content_name) from GA4 Items.

I have modified this tag to generate Google Ads remarketing items from GA4 objects. This is a simple fork of the original model.

## How it functions
I have only inserted the retail object, but if you want, you can add all remarketing objects of Google Ads.

The Items object was built according to Google Ads documentation:

https://support.google.com/google-ads/answer/7305793?hl=en

## How to Use

Download the "Remarketing Items Google ADS.tpl" file and import it to Google Tag Manager. If you want to see the code, download the script.js file.

I recommend you to upload the model directly and view the code within Google Tag Manager.

## Why is it useful?
It's very useful because the items object for remarketing is different from the GA4 Items object. In the documentation we can see this structure:

```html
<script>
gtag('event','view_item', {
  'value': 998.55,
  'items': [
    {
      'id': 1234, 
      'google_business_vertical': 'retail'
    }]
});
</script>
```

We need to insert the 'id' parameter and 'google_business_vertical' parameter.