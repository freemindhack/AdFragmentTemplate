package ${packageName};

import android.os.Bundle;
import android${SupportPackage}.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;

import ${packageName}.R;

public class ${className} extends Fragment {

    private AdView mAdView;
    
    public ${className}() {
        super();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle saveInstanceState) {
        return inflater.inflate(R.layout.fragment_ad, container, false);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);

        // Gets the ad view defined in layout/ad_fragment.xml with ad unit ID set in values/strings.xml
        View rootView = getView();
        if (rootView == null) {
            return;
        }
        mAdView = (AdView) rootView.findViewById(R.id.adView);
        if (mAdView != null) {

            // Create an ad request. Check logcat output for the hashed device ID to
            // get thet ads on aphysical device. e.g.
            // "Use AdRequest.Builder.addTestDevice("ABCDEF012345") to get test ads on this device."
            AdRequest.Builder builder = new AdRequest.Builder()
                    .addTestDevice(AdRequest.DEVICE_ID_EMULATOR);

            String[] testDevices = getResources().getStringArray(R.array.test_devices);
            for (String testDevice : testDevices){
                builder.addTestDevice(testDevice);
            }
            AdRequest adRequest = builder.build();

            mAdView.setAdListener(new AdListener() {
                @Override
                public void onAdFailedToLoad(int errorCode) {
                    super.onAdFailedToLoad(errorCode);

                    // display mAdView update
                    mAdView.setVisibility(AdView.GONE);
                }
            });

            // Start loading the ad in the background.
            mAdView.loadAd(adRequest);
        }
    }

    @Override
    public void onPause() {
        if (mAdView != null) {
            mAdView.pause();
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (mAdView != null) {
            mAdView.resume();
        }
    }

    @Override
    public void onDestroy() {
        if (mAdView != null) {
            mAdView.destroy();
        }
        super.onDestroy();
    }
}
