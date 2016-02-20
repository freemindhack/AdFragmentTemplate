# AdFragmentTemplate
Android Studio Template For Google Mobile Ads bottom banner fragment

## Installation

Add this line to your application's Gemfile:

### Mac

```
$ /Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/
$ git clone git@github.com:fughz/AdFragmentTemplate.git AdFragment
```

## Usage

select AdFragment from Fragment category.
![](https://raw.githubusercontent.com/fughz/AdFragmentTemplate/master/screenshot/01.png)

set Fragment name.
![](https://raw.githubusercontent.com/fughz/AdFragmentTemplate/master/screenshot/02.png)

set your adsens id to res/values/ad_config.xml
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="google_ads_banner_ad_unit_id">ca-app-pub-xxxxxxxxxxxxxxxxxx</string>
    <string-array name="test_devices">
        <item>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</item>
        <item>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</item>
    </string-array>
</resources>
```

write this code in your Activity layout file.
```
    <fragment
        android:id="@+id/adFragment"
        android:name="hm.orz.octworks.myapplication.AdFragment"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_alignParentBottom="true"
        android:layout_gravity="bottom"
        android:layout_marginTop="10dp"
        tools:layout="@layout/fragment_ad" />
```

display adsens banner in your Activity.
![](https://raw.githubusercontent.com/fughz/AdFragmentTemplate/master/screenshot/03.png)


## Contributing

1. Fork it ( https://github.com/fughz/AdFragmentTemplate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
