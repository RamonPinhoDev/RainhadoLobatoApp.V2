package crc64f9cf19485bf7e9d8;


public class AuthCallback
	extends androidx.biometric.BiometricPrompt.AuthenticationCallback
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onAuthenticationSucceeded:(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V:GetOnAuthenticationSucceeded_Landroidx_biometric_BiometricPrompt_AuthenticationResult_Handler\n" +
			"n_onAuthenticationError:(ILjava/lang/CharSequence;)V:GetOnAuthenticationError_ILjava_lang_CharSequence_Handler\n" +
			"";
		mono.android.Runtime.register ("Plugin.Maui.Biometric.AuthCallback, Plugin.Maui.Biometric", AuthCallback.class, __md_methods);
	}

	public AuthCallback ()
	{
		super ();
		if (getClass () == AuthCallback.class) {
			mono.android.TypeManager.Activate ("Plugin.Maui.Biometric.AuthCallback, Plugin.Maui.Biometric", "", this, new java.lang.Object[] {  });
		}
	}

	public void onAuthenticationSucceeded (androidx.biometric.BiometricPrompt.AuthenticationResult p0)
	{
		n_onAuthenticationSucceeded (p0);
	}

	private native void n_onAuthenticationSucceeded (androidx.biometric.BiometricPrompt.AuthenticationResult p0);

	public void onAuthenticationError (int p0, java.lang.CharSequence p1)
	{
		n_onAuthenticationError (p0, p1);
	}

	private native void n_onAuthenticationError (int p0, java.lang.CharSequence p1);

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
