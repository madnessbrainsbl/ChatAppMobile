package crc6497ec90c5b87a4c68;


public class AndroidWebViewRenderer_MyWebClient
	extends android.webkit.WebChromeClient
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onPermissionRequest:(Landroid/webkit/PermissionRequest;)V:GetOnPermissionRequest_Landroid_webkit_PermissionRequest_Handler\n" +
			"";
		mono.android.Runtime.register ("ChatApp.Mobile.Droid.AndroidWebViewRenderer+MyWebClient, ChatApp.Mobile.Android", AndroidWebViewRenderer_MyWebClient.class, __md_methods);
	}


	public AndroidWebViewRenderer_MyWebClient ()
	{
		super ();
		if (getClass () == AndroidWebViewRenderer_MyWebClient.class) {
			mono.android.TypeManager.Activate ("ChatApp.Mobile.Droid.AndroidWebViewRenderer+MyWebClient, ChatApp.Mobile.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public AndroidWebViewRenderer_MyWebClient (android.app.Activity p0)
	{
		super ();
		if (getClass () == AndroidWebViewRenderer_MyWebClient.class) {
			mono.android.TypeManager.Activate ("ChatApp.Mobile.Droid.AndroidWebViewRenderer+MyWebClient, ChatApp.Mobile.Android", "Android.App.Activity, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	@android.annotation.TargetApi(
value = 21)

	public void onPermissionRequest (android.webkit.PermissionRequest p0)
	{
		n_onPermissionRequest (p0);
	}

	private native void n_onPermissionRequest (android.webkit.PermissionRequest p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
