; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [388 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1164 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 344
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 296
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x02123411c4e01926, ; 4: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 281
	i64 u0x022e81ea9c46e03a, ; 5: lib_CommunityToolkit.Maui.Core.dll.so => 175
	i64 u0x022f31be406de945, ; 6: Microsoft.Extensions.Options.ConfigurationExtensions => 191
	i64 u0x0284512fad379f7e, ; 7: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 8: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 9: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 10: lib_Xamarin.AndroidX.AppCompat.dll.so => 228
	i64 u0x03621c804933a890, ; 11: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 12: SQLitePCLRaw.provider.e_sqlite3.dll => 217
	i64 u0x037861ca1435352a, ; 13: OneSignalSDK.DotNet.Android.Core.Binding => 204
	i64 u0x0399610510a38a38, ; 14: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x043032f1d071fae0, ; 15: ru/Microsoft.Maui.Controls.resources => 372
	i64 u0x044440a55165631e, ; 16: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 350
	i64 u0x046eb1581a80c6b0, ; 17: vi/Microsoft.Maui.Controls.resources => 378
	i64 u0x0470607fd33c32db, ; 18: Microsoft.IdentityModel.Abstractions.dll => 194
	i64 u0x047408741db2431a, ; 19: Xamarin.AndroidX.DynamicAnimation => 251
	i64 u0x0517ef04e06e9f76, ; 20: System.Net.Primitives => 71
	i64 u0x051a3be159e4ef99, ; 21: Xamarin.GooglePlayServices.Tasks => 334
	i64 u0x0565d18c6da3de38, ; 22: Xamarin.AndroidX.RecyclerView => 285
	i64 u0x0580fcad5f8dc5ac, ; 23: lib_Xamarin.Google.Dagger.dll.so => 326
	i64 u0x0581db89237110e9, ; 24: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 25: Microsoft.Maui.dll => 200
	i64 u0x05a1c25e78e22d87, ; 26: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x06076b5d2b581f08, ; 27: zh-HK/Microsoft.Maui.Controls.resources => 379
	i64 u0x06388ffe9f6c161a, ; 28: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 29: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 30: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 256
	i64 u0x0680a433c781bb3d, ; 31: Xamarin.AndroidX.Collection.Jvm => 237
	i64 u0x069fff96ec92a91d, ; 32: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 33: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 253
	i64 u0x0739448d84d3b016, ; 34: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 299
	i64 u0x07469f2eecce9e85, ; 35: mscorlib.dll => 167
	i64 u0x07c57877c7ba78ad, ; 36: ru/Microsoft.Maui.Controls.resources.dll => 372
	i64 u0x07dcdc7460a0c5e4, ; 37: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 38: lib_Microsoft.Extensions.Logging.Debug.dll.so => 189
	i64 u0x088610fc2509f69e, ; 39: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 300
	i64 u0x08a7c865576bbde7, ; 40: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 41: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 248
	i64 u0x08f3c9788ee2153c, ; 42: Xamarin.AndroidX.DrawerLayout => 250
	i64 u0x09076b821f278db5, ; 43: Xamarin.Google.Dagger => 326
	i64 u0x09138715c92dba90, ; 44: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 45: lib_Microsoft.Extensions.Options.dll.so => 190
	i64 u0x092266563089ae3e, ; 46: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x098b50f911ccea8d, ; 47: lib_Xamarin.GooglePlayServices.Basement.dll.so => 331
	i64 u0x09ac681cd3340a4c, ; 48: lib_Xamarin.AndroidX.Room.Runtime.dll.so => 288
	i64 u0x09d144a7e214d457, ; 49: System.Security.Cryptography => 127
	i64 u0x09da6dfc3439e851, ; 50: lib_Xamarin.Firebase.Components.dll.so => 310
	i64 u0x09e2b9f743db21a8, ; 51: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 52: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 53: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 54: sk/Microsoft.Maui.Controls.resources => 373
	i64 u0x0b521223ae889727, ; 55: Xamarin.Firebase.Messaging => 319
	i64 u0x0b6aff547b84fbe9, ; 56: Xamarin.KotlinX.Serialization.Core.Jvm => 347
	i64 u0x0bb6e71c7e6b45a8, ; 57: lib_Plugin.Maui.Biometric.dll.so => 211
	i64 u0x0be2e1f8ce4064ed, ; 58: Xamarin.AndroidX.ViewPager => 302
	i64 u0x0c3ca6cc978e2aae, ; 59: pt-BR/Microsoft.Maui.Controls.resources => 369
	i64 u0x0c59ad9fbbd43abe, ; 60: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 61: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 222
	i64 u0x0c74af560004e816, ; 62: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 63: lib_Microsoft.Maui.Essentials.dll.so => 201
	i64 u0x0c83c82812e96127, ; 64: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 65: Xamarin.AndroidX.Security.SecurityCrypto => 291
	i64 u0x0d13cd7cce4284e4, ; 66: System.Security.SecureString => 130
	i64 u0x0d63f4f73521c24f, ; 67: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 290
	i64 u0x0e04e702012f8463, ; 68: Xamarin.AndroidX.Emoji2 => 252
	i64 u0x0e14e73a54dda68e, ; 69: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0e5f1ca7132adebb, ; 70: Xamarin.Firebase.Installations.dll => 316
	i64 u0x0ee0094c4d11c3a0, ; 71: lib_OneSignalSDK.DotNet.Android.InAppMessages.Binding.dll.so => 205
	i64 u0x0f37dd7a62ae99af, ; 72: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 238
	i64 u0x0f5e7abaa7cf470a, ; 73: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 74: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 75: Xamarin.AndroidX.CustomView => 247
	i64 u0x1065c4cb554c3d75, ; 76: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 77: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 78: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 79: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 80: System.Net.WebSockets.dll => 81
	i64 u0x11d2a2a57f14fcae, ; 81: Xamarin.AndroidX.Biometric => 233
	i64 u0x11f26371eee0d3c1, ; 82: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 269
	i64 u0x11fbe62d469cc1c8, ; 83: Microsoft.VisualStudio.DesignTools.TapContract.dll => 384
	i64 u0x12128b3f59302d47, ; 84: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 85: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 86: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 87: Xamarin.AndroidX.RecyclerView.dll => 285
	i64 u0x12d3b63863d4ab0b, ; 88: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x134085e8fa0a1a65, ; 89: Xamarin.AndroidX.Sqlite.dll => 293
	i64 u0x134eab1061c395ee, ; 90: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 91: Xamarin.AndroidX.Browser => 234
	i64 u0x13a01de0cbc3f06c, ; 92: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 356
	i64 u0x13beedefb0e28a45, ; 93: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 94: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 95: he/Microsoft.Maui.Controls.resources => 357
	i64 u0x1403071365bcd83a, ; 96: Xamarin.Firebase.Annotations => 308
	i64 u0x143d8ea60a6a4011, ; 97: Microsoft.Extensions.DependencyInjection.Abstractions => 183
	i64 u0x1497051b917530bd, ; 98: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14b78ce3adce0011, ; 99: Microsoft.VisualStudio.DesignTools.TapContract => 384
	i64 u0x14c7136b1f3e05a2, ; 100: OneSignalSDK.DotNet.Core.dll => 209
	i64 u0x14d612a531c79c05, ; 101: Xamarin.JSpecify.dll => 337
	i64 u0x14e68447938213b7, ; 102: Xamarin.AndroidX.Collection.Ktx.dll => 238
	i64 u0x152a448bd1e745a7, ; 103: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 104: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 105: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 106: System.Resources.Writer.dll => 101
	i64 u0x16bf2a22df043a09, ; 107: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 108: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 109: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 110: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 111: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 112: Xamarin.KotlinX.Coroutines.Core => 344
	i64 u0x1752c12f1e1fc00c, ; 113: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 114: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 360
	i64 u0x17f9358913beb16a, ; 115: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 116: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 117: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 347
	i64 u0x18a9befae51bb361, ; 118: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 119: nb/Microsoft.Maui.Controls.resources.dll => 366
	i64 u0x193d7a04b7eda8bc, ; 120: lib_Xamarin.AndroidX.Print.dll.so => 283
	i64 u0x19777fba3c41b398, ; 121: Xamarin.AndroidX.Startup.StartupRuntime.dll => 295
	i64 u0x19a4c090f14ebb66, ; 122: System.Security.Claims => 119
	i64 u0x1a91866a319e9259, ; 123: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1a9a69dd443930f5, ; 124: OneSignalSDK.DotNet.Android.InAppMessages.Binding.dll => 205
	i64 u0x1aac34d1917ba5d3, ; 125: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 126: lib-th-Microsoft.Maui.Controls.resources.dll.so => 375
	i64 u0x1aea8f1c3b282172, ; 127: lib_System.Net.Ping.dll.so => 70
	i64 u0x1af411b9646568ad, ; 128: lib_Plugin.Maui.SwipeCardView.dll.so => 386
	i64 u0x1b4b7a1d0d265fa2, ; 129: Xamarin.Android.Glide.DiskLruCache => 221
	i64 u0x1bbdb16cfa73e785, ; 130: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 270
	i64 u0x1bc766e07b2b4241, ; 131: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 286
	i64 u0x1c292b1598348d77, ; 132: Microsoft.Extensions.Diagnostics.dll => 184
	i64 u0x1c753b5ff15bce1b, ; 133: Mono.Android.Runtime.dll => 171
	i64 u0x1c7cbc0ecd18cdaf, ; 134: Xamarin.Firebase.Encoders.dll => 312
	i64 u0x1cd47467799d8250, ; 135: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 136: System.Globalization.Calendars.dll => 40
	i64 u0x1da4110562816681, ; 137: Xamarin.AndroidX.Security.SecurityCrypto.dll => 291
	i64 u0x1db6820994506bf5, ; 138: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 139: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 140: Xamarin.AndroidX.Navigation.UI => 282
	i64 u0x1e71143913d56c10, ; 141: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 364
	i64 u0x1e7c31185e2fb266, ; 142: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1eb3fdd1d3192a5f, ; 143: Xamarin.AndroidX.Work.Work.Runtime.Ktx => 307
	i64 u0x1ed8fcce5e9b50a0, ; 144: Microsoft.Extensions.Options.dll => 190
	i64 u0x1f055d15d807e1b2, ; 145: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 146: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 147: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 148: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 297
	i64 u0x1f7fcab141728c45, ; 149: Xamarin.AndroidX.Legacy.Support.Core.UI => 258
	i64 u0x1fc1a401201d7356, ; 150: Xamarin.Google.Dagger.dll => 326
	i64 u0x20237ea48006d7a8, ; 151: lib_System.Net.WebClient.dll.so => 77
	i64 u0x203c381a1b2c2f25, ; 152: Xamarin.AndroidX.Room.Common => 287
	i64 u0x209375905fcc1bad, ; 153: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 154: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 155: System.Globalization => 42
	i64 u0x21419508838f7547, ; 156: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 157: System.Runtime => 117
	i64 u0x2198e5bc8b7153fa, ; 158: Xamarin.AndroidX.Annotation.Experimental.dll => 226
	i64 u0x219ea1b751a4dee4, ; 159: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 160: System.Reflection.Emit.ILGeneration => 91
	i64 u0x21f31ab89ce62e02, ; 161: lib_OneSignalSDK.DotNet.dll.so => 210
	i64 u0x220fd4f2e7c48170, ; 162: th/Microsoft.Maui.Controls.resources => 375
	i64 u0x224538d85ed15a82, ; 163: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 164: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22fbc14e981e3b45, ; 165: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 383
	i64 u0x2347c268e3e4e536, ; 166: Xamarin.GooglePlayServices.Basement.dll => 331
	i64 u0x237be844f1f812c7, ; 167: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 168: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 169: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 170: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 171: Xamarin.AndroidX.Core.dll => 243
	i64 u0x242bf4514622c837, ; 172: Xamarin.AndroidX.Legacy.Support.V4.dll => 260
	i64 u0x247619fe4413f8bf, ; 173: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x24a77624feb83011, ; 174: lib_Xamarin.AndroidX.Sqlite.dll.so => 293
	i64 u0x24de8d301281575e, ; 175: Xamarin.Android.Glide => 219
	i64 u0x24ea225f38dba051, ; 176: Xamarin.AndroidX.Room.Runtime => 288
	i64 u0x252073cc3caa62c2, ; 177: fr/Microsoft.Maui.Controls.resources.dll => 356
	i64 u0x256b8d41255f01b1, ; 178: Xamarin.Google.Crypto.Tink.Android => 325
	i64 u0x25a0a7eff76ea08e, ; 179: SQLitePCLRaw.batteries_v2.dll => 213
	i64 u0x2643615a57920257, ; 180: Xamarin.AndroidX.Legacy.Support.V4 => 260
	i64 u0x2662c629b96b0b30, ; 181: lib_Xamarin.Kotlin.StdLib.dll.so => 338
	i64 u0x268c1439f13bcc29, ; 182: lib_Microsoft.Extensions.Primitives.dll.so => 192
	i64 u0x26a670e154a9c54b, ; 183: System.Reflection.Extensions.dll => 94
	i64 u0x26cdccfaaa010ebc, ; 184: OneSignalSDK.DotNet.Android.dll => 208
	i64 u0x26d077d9678fe34f, ; 185: System.IO.dll => 58
	i64 u0x270a44600c921861, ; 186: System.IdentityModel.Tokens.Jwt => 218
	i64 u0x273f3515de5faf0d, ; 187: id/Microsoft.Maui.Controls.resources.dll => 361
	i64 u0x2742545f9094896d, ; 188: hr/Microsoft.Maui.Controls.resources => 359
	i64 u0x2759af78ab94d39b, ; 189: System.Net.WebSockets => 81
	i64 u0x27b2b16f3e9de038, ; 190: Xamarin.Google.Crypto.Tink.Android.dll => 325
	i64 u0x27b410442fad6cf1, ; 191: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 192: System.Diagnostics.Debug => 26
	i64 u0x27c1227907352196, ; 193: lib_Xamarin.Firebase.Installations.InterOp.dll.so => 317
	i64 u0x27eb21c6eb99d774, ; 194: Xamarin.Kotlin.StdLib.Jdk8.dll => 340
	i64 u0x2801845a2c71fbfb, ; 195: System.Net.Primitives.dll => 71
	i64 u0x286835e259162700, ; 196: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 284
	i64 u0x28e52865585a1ebe, ; 197: Microsoft.Extensions.Diagnostics.Abstractions.dll => 185
	i64 u0x2949f3617a02c6b2, ; 198: Xamarin.AndroidX.ExifInterface => 254
	i64 u0x29c819b69129cfb7, ; 199: lib_Xamarin.AndroidX.Sqlite.Framework.dll.so => 294
	i64 u0x29f947844fb7fc11, ; 200: Microsoft.Maui.Controls.HotReload.Forms => 382
	i64 u0x2a128783efe70ba0, ; 201: uk/Microsoft.Maui.Controls.resources.dll => 377
	i64 u0x2a3b095612184159, ; 202: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 203: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 204: fi/Microsoft.Maui.Controls.resources => 355
	i64 u0x2ad5d6b13b7a3e04, ; 205: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 206: System.Text.RegularExpressions.dll => 139
	i64 u0x2af615542f04da50, ; 207: System.IdentityModel.Tokens.Jwt.dll => 218
	i64 u0x2afc1c4f898552ee, ; 208: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 209: zh-Hant/Microsoft.Maui.Controls.resources.dll => 381
	i64 u0x2b6989d78cba9a15, ; 210: Xamarin.AndroidX.Concurrent.Futures.dll => 239
	i64 u0x2c4c3b619f1b41f8, ; 211: Xamarin.AndroidX.AsyncLayoutInflater.dll => 232
	i64 u0x2c517f906db0a191, ; 212: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 321
	i64 u0x2c8bd14bb93a7d82, ; 213: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 368
	i64 u0x2cbd9262ca785540, ; 214: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 215: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 216: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 217: System.Threading.dll => 149
	i64 u0x2d47774b7d993f59, ; 218: sv/Microsoft.Maui.Controls.resources.dll => 374
	i64 u0x2d5ffcae1ad0aaca, ; 219: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 220: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 221: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e2cd95ef05fc714, ; 222: OneSignalSDK.DotNet.Android => 208
	i64 u0x2e5a40c319acb800, ; 223: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 224: el/Microsoft.Maui.Controls.resources.dll => 353
	i64 u0x2e7ae36a08a1dbb3, ; 225: Xamarin.Firebase.Encoders => 312
	i64 u0x2f02f94df3200fe5, ; 226: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 227: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 228: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 229: lib_System.Xml.dll.so => 164
	i64 u0x2ff49de6a71764a1, ; 230: lib_Microsoft.Extensions.Http.dll.so => 186
	i64 u0x301713b5054e4388, ; 231: Xamarin.GooglePlayServices.Stats.dll => 333
	i64 u0x3053de11b4c0cb63, ; 232: lib_Xamarin.Firebase.Measurement.Connector.dll.so => 318
	i64 u0x30829702a4057a12, ; 233: Xamarin.Google.Android.DataTransport.TransportBackendCct => 321
	i64 u0x309ee9eeec09a71e, ; 234: lib_Xamarin.AndroidX.Fragment.dll.so => 255
	i64 u0x309f2bedefa9a318, ; 235: Microsoft.IdentityModel.Abstractions => 194
	i64 u0x30c6dda129408828, ; 236: System.IO.IsolatedStorage => 52
	i64 u0x31195fef5d8fb552, ; 237: _Microsoft.Android.Resource.Designer.dll => 387
	i64 u0x312c8ed623cbfc8d, ; 238: Xamarin.AndroidX.Window.dll => 304
	i64 u0x31496b779ed0663d, ; 239: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x315f08d19390dc36, ; 240: Xamarin.Google.ErrorProne.TypeAnnotations => 328
	i64 u0x318652756629d230, ; 241: Plugin.Maui.SwipeCardView.dll => 386
	i64 u0x31f946282b3de50c, ; 242: Xamarin.Firebase.Datatransport.dll => 311
	i64 u0x3200b1eae7efaded, ; 243: lib_Xamarin.Firebase.Encoders.JSON.dll.so => 313
	i64 u0x32243413e774362a, ; 244: Xamarin.AndroidX.CardView.dll => 235
	i64 u0x3235427f8d12dae1, ; 245: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x329753a17a517811, ; 246: fr/Microsoft.Maui.Controls.resources => 356
	i64 u0x32aa989ff07a84ff, ; 247: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 248: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 249: lib-es-Microsoft.Maui.Controls.resources.dll.so => 354
	i64 u0x33e8cebbde59efc5, ; 250: lib_ScheduleListUI.dll.so => 0
	i64 u0x341abc357fbb4ebf, ; 251: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 252: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34dfd74fe2afcf37, ; 253: Microsoft.Maui => 200
	i64 u0x34e292762d9615df, ; 254: cs/Microsoft.Maui.Controls.resources.dll => 350
	i64 u0x34f550615634aa64, ; 255: lib_Xamarin.Firebase.Encoders.dll.so => 312
	i64 u0x3508234247f48404, ; 256: Microsoft.Maui.Controls => 198
	i64 u0x353590da528c9d22, ; 257: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 258: lib_Xamarin.AndroidX.ViewPager2.dll.so => 303
	i64 u0x355282fc1c909694, ; 259: Microsoft.Extensions.Configuration => 179
	i64 u0x3552fc5d578f0fbf, ; 260: Xamarin.AndroidX.Arch.Core.Common => 230
	i64 u0x355c649948d55d97, ; 261: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x35ea9d1c6834bc8c, ; 262: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 274
	i64 u0x3628ab68db23a01a, ; 263: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x364703ab05867b92, ; 264: Xamarin.Firebase.Components => 310
	i64 u0x3673b042508f5b6b, ; 265: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 266: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 267: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 268: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 269: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 270: lib_Xamarin.Jetbrains.Annotations.dll.so => 336
	i64 u0x37bc29f3183003b6, ; 271: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 272: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 273: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x385c17636bb6fe6e, ; 274: Xamarin.AndroidX.CustomView.dll => 247
	i64 u0x38869c811d74050e, ; 275: System.Net.NameResolution.dll => 68
	i64 u0x393c226616977fdb, ; 276: lib_Xamarin.AndroidX.ViewPager.dll.so => 302
	i64 u0x395e37c3334cf82a, ; 277: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 349
	i64 u0x39aa39fda111d9d3, ; 278: Newtonsoft.Json => 203
	i64 u0x39f54e3c93ae3e6a, ; 279: Xamarin.AndroidX.Room.Runtime.dll => 288
	i64 u0x3ab5859054645f72, ; 280: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad75090c3fac0e9, ; 281: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 286
	i64 u0x3ae44ac43a1fbdbb, ; 282: System.Runtime.Serialization => 116
	i64 u0x3b3a441a55ff7e2e, ; 283: lib_Xamarin.AndroidX.Work.Work.Runtime.Ktx.dll.so => 307
	i64 u0x3b860f9932505633, ; 284: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3bea9ebe8c027c01, ; 285: lib_Microsoft.IdentityModel.Tokens.dll.so => 197
	i64 u0x3c3aafb6b3a00bf6, ; 286: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 287: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 288: Xamarin.Kotlin.StdLib => 338
	i64 u0x3c7e5ed3d5db71bb, ; 289: System.Security => 131
	i64 u0x3cd9d281d402eb9b, ; 290: Xamarin.AndroidX.Browser.dll => 234
	i64 u0x3d1c50cc001a991e, ; 291: Xamarin.Google.Guava.ListenableFuture.dll => 329
	i64 u0x3d2b1913edfc08d7, ; 292: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 293: System.Xml.Linq => 156
	i64 u0x3d8a8f400514a790, ; 294: Xamarin.AndroidX.Fragment.Ktx.dll => 256
	i64 u0x3d9c2a242b040a50, ; 295: lib_Xamarin.AndroidX.Core.dll.so => 243
	i64 u0x3da7781d6333a8fe, ; 296: SQLitePCLRaw.batteries_v2 => 213
	i64 u0x3dbb6b9f5ab90fa7, ; 297: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 251
	i64 u0x3e250296f3b5714d, ; 298: Xamarin.Firebase.Measurement.Connector => 318
	i64 u0x3e5441657549b213, ; 299: Xamarin.AndroidX.ResourceInspection.Annotation => 286
	i64 u0x3e57d4d195c53c2e, ; 300: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 301: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 302: Xamarin.AndroidX.SlidingPaneLayout.dll => 292
	i64 u0x3f510adf788828dd, ; 303: System.Threading.Tasks.Extensions => 143
	i64 u0x407740ff2e914d86, ; 304: Xamarin.AndroidX.Print.dll => 283
	i64 u0x407a10bb4bf95829, ; 305: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 279
	i64 u0x40c98b6bd77346d4, ; 306: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 307: mscorlib => 167
	i64 u0x41cab042be111c34, ; 308: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 229
	i64 u0x4216fdf45ceff571, ; 309: Xamarin.AndroidX.Sqlite.Framework.dll => 294
	i64 u0x423a9ecc4d905a88, ; 310: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 311: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 312: System.Resources.Reader.dll => 99
	i64 u0x426347ffcb8732cf, ; 313: Xamarin.AndroidX.Lifecycle.Service => 271
	i64 u0x4291015ff4e5ef71, ; 314: Xamarin.AndroidX.Core.ViewTree.dll => 245
	i64 u0x42a31b86e6ccc3f0, ; 315: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 316: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x432dbba8b0560810, ; 317: OneSignalSDK.DotNet.Android.InAppMessages.Binding => 205
	i64 u0x43375950ec7c1b6a, ; 318: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 319: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 320: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 224
	i64 u0x437d06c381ed575a, ; 321: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x4382363bad1b4039, ; 322: OneSignalSDK.DotNet.dll => 210
	i64 u0x43950f84de7cc79a, ; 323: pl/Microsoft.Maui.Controls.resources.dll => 368
	i64 u0x43e8ca5bc927ff37, ; 324: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 253
	i64 u0x448bd33429269b19, ; 325: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 326: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 327: Xamarin.Kotlin.StdLib.dll => 338
	i64 u0x4545802489b736b9, ; 328: Xamarin.AndroidX.Fragment.Ktx => 256
	i64 u0x454b4d1e66bb783c, ; 329: Xamarin.AndroidX.Lifecycle.Process => 266
	i64 u0x458d2df79ac57c1d, ; 330: lib_System.IdentityModel.Tokens.Jwt.dll.so => 218
	i64 u0x4598f1adbd9c8129, ; 331: OneSignalSDK.DotNet.Android.Location.Binding => 206
	i64 u0x45c40276a42e283e, ; 332: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 333: System.AppContext.dll => 6
	i64 u0x46a4213bc97fe5ae, ; 334: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 372
	i64 u0x47358bd471172e1d, ; 335: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47daf4e1afbada10, ; 336: pt/Microsoft.Maui.Controls.resources => 370
	i64 u0x480c0a47dd42dd81, ; 337: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 338: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 259
	i64 u0x49e952f19a4e2022, ; 339: System.ObjectModel => 85
	i64 u0x49f6ab815e178ca9, ; 340: lib_Xamarin.Firebase.Common.dll.so => 309
	i64 u0x49f9e6948a8131e4, ; 341: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 301
	i64 u0x4a5667b2462a664b, ; 342: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 282
	i64 u0x4a7a18981dbd56bc, ; 343: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 344: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 265
	i64 u0x4b07a0ed0ab33ff4, ; 345: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 346: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 347: System.Text.Json => 138
	i64 u0x4c7755cf07ad2d5f, ; 348: System.Net.Http.Json.dll => 64
	i64 u0x4cad38a03a928144, ; 349: lib_Xamarin.Firebase.Encoders.Proto.dll.so => 314
	i64 u0x4cc5f15266470798, ; 350: lib_Xamarin.AndroidX.Loader.dll.so => 276
	i64 u0x4cf6f67dc77aacd2, ; 351: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 352: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 353: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 354: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 355: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 356: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 230
	i64 u0x4d7793536e79c309, ; 357: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 358: System.Runtime.Loader.dll => 110
	i64 u0x4dcf44c3c9b076a2, ; 359: it/Microsoft.Maui.Controls.resources.dll => 362
	i64 u0x4dd9247f1d2c3235, ; 360: Xamarin.AndroidX.Loader.dll => 276
	i64 u0x4e2aeee78e2c4a87, ; 361: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 284
	i64 u0x4e32f00cb0937401, ; 362: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 363: System.Text.Encoding.CodePages => 134
	i64 u0x4e742b34f53425d7, ; 364: Xamarin.Firebase.Encoders.Proto.dll => 314
	i64 u0x4ebd0c4b82c5eefc, ; 365: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 366: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 367: ca/Microsoft.Maui.Controls.resources => 349
	i64 u0x4fd5f3ee53d0a4f0, ; 368: SQLitePCLRaw.lib.e_sqlite3.android => 215
	i64 u0x4fdc964ec1888e25, ; 369: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 181
	i64 u0x4ffd65baff757598, ; 370: Microsoft.IdentityModel.Tokens => 197
	i64 u0x5037f0be3c28c7a3, ; 371: lib_Microsoft.Maui.Controls.dll.so => 198
	i64 u0x50bd8cfae0f07500, ; 372: lib_Xamarin.GooglePlayServices.Stats.dll.so => 333
	i64 u0x50c3a29b21050d45, ; 373: System.Linq.Parallel.dll => 60
	i64 u0x5112ed116d87baf8, ; 374: CommunityToolkit.Mvvm => 176
	i64 u0x5116b21580ae6eb0, ; 375: Microsoft.Extensions.Configuration.Binder.dll => 181
	i64 u0x5131bbe80989093f, ; 376: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 273
	i64 u0x516324a5050a7e3c, ; 377: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 378: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x516ef4cb3aa9654a, ; 379: OneSignalSDK.DotNet.Core => 209
	i64 u0x51bb8a2afe774e32, ; 380: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 381: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 382: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 269
	i64 u0x526ce79eb8e90527, ; 383: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 384: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 385: Xamarin.AndroidX.Core => 243
	i64 u0x52ff996554dbf352, ; 386: Microsoft.Maui.Graphics => 202
	i64 u0x535f7e40e8fef8af, ; 387: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 373
	i64 u0x53978aac584c666e, ; 388: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 389: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 390: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 391: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 379
	i64 u0x53e450ebd586f842, ; 392: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 277
	i64 u0x5435e6f049e9bc37, ; 393: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 394: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 395: Xamarin.AndroidX.Lifecycle.Common.dll => 261
	i64 u0x55250ba592fd51e2, ; 396: SQLitePCLRaw.provider.dynamic_cdecl.dll => 216
	i64 u0x556e8b63b660ab8b, ; 397: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 262
	i64 u0x5588627c9a108ec9, ; 398: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 399: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 400: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 401: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a5d2c17db41bcb, ; 402: Xamarin.Google.Android.DataTransport.TransportRuntime => 322
	i64 u0x56a8b26e1aeae27b, ; 403: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 404: System.Globalization.Extensions => 41
	i64 u0x56fbdd49dd4e9a1e, ; 405: Xamarin.AndroidX.Lifecycle.Service.dll => 271
	i64 u0x571c5cfbec5ae8e2, ; 406: System.Private.Uri => 87
	i64 u0x576499c9f52fea31, ; 407: Xamarin.AndroidX.Annotation => 225
	i64 u0x578cd35c91d7b347, ; 408: lib_SQLitePCLRaw.core.dll.so => 214
	i64 u0x579a06fed6eec900, ; 409: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 410: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 411: System.Threading.Timer => 148
	i64 u0x584ac38e21d2fde1, ; 412: Microsoft.Extensions.Configuration.Binder => 181
	i64 u0x58601b2dda4a27b9, ; 413: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 363
	i64 u0x58688d9af496b168, ; 414: Microsoft.Extensions.DependencyInjection.dll => 182
	i64 u0x588c167a79db6bfb, ; 415: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 327
	i64 u0x5906028ae5151104, ; 416: Xamarin.AndroidX.Activity.Ktx => 224
	i64 u0x595a356d23e8da9a, ; 417: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59f9e60b9475085f, ; 418: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 226
	i64 u0x5a745f5101a75527, ; 419: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 420: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 242
	i64 u0x5a8f6699f4a1caa9, ; 421: lib_System.Threading.dll.so => 149
	i64 u0x5ae8e4f3eae4d547, ; 422: Xamarin.AndroidX.Legacy.Support.Core.Utils => 259
	i64 u0x5ae9cd33b15841bf, ; 423: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 424: System.Private.DataContractSerialization => 86
	i64 u0x5b5f0e240a06a2a2, ; 425: da/Microsoft.Maui.Controls.resources.dll => 351
	i64 u0x5b755276902c8414, ; 426: Xamarin.GooglePlayServices.Base => 330
	i64 u0x5b8109e8e14c5e3e, ; 427: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 428: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 265
	i64 u0x5bdf16b09da116ab, ; 429: Xamarin.AndroidX.Collection => 236
	i64 u0x5bff6a70194300bd, ; 430: lib_Xamarin.Kotlin.StdLib.Jdk8.dll.so => 340
	i64 u0x5c019d5266093159, ; 431: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 270
	i64 u0x5c30a4a35f9cc8c4, ; 432: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 433: lib_Microsoft.Extensions.Logging.dll.so => 187
	i64 u0x5c53c29f5073b0c9, ; 434: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 435: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5ce28e4aa0f453ee, ; 436: Plugin.Maui.Biometric.dll => 211
	i64 u0x5d0a4a29b02d9d3c, ; 437: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d40c9b15181641f, ; 438: lib_Xamarin.AndroidX.Emoji2.dll.so => 252
	i64 u0x5d6ca10d35e9485b, ; 439: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 239
	i64 u0x5d7ec76c1c703055, ; 440: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 441: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 442: Xamarin.AndroidX.Collection.Jvm.dll => 237
	i64 u0x5dd10b96620cce23, ; 443: Xamarin.Firebase.Iid.Interop => 315
	i64 u0x5e467bc8f09ad026, ; 444: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 445: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 446: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 447: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 448: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 449: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 450: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 451: System.Data.Common => 22
	i64 u0x5f4fa8b9ffd0e2c5, ; 452: lib_Xamarin.Google.Android.DataTransport.TransportApi.dll.so => 320
	i64 u0x5f7399e166075632, ; 453: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 215
	i64 u0x5f9a2d823f664957, ; 454: lib-el-Microsoft.Maui.Controls.resources.dll.so => 353
	i64 u0x5fa6da9c3cd8142a, ; 455: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 346
	i64 u0x5fac98e0b37a5b9d, ; 456: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 457: lib_Microsoft.Extensions.DependencyInjection.dll.so => 182
	i64 u0x60cd4e33d7e60134, ; 458: Xamarin.KotlinX.Coroutines.Core.Jvm => 345
	i64 u0x60ee72f71c4b3113, ; 459: Xamarin.Firebase.Iid.Interop.dll => 315
	i64 u0x60f62d786afcf130, ; 460: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 461: System.IO => 58
	i64 u0x61be8d1299194243, ; 462: Microsoft.Maui.Controls.Xaml => 199
	i64 u0x61d2cba29557038f, ; 463: de/Microsoft.Maui.Controls.resources => 352
	i64 u0x61d88f399afb2f45, ; 464: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 465: System.Private.CoreLib => 173
	i64 u0x63cdbd66ac39bb46, ; 466: lib_Microsoft.VisualStudio.DesignTools.XamlTapContract.dll.so => 385
	i64 u0x63d5e3aa4ef9b931, ; 467: Xamarin.KotlinX.Coroutines.Android.dll => 343
	i64 u0x63f1f6883c1e23c2, ; 468: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 469: Xamarin.Google.Android.Material.dll => 323
	i64 u0x640e3b14dbd325c2, ; 470: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 471: System.Reflection => 98
	i64 u0x646bbda4b2219cc2, ; 472: lib_Xamarin.Firebase.Datatransport.dll.so => 311
	i64 u0x6473b985b25e516b, ; 473: Microsoft.Identity.Abstractions.dll => 193
	i64 u0x64b1529a438a3c45, ; 474: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x6565fba2cd8f235b, ; 475: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 274
	i64 u0x658f524e4aba7dad, ; 476: CommunityToolkit.Maui.dll => 174
	i64 u0x65ecac39144dd3cc, ; 477: Microsoft.Maui.Controls.dll => 198
	i64 u0x65ece51227bfa724, ; 478: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 479: Xamarin.AndroidX.Annotation.Jvm.dll => 227
	i64 u0x6679b2337ee6b22a, ; 480: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 481: lib_System.Console.dll.so => 20
	i64 u0x669b2e9020ef2b4e, ; 482: Xamarin.Firebase.Datatransport => 311
	i64 u0x66a4e5c6a3fb0bae, ; 483: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 273
	i64 u0x66d13304ce1a3efa, ; 484: Xamarin.AndroidX.CursorAdapter => 246
	i64 u0x674303f65d8fad6f, ; 485: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 486: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 241
	i64 u0x67bca11acb828d8d, ; 487: lib_Xamarin.Google.Android.DataTransport.TransportBackendCct.dll.so => 321
	i64 u0x67c0802770244408, ; 488: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 489: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 490: lib-da-Microsoft.Maui.Controls.resources.dll.so => 351
	i64 u0x6872ec7a2e36b1ac, ; 491: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 492: Xamarin.KotlinX.AtomicFU.dll => 341
	i64 u0x68fbbbe2eb455198, ; 493: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 494: he/Microsoft.Maui.Controls.resources.dll => 357
	i64 u0x699dffb2427a2d71, ; 495: SQLitePCLRaw.lib.e_sqlite3.android.dll => 215
	i64 u0x69a3e26c76f6eec4, ; 496: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 305
	i64 u0x69a49b7740c938f4, ; 497: Xamarin.AndroidX.Work.Runtime => 306
	i64 u0x6a4d7577b2317255, ; 498: System.Runtime.InteropServices.dll => 108
	i64 u0x6ace3b74b15ee4a4, ; 499: nb/Microsoft.Maui.Controls.resources => 366
	i64 u0x6afcedb171067e2b, ; 500: System.Core.dll => 21
	i64 u0x6b6385bc3b5020d0, ; 501: lib_OneSignalSDK.DotNet.Android.dll.so => 208
	i64 u0x6bef98e124147c24, ; 502: Xamarin.Jetbrains.Annotations => 336
	i64 u0x6ce874bff138ce2b, ; 503: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 272
	i64 u0x6d12bfaa99c72b1f, ; 504: lib_Microsoft.Maui.Graphics.dll.so => 202
	i64 u0x6d70755158ca866e, ; 505: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 506: Microsoft.Extensions.Primitives => 192
	i64 u0x6d7eeca99577fc8b, ; 507: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 508: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 509: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 246
	i64 u0x6d9bea6b3e895cf7, ; 510: Microsoft.Extensions.Primitives.dll => 192
	i64 u0x6dd9bf4083de3f6a, ; 511: Xamarin.AndroidX.DocumentFile.dll => 249
	i64 u0x6e25a02c3833319a, ; 512: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 280
	i64 u0x6e79c6bd8627412a, ; 513: Xamarin.AndroidX.SavedState.SavedState.Ktx => 290
	i64 u0x6e838d9a2a6f6c9e, ; 514: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 515: lib_System.Core.dll.so => 21
	i64 u0x6f304d1dec1019e9, ; 516: lib_Xamarin.Firebase.Installations.dll.so => 316
	i64 u0x6fd2265da78b93a4, ; 517: lib_Microsoft.Maui.dll.so => 200
	i64 u0x6fdfc7de82c33008, ; 518: cs/Microsoft.Maui.Controls.resources => 350
	i64 u0x6ffc4967cc47ba57, ; 519: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 520: System.IO.FileSystem.dll => 51
	i64 u0x709688f4ec2831e9, ; 521: lib_Xamarin.AndroidX.Media.dll.so => 278
	i64 u0x70e99f48c05cb921, ; 522: tr/Microsoft.Maui.Controls.resources.dll => 376
	i64 u0x70fd3deda22442d2, ; 523: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 366
	i64 u0x71485e7ffdb4b958, ; 524: System.Reflection.Extensions => 94
	i64 u0x7162a2fce67a945f, ; 525: lib_Xamarin.Android.Glide.Annotations.dll.so => 220
	i64 u0x717530326f808838, ; 526: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 185
	i64 u0x71a495ea3761dde8, ; 527: lib-it-Microsoft.Maui.Controls.resources.dll.so => 362
	i64 u0x71ad672adbe48f35, ; 528: System.ComponentModel.Primitives.dll => 16
	i64 u0x71fb4104c26cfd85, ; 529: ScheduleListUI.dll => 0
	i64 u0x720f102581a4a5c8, ; 530: Xamarin.AndroidX.Core.ViewTree => 245
	i64 u0x725f5a9e82a45c81, ; 531: System.Security.Cryptography.Encoding => 123
	i64 u0x72b1fb4109e08d7b, ; 532: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 359
	i64 u0x72e0300099accce1, ; 533: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 534: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 535: Xamarin.Google.ErrorProne.Annotations.dll => 327
	i64 u0x734b76fdc0dc05bb, ; 536: lib_GoogleGson.dll.so => 178
	i64 u0x73a6be34e822f9d1, ; 537: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 538: lib_System.Memory.dll.so => 63
	i64 u0x740ea0102bfd2ab6, ; 539: Plugin.Maui.Biometric => 211
	i64 u0x743a1eccf080489a, ; 540: WindowsBase.dll => 166
	i64 u0x746cf89b511b4d40, ; 541: lib_Microsoft.Extensions.Diagnostics.dll.so => 184
	i64 u0x755a91767330b3d4, ; 542: lib_Microsoft.Extensions.Configuration.dll.so => 179
	i64 u0x75a73c4fd619e2e2, ; 543: lib_Microsoft.Identity.Abstractions.dll.so => 193
	i64 u0x75c326eb821b85c4, ; 544: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 545: lib_Xamarin.AndroidX.SavedState.dll.so => 289
	i64 u0x76ca07b878f44da0, ; 546: System.Runtime.Numerics.dll => 111
	i64 u0x7736c8a96e51a061, ; 547: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 227
	i64 u0x7762034089fe3533, ; 548: OneSignalSDK.DotNet.Android.Notifications.Binding.dll => 207
	i64 u0x778a805e625329ef, ; 549: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 550: Xamarin.KotlinX.AtomicFU.Jvm => 342
	i64 u0x77f8a4acc2fdc449, ; 551: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 552: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 365
	i64 u0x782c5d8eb99ff201, ; 553: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 554: th/Microsoft.Maui.Controls.resources.dll => 375
	i64 u0x784b4ff3eed363ff, ; 555: Xamarin.Firebase.Common => 309
	i64 u0x78a0275e998ae4ef, ; 556: Xamarin.Firebase.Measurement.Connector.dll => 318
	i64 u0x78a45e51311409b6, ; 557: Xamarin.AndroidX.Fragment.dll => 255
	i64 u0x78d5c74e565733ea, ; 558: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 322
	i64 u0x78ed4ab8f9d800a1, ; 559: Xamarin.AndroidX.Lifecycle.ViewModel => 272
	i64 u0x793546dbadd324b1, ; 560: Xamarin.Google.Android.DataTransport.TransportApi => 320
	i64 u0x7a25bdb29108c6e7, ; 561: Microsoft.Extensions.Http => 186
	i64 u0x7a39601d6f0bb831, ; 562: lib_Xamarin.KotlinX.AtomicFU.dll.so => 341
	i64 u0x7a5207a7c82d30b4, ; 563: lib_Xamarin.JSpecify.dll.so => 337
	i64 u0x7a7e7eddf79c5d26, ; 564: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 272
	i64 u0x7a9a57d43b0845fa, ; 565: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 566: Xamarin.AndroidX.Collection.dll => 236
	i64 u0x7adb8da2ac89b647, ; 567: fi/Microsoft.Maui.Controls.resources.dll => 355
	i64 u0x7b13d9eaa944ade8, ; 568: Xamarin.AndroidX.DynamicAnimation.dll => 251
	i64 u0x7b4927e421291c41, ; 569: Microsoft.IdentityModel.JsonWebTokens.dll => 195
	i64 u0x7bef86a4335c4870, ; 570: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 571: sk/Microsoft.Maui.Controls.resources.dll => 373
	i64 u0x7c2a0bd1e0f988fc, ; 572: lib-de-Microsoft.Maui.Controls.resources.dll.so => 352
	i64 u0x7c41d387501568ba, ; 573: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 574: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 240
	i64 u0x7cb95ad2a929d044, ; 575: Xamarin.GooglePlayServices.Basement => 331
	i64 u0x7cc637f941f716d0, ; 576: CommunityToolkit.Maui.Core => 175
	i64 u0x7cd2ec8eaf5241cd, ; 577: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 578: Xamarin.Jetbrains.Annotations.dll => 336
	i64 u0x7d649b75d580bb42, ; 579: ms/Microsoft.Maui.Controls.resources.dll => 365
	i64 u0x7d8ee2bdc8e3aad1, ; 580: System.Numerics.Vectors => 83
	i64 u0x7df5df8db8eaa6ac, ; 581: Microsoft.Extensions.Logging.Debug => 189
	i64 u0x7dfc3d6d9d8d7b70, ; 582: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 583: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 584: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4465b3f78ad8d0, ; 585: Xamarin.KotlinX.Serialization.Core.dll => 346
	i64 u0x7e571cad5915e6c3, ; 586: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 266
	i64 u0x7e6b1ca712437d7d, ; 587: Xamarin.AndroidX.Emoji2.ViewsHelper => 253
	i64 u0x7e946809d6008ef2, ; 588: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0272c1b4a9635, ; 589: lib_Xamarin.Android.Glide.dll.so => 219
	i64 u0x7eb4f0dc47488736, ; 590: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 334
	i64 u0x7ecc13347c8fd849, ; 591: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 592: Xamarin.AndroidX.ViewPager.dll => 302
	i64 u0x7f903af8afd7c6c3, ; 593: lib_SQLitePCLRaw.provider.dynamic_cdecl.dll.so => 216
	i64 u0x7f9351cd44b1273f, ; 594: Microsoft.Extensions.Configuration.Abstractions => 180
	i64 u0x7fbd557c99b3ce6f, ; 595: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 264
	i64 u0x8076a9a44a2ca331, ; 596: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 597: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 383
	i64 u0x80ca3d88b0159b22, ; 598: lib_Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so => 258
	i64 u0x80da183a87731838, ; 599: System.Reflection.Metadata => 95
	i64 u0x80fa55b6d1b0be99, ; 600: SQLitePCLRaw.provider.e_sqlite3 => 217
	i64 u0x812c069d5cdecc17, ; 601: System.dll => 165
	i64 u0x81381be520a60adb, ; 602: Xamarin.AndroidX.Interpolator.dll => 257
	i64 u0x81657cec2b31e8aa, ; 603: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 604: zh-Hant/Microsoft.Maui.Controls.resources => 381
	i64 u0x825767256f457674, ; 605: lib_Xamarin.AndroidX.Legacy.Support.V4.dll.so => 260
	i64 u0x8277f2be6b5ce05f, ; 606: Xamarin.AndroidX.AppCompat => 228
	i64 u0x828f06563b30bc50, ; 607: lib_Xamarin.AndroidX.CardView.dll.so => 235
	i64 u0x82920a8d9194a019, ; 608: Xamarin.KotlinX.AtomicFU.Jvm.dll => 342
	i64 u0x82b399cb01b531c4, ; 609: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 610: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 611: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 612: uk/Microsoft.Maui.Controls.resources => 377
	i64 u0x83144699b312ad81, ; 613: SQLite-net.dll => 212
	i64 u0x83a7afd2c49adc86, ; 614: lib_Microsoft.IdentityModel.Abstractions.dll.so => 194
	i64 u0x83c14ba66c8e2b8c, ; 615: zh-Hans/Microsoft.Maui.Controls.resources => 380
	i64 u0x846ce984efea52c7, ; 616: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 617: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 618: System.Runtime.Serialization.Json.dll => 113
	i64 u0x850c5ba0b57ce8e7, ; 619: lib_Xamarin.AndroidX.Collection.dll.so => 236
	i64 u0x851d02edd334b044, ; 620: Xamarin.AndroidX.VectorDrawable => 299
	i64 u0x85440c605de848f2, ; 621: lib_Xamarin.AndroidX.Lifecycle.Service.dll.so => 271
	i64 u0x85c919db62150978, ; 622: Xamarin.AndroidX.Transition.dll => 298
	i64 u0x8662aaeb94fef37f, ; 623: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 624: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 381
	i64 u0x86b3e00c36b84509, ; 625: Microsoft.Extensions.Configuration.dll => 179
	i64 u0x86b62cb077ec4fd7, ; 626: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 627: Xamarin.AndroidX.Annotation.Experimental => 226
	i64 u0x872a5b14c18d328c, ; 628: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 629: Xamarin.Android.Glide.Annotations.dll => 220
	i64 u0x87c69b87d9283884, ; 630: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 631: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 632: Microsoft.Maui.Essentials => 201
	i64 u0x88926583efe7ee86, ; 633: Xamarin.AndroidX.Activity.Ktx.dll => 224
	i64 u0x88b16a1a7051ebe2, ; 634: Xamarin.Firebase.Annotations.dll => 308
	i64 u0x88ba6bc4f7762b03, ; 635: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 636: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 345
	i64 u0x8930322c7bd8f768, ; 637: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 638: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 639: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 640: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 641: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8a9b37be263c8614, ; 642: Xamarin.AndroidX.Sqlite.Framework => 294
	i64 u0x8ad229ea26432ee2, ; 643: Xamarin.AndroidX.Loader => 276
	i64 u0x8b4ff5d0fdd5faa1, ; 644: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 645: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 646: System.Diagnostics.Process.dll => 29
	i64 u0x8b9278242f21e276, ; 647: Xamarin.Firebase.Encoders.JSON.dll => 313
	i64 u0x8b9ceca7acae3451, ; 648: lib-he-Microsoft.Maui.Controls.resources.dll.so => 357
	i64 u0x8cb8f612b633affb, ; 649: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 290
	i64 u0x8cdfdb4ce85fb925, ; 650: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 651: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 652: Xamarin.AndroidX.CursorAdapter.dll => 246
	i64 u0x8d52f7ea2796c531, ; 653: Xamarin.AndroidX.Emoji2.dll => 252
	i64 u0x8d7b8ab4b3310ead, ; 654: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 655: System.Collections.Concurrent => 8
	i64 u0x8ec6e06a61c1baeb, ; 656: lib_Newtonsoft.Json.dll.so => 203
	i64 u0x8ed807bfe9858dfc, ; 657: Xamarin.AndroidX.Navigation.Common => 279
	i64 u0x8ee08b8194a30f48, ; 658: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 358
	i64 u0x8ef7601039857a44, ; 659: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 371
	i64 u0x8ef9414937d93a0a, ; 660: SQLitePCLRaw.core.dll => 214
	i64 u0x8efbc0801a122264, ; 661: Xamarin.GooglePlayServices.Tasks.dll => 334
	i64 u0x8f32c6f611f6ffab, ; 662: pt/Microsoft.Maui.Controls.resources.dll => 370
	i64 u0x8f44b45eb046bbd1, ; 663: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 664: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 369
	i64 u0x8fbf5b0114c6dcef, ; 665: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 666: Xamarin.KotlinX.Serialization.Core => 346
	i64 u0x8fd27d934d7b3a55, ; 667: SQLitePCLRaw.core => 214
	i64 u0x90263f8448b8f572, ; 668: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 669: _Microsoft.Android.Resource.Designer => 387
	i64 u0x90393bd4865292f3, ; 670: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 671: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 672: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 273
	i64 u0x907b636704ad79ef, ; 673: lib_Microsoft.Maui.Controls.Xaml.dll.so => 199
	i64 u0x90e9efbfd68593e0, ; 674: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 263
	i64 u0x910163e87e5d5721, ; 675: Plugin.Maui.SwipeCardView => 386
	i64 u0x91418dc638b29e68, ; 676: lib_Xamarin.AndroidX.CustomView.dll.so => 247
	i64 u0x9157bd523cd7ed36, ; 677: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 678: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 679: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 680: ca/Microsoft.Maui.Controls.resources.dll => 349
	i64 u0x92054e486c0c7ea7, ; 681: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 682: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92a698e6d582778f, ; 683: Xamarin.Firebase.Components.dll => 310
	i64 u0x92b138fffca2b01e, ; 684: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 231
	i64 u0x92dfc2bfc6c6a888, ; 685: Xamarin.AndroidX.Lifecycle.LiveData => 263
	i64 u0x933da2c779423d68, ; 686: Xamarin.Android.Glide.Annotations => 220
	i64 u0x9388aad9b7ae40ce, ; 687: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 261
	i64 u0x93a39f9bbc3b3ca4, ; 688: Xamarin.GooglePlayServices.CloudMessaging.dll => 332
	i64 u0x93cfa73ab28d6e35, ; 689: ms/Microsoft.Maui.Controls.resources => 365
	i64 u0x941c00d21e5c0679, ; 690: lib_Xamarin.AndroidX.Transition.dll.so => 298
	i64 u0x944077d8ca3c6580, ; 691: System.IO.Compression.dll => 46
	i64 u0x9442ddea72a6772b, ; 692: Microsoft.Identity.Abstractions => 193
	i64 u0x948cffedc8ed7960, ; 693: System.Xml => 164
	i64 u0x948d746a7702861f, ; 694: Microsoft.IdentityModel.Logging.dll => 196
	i64 u0x94c8990839c4bdb1, ; 695: lib_Xamarin.AndroidX.Interpolator.dll.so => 257
	i64 u0x9564283c37ed59a9, ; 696: lib_Microsoft.IdentityModel.Logging.dll.so => 196
	i64 u0x967fc325e09bfa8c, ; 697: es/Microsoft.Maui.Controls.resources => 354
	i64 u0x9686161486d34b81, ; 698: lib_Xamarin.AndroidX.ExifInterface.dll.so => 254
	i64 u0x9732d8dbddea3d9a, ; 699: id/Microsoft.Maui.Controls.resources => 361
	i64 u0x978be80e5210d31b, ; 700: Microsoft.Maui.Graphics.dll => 202
	i64 u0x979ab54025cc1c7f, ; 701: lib_Xamarin.GooglePlayServices.Base.dll.so => 330
	i64 u0x97b8c771ea3e4220, ; 702: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 703: System.Collections.Concurrent.dll => 8
	i64 u0x97e55f96df4ddd72, ; 704: lib_Xamarin.Firebase.Annotations.dll.so => 308
	i64 u0x984184e3c70d4419, ; 705: GoogleGson => 178
	i64 u0x9843944103683dd3, ; 706: Xamarin.AndroidX.Core.Core.Ktx => 244
	i64 u0x98d720cc4597562c, ; 707: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 708: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 709: System.Threading.Overlapped.dll => 141
	i64 u0x999cb19e1a04ffd3, ; 710: CommunityToolkit.Mvvm.dll => 176
	i64 u0x99a00ca5270c6878, ; 711: Xamarin.AndroidX.Navigation.Runtime => 281
	i64 u0x99cdc6d1f2d3a72f, ; 712: ko/Microsoft.Maui.Controls.resources.dll => 364
	i64 u0x9a01b1da98b6ee10, ; 713: Xamarin.AndroidX.Lifecycle.Runtime.dll => 267
	i64 u0x9a5ccc274fd6e6ee, ; 714: Jsr305Binding.dll => 324
	i64 u0x9ae6940b11c02876, ; 715: lib_Xamarin.AndroidX.Window.dll.so => 304
	i64 u0x9b211a749105beac, ; 716: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 717: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 718: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 344
	i64 u0x9bd8cc74558ad4c7, ; 719: Xamarin.KotlinX.AtomicFU => 341
	i64 u0x9c244ac7cda32d26, ; 720: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 721: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 343
	i64 u0x9c4dd9126a77a711, ; 722: Xamarin.Firebase.Installations.InterOp => 317
	i64 u0x9c8f6872beab6408, ; 723: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 724: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 725: Xamarin.AndroidX.CustomView.PoolingContainer => 248
	i64 u0x9d5dbcf5a48583fe, ; 726: lib_Xamarin.AndroidX.Activity.dll.so => 223
	i64 u0x9d74dee1a7725f34, ; 727: Microsoft.Extensions.Configuration.Abstractions.dll => 180
	i64 u0x9de64d56c52fba95, ; 728: Xamarin.Firebase.Encoders.Proto => 314
	i64 u0x9e4534b6adaf6e84, ; 729: nl/Microsoft.Maui.Controls.resources => 367
	i64 u0x9e4b95dec42769f7, ; 730: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 731: Xamarin.AndroidX.Navigation.Common.dll => 279
	i64 u0x9ef542cf1f78c506, ; 732: Xamarin.AndroidX.Lifecycle.LiveData.Core => 264
	i64 u0x9fffe48d01e0cf46, ; 733: ScheduleListUI => 0
	i64 u0xa00832eb975f56a8, ; 734: lib_System.Net.dll.so => 82
	i64 u0xa0ad78236b7b267f, ; 735: Xamarin.AndroidX.Window => 304
	i64 u0xa0d8259f4cc284ec, ; 736: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 737: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 325
	i64 u0xa0ff9b3e34d92f11, ; 738: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 739: System.Threading.Timer.dll => 148
	i64 u0xa1373aa12c58883e, ; 740: lib_OneSignalSDK.DotNet.Core.dll.so => 209
	i64 u0xa1440773ee9d341e, ; 741: Xamarin.Google.Android.Material => 323
	i64 u0xa1b9d7c27f47219f, ; 742: Xamarin.AndroidX.Navigation.UI.dll => 282
	i64 u0xa2572680829d2c7c, ; 743: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 744: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 745: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 746: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 747: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 748: Xamarin.AndroidX.VectorDrawable.Animated => 300
	i64 u0xa46aa1eaa214539b, ; 749: ko/Microsoft.Maui.Controls.resources => 364
	i64 u0xa4a372eecb9e4df0, ; 750: Microsoft.Extensions.Diagnostics => 184
	i64 u0xa4d20d2ff0563d26, ; 751: lib_CommunityToolkit.Mvvm.dll.so => 176
	i64 u0xa4edc8f2ceae241a, ; 752: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 753: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 754: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 755: Xamarin.AndroidX.DocumentFile => 249
	i64 u0xa5b7152421ed6d98, ; 756: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 757: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 758: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 759: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 760: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 761: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 762: lib_Jsr305Binding.dll.so => 324
	i64 u0xa66cbee0130865f7, ; 763: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 764: Xamarin.AndroidX.SavedState.dll => 289
	i64 u0xa684b098dd27b296, ; 765: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 291
	i64 u0xa68a420042bb9b1f, ; 766: Xamarin.AndroidX.DrawerLayout.dll => 250
	i64 u0xa6c00b31a2da36d9, ; 767: FreakyKit.Utils.dll => 177
	i64 u0xa6d26156d1cacc7c, ; 768: Xamarin.Android.Glide.dll => 219
	i64 u0xa75386b5cb9595aa, ; 769: Xamarin.AndroidX.Lifecycle.Runtime.Android => 268
	i64 u0xa763fbb98df8d9fb, ; 770: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 771: Xamarin.AndroidX.Lifecycle.Common.Jvm => 262
	i64 u0xa7a08e0f3bd00c3e, ; 772: Xamarin.Firebase.Messaging.dll => 319
	i64 u0xa7c31b56b4dc7b33, ; 773: hu/Microsoft.Maui.Controls.resources => 360
	i64 u0xa7eab29ed44b4e7a, ; 774: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 775: Microsoft.VisualBasic.Core => 2
	i64 u0xa843f6095f0d247d, ; 776: Xamarin.GooglePlayServices.Base.dll => 330
	i64 u0xa859a95830f367ff, ; 777: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 274
	i64 u0xa8b52f21e0dbe690, ; 778: System.Runtime.Serialization.dll => 116
	i64 u0xa8c84ce526c2b4bd, ; 779: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 385
	i64 u0xa8e6320dd07580ef, ; 780: lib_Microsoft.IdentityModel.JsonWebTokens.dll.so => 195
	i64 u0xa8ee4ed7de2efaee, ; 781: Xamarin.AndroidX.Annotation.dll => 225
	i64 u0xa95590e7c57438a4, ; 782: System.Configuration => 19
	i64 u0xa964304b5631e28a, ; 783: CommunityToolkit.Maui.Core.dll => 175
	i64 u0xaa05f1b7b312c742, ; 784: OneSignalSDK.DotNet.Android.Notifications.Binding => 207
	i64 u0xaa2219c8e3449ff5, ; 785: Microsoft.Extensions.Logging.Abstractions => 188
	i64 u0xaa443ac34067eeef, ; 786: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 787: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 788: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 789: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 183
	i64 u0xaaf84bb3f052a265, ; 790: el/Microsoft.Maui.Controls.resources => 353
	i64 u0xab9af77b5b67a0b8, ; 791: Xamarin.AndroidX.ConstraintLayout.Core => 241
	i64 u0xab9c1b2687d86b0b, ; 792: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac2af3fa195a15ce, ; 793: System.Runtime.Numerics => 111
	i64 u0xac5376a2a538dc10, ; 794: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 264
	i64 u0xac5acae88f60357e, ; 795: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 796: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 797: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 798: ro/Microsoft.Maui.Controls.resources => 371
	i64 u0xacda2fab67639416, ; 799: Xamarin.Firebase.Installations => 316
	i64 u0xacdd9e4180d56dda, ; 800: Xamarin.AndroidX.Concurrent.Futures => 239
	i64 u0xacf42eea7ef9cd12, ; 801: System.Threading.Channels => 140
	i64 u0xad7e82ed3b0f16d0, ; 802: lib_Xamarin.AndroidX.DocumentFile.dll.so => 249
	i64 u0xad89c07347f1bad6, ; 803: nl/Microsoft.Maui.Controls.resources.dll => 367
	i64 u0xadbb53caf78a79d2, ; 804: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 805: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 806: Xamarin.AndroidX.Collection.Ktx => 238
	i64 u0xadd8eda2edf396ad, ; 807: Xamarin.Android.Glide.GifDecoder => 222
	i64 u0xadf4cf30debbeb9a, ; 808: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 809: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 810: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 811: Java.Interop => 169
	i64 u0xae53579c90db1107, ; 812: System.ObjectModel.dll => 85
	i64 u0xae7ea18c61eef394, ; 813: SQLite-net => 212
	i64 u0xaeb080014622ef84, ; 814: Xamarin.JavaX.Inject => 335
	i64 u0xaec7c0c7e2ed4575, ; 815: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 342
	i64 u0xaf732d0b2193b8f5, ; 816: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xaf8d8726109d6bee, ; 817: Xamarin.AndroidX.Work.Runtime.dll => 306
	i64 u0xaf9c4f550f1dfc36, ; 818: Xamarin.AndroidX.AsyncLayoutInflater => 232
	i64 u0xafdb94dbccd9d11c, ; 819: Xamarin.AndroidX.Lifecycle.LiveData.dll => 263
	i64 u0xafe29f45095518e7, ; 820: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 275
	i64 u0xb03ae931fb25607e, ; 821: Xamarin.AndroidX.ConstraintLayout => 240
	i64 u0xb05cc42cd94c6d9d, ; 822: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 374
	i64 u0xb0ac21bec8f428c5, ; 823: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 270
	i64 u0xb0bb43dc52ea59f9, ; 824: System.Diagnostics.Tracing.dll => 34
	i64 u0xb19b5004e406fd10, ; 825: Xamarin.AndroidX.Work.Work.Runtime.Ktx.dll => 307
	i64 u0xb1dd05401aa8ee63, ; 826: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 827: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 828: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 829: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 830: da/Microsoft.Maui.Controls.resources => 351
	i64 u0xb3005ac9c8a035c5, ; 831: lib_Xamarin.JavaX.Inject.dll.so => 335
	i64 u0xb3011a0a57f7ffb2, ; 832: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 383
	i64 u0xb363b43eeec5798e, ; 833: lib_Xamarin.Firebase.Iid.Interop.dll.so => 315
	i64 u0xb3874072ee0ecf8c, ; 834: Xamarin.AndroidX.VectorDrawable.Animated.dll => 300
	i64 u0xb3f0a0fcda8d3ebc, ; 835: Xamarin.AndroidX.CardView => 235
	i64 u0xb46be1aa6d4fff93, ; 836: hi/Microsoft.Maui.Controls.resources => 358
	i64 u0xb477491be13109d8, ; 837: ar/Microsoft.Maui.Controls.resources => 348
	i64 u0xb4bd7015ecee9d86, ; 838: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 839: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 840: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb5c38bf497a4cfe2, ; 841: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 842: Microsoft.Extensions.Logging.Abstractions.dll => 188
	i64 u0xb5e2ea1bb00704d6, ; 843: Xamarin.Kotlin.StdLib.Jdk7.dll => 339
	i64 u0xb5ea31d5244c6626, ; 844: System.Threading.ThreadPool.dll => 147
	i64 u0xb7212c4683a94afe, ; 845: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 846: sv/Microsoft.Maui.Controls.resources => 374
	i64 u0xb81a2c6e0aee50fe, ; 847: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb872c26142d22aa9, ; 848: Microsoft.Extensions.Http.dll => 186
	i64 u0xb8b0a9b3dfbc5cb7, ; 849: Xamarin.AndroidX.Window.Extensions.Core.Core => 305
	i64 u0xb8c60af47c08d4da, ; 850: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 851: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 852: Microsoft.CSharp.dll => 1
	i64 u0xb9b8001adf4ed7cc, ; 853: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 292
	i64 u0xb9f64d3b230def68, ; 854: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 370
	i64 u0xb9fc3c8a556e3691, ; 855: ja/Microsoft.Maui.Controls.resources => 363
	i64 u0xba4670aa94a2b3c6, ; 856: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 857: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 858: lib_System.Windows.dll.so => 155
	i64 u0xbb286883bc35db36, ; 859: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 860: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 861: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 862: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc22a245dab70cb4, ; 863: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 217
	i64 u0xbc260cdba33291a3, ; 864: Xamarin.AndroidX.Arch.Core.Common.dll => 230
	i64 u0xbd0e2c0d55246576, ; 865: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 866: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 867: Xamarin.AndroidX.ViewPager2 => 303
	i64 u0xbd4f572d2bd0a789, ; 868: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 869: lib_Xamarin.AndroidX.Browser.dll.so => 234
	i64 u0xbd877b14d0b56392, ; 870: System.Runtime.Intrinsics.dll => 109
	i64 u0xbd960c672af2c51e, ; 871: Xamarin.GooglePlayServices.Stats => 333
	i64 u0xbe50876298b688e8, ; 872: Xamarin.AndroidX.Room.Common.dll => 287
	i64 u0xbe65a49036345cf4, ; 873: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 874: Xamarin.AndroidX.AppCompat.AppCompatResources => 229
	i64 u0xbef9919db45b4ca7, ; 875: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 876: lib_Xamarin.AndroidX.Annotation.dll.so => 225
	i64 u0xbfc1e1fb3095f2b3, ; 877: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xbfc455f43efd8f21, ; 878: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 258
	i64 u0xc040a4ab55817f58, ; 879: ar/Microsoft.Maui.Controls.resources.dll => 348
	i64 u0xc07cadab29efeba0, ; 880: Xamarin.AndroidX.Core.Core.Ktx.dll => 244
	i64 u0xc0d928351ab5ca77, ; 881: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 882: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 883: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 884: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 885: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 886: Xamarin.AndroidX.Activity.dll => 223
	i64 u0xc26c064effb1dea9, ; 887: System.Buffers.dll => 7
	i64 u0xc278de356ad8a9e3, ; 888: Microsoft.IdentityModel.Logging => 196
	i64 u0xc28c50f32f81cc73, ; 889: ja/Microsoft.Maui.Controls.resources.dll => 363
	i64 u0xc2902f6cf5452577, ; 890: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 891: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 892: Xamarin.AndroidX.ViewPager2.dll => 303
	i64 u0xc30b52815b58ac2c, ; 893: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 894: System.Threading.Overlapped => 141
	i64 u0xc396b285e59e5493, ; 895: GoogleGson.dll => 178
	i64 u0xc3c86c1e5e12f03d, ; 896: WindowsBase => 166
	i64 u0xc41fdb231b5de3c0, ; 897: OneSignalSDK.DotNet => 210
	i64 u0xc421b61fd853169d, ; 898: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc4628cb75a5204b4, ; 899: lib_Xamarin.GooglePlayServices.CloudMessaging.dll.so => 332
	i64 u0xc463e077917aa21d, ; 900: System.Runtime.Serialization.Json => 113
	i64 u0xc4d3858ed4d08512, ; 901: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 275
	i64 u0xc50fded0ded1418c, ; 902: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 903: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 904: Xamarin.AndroidX.Navigation.Fragment => 280
	i64 u0xc5325b2fcb37446f, ; 905: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 906: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 221
	i64 u0xc5a0f4b95a699af7, ; 907: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 908: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 909: Xamarin.AndroidX.Tracing.Tracing => 297
	i64 u0xc6706bc8aa7fe265, ; 910: Xamarin.AndroidX.Annotation.Jvm => 227
	i64 u0xc7c01e7d7c93a110, ; 911: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 912: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 913: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 914: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 915: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc8e4154db71642ca, ; 916: lib_FreakyKit.Utils.dll.so => 177
	i64 u0xc9c62c8f354ac568, ; 917: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xc9e54b32fc19baf3, ; 918: lib_CommunityToolkit.Maui.dll.so => 174
	i64 u0xca3a723e7342c5b6, ; 919: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 376
	i64 u0xca5801070d9fccfb, ; 920: System.Text.Encoding => 136
	i64 u0xcab3493c70141c2d, ; 921: pl/Microsoft.Maui.Controls.resources => 368
	i64 u0xcab69b9a31439815, ; 922: lib_Xamarin.Google.ErrorProne.TypeAnnotations.dll.so => 328
	i64 u0xcacfddc9f7c6de76, ; 923: ro/Microsoft.Maui.Controls.resources.dll => 371
	i64 u0xcadbc92899a777f0, ; 924: Xamarin.AndroidX.Startup.StartupRuntime => 295
	i64 u0xcba1cb79f45292b5, ; 925: Xamarin.Android.Glide.GifDecoder.dll => 222
	i64 u0xcbb5f80c7293e696, ; 926: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 927: lib__Microsoft.Android.Resource.Designer.dll.so => 387
	i64 u0xcc15da1e07bbd994, ; 928: Xamarin.AndroidX.SlidingPaneLayout => 292
	i64 u0xcc2876b32ef2794c, ; 929: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 930: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 345
	i64 u0xcc76886e09b88260, ; 931: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 347
	i64 u0xcc9fa2923aa1c9ef, ; 932: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 933: zh-Hans/Microsoft.Maui.Controls.resources.dll => 380
	i64 u0xcd10a42808629144, ; 934: System.Net.Requests => 73
	i64 u0xcdca1b920e9f53ba, ; 935: Xamarin.AndroidX.Interpolator => 257
	i64 u0xcdd0c48b6937b21c, ; 936: Xamarin.AndroidX.SwipeRefreshLayout => 296
	i64 u0xcde1fa22dc303670, ; 937: Microsoft.VisualStudio.DesignTools.XamlTapContract => 385
	i64 u0xcf1f7a2359f1a539, ; 938: Xamarin.JavaX.Inject.dll => 335
	i64 u0xcf23d8093f3ceadf, ; 939: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 940: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 941: System.Private.Xml.Linq => 88
	i64 u0xd04b5f59ed596e31, ; 942: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 943: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd07eb0f20de63ff6, ; 944: Xamarin.Firebase.Encoders.JSON => 313
	i64 u0xd0de8a113e976700, ; 945: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 946: System.Runtime.Extensions => 104
	i64 u0xd1194e1d8a8de83c, ; 947: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 262
	i64 u0xd12beacdfc14f696, ; 948: System.Dynamic.Runtime => 37
	i64 u0xd16fd7fb9bbcd43e, ; 949: Microsoft.Extensions.Diagnostics.Abstractions => 185
	i64 u0xd198e7ce1b6a8344, ; 950: System.Net.Quic.dll => 72
	i64 u0xd23f43eaa6c25c64, ; 951: Xamarin.AndroidX.Media.dll => 278
	i64 u0xd3144156a3727ebe, ; 952: Xamarin.Google.Guava.ListenableFuture => 329
	i64 u0xd333d0af9e423810, ; 953: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 954: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 955: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 229
	i64 u0xd3651b6fc3125825, ; 956: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 957: Microsoft.Extensions.Logging.dll => 187
	i64 u0xd3801faafafb7698, ; 958: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e4c8d6a2d5d470, ; 959: it/Microsoft.Maui.Controls.resources => 362
	i64 u0xd3edcc1f25459a50, ; 960: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 961: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 183
	i64 u0xd4fa0abb79079ea9, ; 962: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 963: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 275
	i64 u0xd5d04bef8478ea19, ; 964: Xamarin.AndroidX.Tracing.Tracing.dll => 297
	i64 u0xd60815f26a12e140, ; 965: Microsoft.Extensions.Logging.Debug.dll => 189
	i64 u0xd65786d27a4ad960, ; 966: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 382
	i64 u0xd6694f8359737e4e, ; 967: Xamarin.AndroidX.SavedState => 289
	i64 u0xd6949e129339eae5, ; 968: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 244
	i64 u0xd6d21782156bc35b, ; 969: Xamarin.AndroidX.SwipeRefreshLayout.dll => 296
	i64 u0xd6de019f6af72435, ; 970: Xamarin.AndroidX.ConstraintLayout.Core.dll => 241
	i64 u0xd6f697a581fc6fe3, ; 971: Xamarin.Google.ErrorProne.TypeAnnotations.dll => 328
	i64 u0xd70956d1e6deefb9, ; 972: Jsr305Binding => 324
	i64 u0xd72329819cbbbc44, ; 973: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 180
	i64 u0xd72c760af136e863, ; 974: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 975: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 976: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 188
	i64 u0xd7f0088bc5ad71f2, ; 977: Xamarin.AndroidX.VersionedParcelable => 301
	i64 u0xd8fb25e28ae30a12, ; 978: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 284
	i64 u0xda1dfa4c534a9251, ; 979: Microsoft.Extensions.DependencyInjection => 182
	i64 u0xdad05a11827959a3, ; 980: System.Collections.NonGeneric.dll => 10
	i64 u0xdadcb03a9169362c, ; 981: OneSignalSDK.DotNet.Android.Location.Binding.dll => 206
	i64 u0xdaee64b908353553, ; 982: Xamarin.AndroidX.Sqlite => 293
	i64 u0xdaefdfe71aa53cf9, ; 983: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 984: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 378
	i64 u0xdb58816721c02a59, ; 985: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdbeda89f832aa805, ; 986: vi/Microsoft.Maui.Controls.resources.dll => 378
	i64 u0xdbf2a779fbc3ac31, ; 987: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 988: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 989: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 990: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 991: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 992: Microsoft.Extensions.Logging => 187
	i64 u0xdd2b722d78ef5f43, ; 993: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 994: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd70765ad6162057, ; 995: Xamarin.JSpecify => 337
	i64 u0xdd92e229ad292030, ; 996: System.Numerics.dll => 84
	i64 u0xdddcdd701e911af1, ; 997: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 259
	i64 u0xdde30e6b77aa6f6c, ; 998: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 380
	i64 u0xde110ae80fa7c2e2, ; 999: System.Xml.XDocument.dll => 159
	i64 u0xde4726fcdf63a198, ; 1000: Xamarin.AndroidX.Transition => 298
	i64 u0xde572c2b2fb32f93, ; 1001: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 1002: hr/Microsoft.Maui.Controls.resources.dll => 359
	i64 u0xdee075f3477ef6be, ; 1003: Xamarin.AndroidX.ExifInterface.dll => 254
	i64 u0xdf4b773de8fb1540, ; 1004: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 1005: System.Net.Ping => 70
	i64 u0xdfd2736047072591, ; 1006: lib_Xamarin.AndroidX.Room.Common.dll.so => 287
	i64 u0xe0142572c095a480, ; 1007: Xamarin.AndroidX.AppCompat.dll => 228
	i64 u0xe021eaa401792a05, ; 1008: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 1009: Xamarin.AndroidX.CoordinatorLayout.dll => 242
	i64 u0xe03ac59b394077a7, ; 1010: lib_Xamarin.Firebase.Messaging.dll.so => 319
	i64 u0xe0496b9d65ef5474, ; 1011: Xamarin.Android.Glide.DiskLruCache.dll => 221
	i64 u0xe0a0a4c883f4beeb, ; 1012: lib_Xamarin.AndroidX.Biometric.dll.so => 233
	i64 u0xe0f282c49dd6bd0a, ; 1013: Xamarin.AndroidX.Media => 278
	i64 u0xe10b760bb1462e7a, ; 1014: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe14ff8e84737288a, ; 1015: Xamarin.Firebase.Installations.InterOp.dll => 317
	i64 u0xe1566bbdb759c5af, ; 1016: Microsoft.Maui.Controls.HotReload.Forms.dll => 382
	i64 u0xe192a588d4410686, ; 1017: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1018: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 1019: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 1020: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 1021: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1022: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 1023: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 1024: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 1025: System.Net.Requests.dll => 73
	i64 u0xe26692647e6bcb62, ; 1026: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 269
	i64 u0xe29b73bc11392966, ; 1027: lib-id-Microsoft.Maui.Controls.resources.dll.so => 361
	i64 u0xe2ad448dee50fbdf, ; 1028: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 1029: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1030: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe2f1495353abf5e7, ; 1031: lib_OneSignalSDK.DotNet.Android.Location.Binding.dll.so => 206
	i64 u0xe332bacb3eb4a806, ; 1032: Mono.Android.Export.dll => 170
	i64 u0xe3811d68d4fe8463, ; 1033: pt-BR/Microsoft.Maui.Controls.resources.dll => 369
	i64 u0xe3a586956771a0ed, ; 1034: lib_SQLite-net.dll.so => 212
	i64 u0xe3b684b69d602994, ; 1035: OneSignalSDK.DotNet.Android.Core.Binding.dll => 204
	i64 u0xe3b7cbae5ad66c75, ; 1036: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe4292b48f3224d5b, ; 1037: lib_Xamarin.AndroidX.Core.ViewTree.dll.so => 245
	i64 u0xe494f7ced4ecd10a, ; 1038: hu/Microsoft.Maui.Controls.resources.dll => 360
	i64 u0xe4a9b1e40d1e8917, ; 1039: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 355
	i64 u0xe4f74a0b5bf9703f, ; 1040: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 1041: lib_Mono.Android.dll.so => 172
	i64 u0xe5538820a0a13955, ; 1042: FreakyKit.Utils => 177
	i64 u0xe55703b9ce5c038a, ; 1043: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1044: Microsoft.VisualBasic => 3
	i64 u0xe5a86e0c11dca2ba, ; 1045: lib_Xamarin.AndroidX.AsyncLayoutInflater.dll.so => 232
	i64 u0xe62913cc36bc07ec, ; 1046: System.Xml.dll => 164
	i64 u0xe7bea09c4900a191, ; 1047: Xamarin.AndroidX.VectorDrawable.dll => 299
	i64 u0xe7e03cc18dcdeb49, ; 1048: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1049: lib_System.Configuration.dll.so => 19
	i64 u0xe8397cf3948e7cb7, ; 1050: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 191
	i64 u0xe83ddbccfc6aff3f, ; 1051: Xamarin.Kotlin.StdLib.Jdk7 => 339
	i64 u0xe86b0df4ba9e5db8, ; 1052: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 268
	i64 u0xe896622fe0902957, ; 1053: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 1054: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1055: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 1056: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 305
	i64 u0xe968ab252d3dda82, ; 1057: lib_Xamarin.Google.Android.DataTransport.TransportRuntime.dll.so => 322
	i64 u0xe98163eb702ae5c5, ; 1058: Xamarin.AndroidX.Arch.Core.Runtime => 231
	i64 u0xe994f23ba4c143e5, ; 1059: Xamarin.KotlinX.Coroutines.Android => 343
	i64 u0xe9b9c8c0458fd92a, ; 1060: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 1061: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 295
	i64 u0xea5a4efc2ad81d1b, ; 1062: Xamarin.Google.ErrorProne.Annotations => 327
	i64 u0xeb2313fe9d65b785, ; 1063: Xamarin.AndroidX.ConstraintLayout.dll => 240
	i64 u0xeb6e275e78cb8d42, ; 1064: Xamarin.AndroidX.LocalBroadcastManager.dll => 277
	i64 u0xeb710a05c0467d46, ; 1065: Xamarin.GooglePlayServices.CloudMessaging => 332
	i64 u0xeb9973cda26e858f, ; 1066: Xamarin.Firebase.Common.dll => 309
	i64 u0xeca593e6696030cc, ; 1067: SQLitePCLRaw.provider.dynamic_cdecl => 216
	i64 u0xed19c616b3fcb7eb, ; 1068: Xamarin.AndroidX.VersionedParcelable.dll => 301
	i64 u0xed60c6fa891c051a, ; 1069: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 384
	i64 u0xeda5321b85525c6d, ; 1070: lib_OneSignalSDK.DotNet.Android.Notifications.Binding.dll.so => 207
	i64 u0xedc4817167106c23, ; 1071: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 1072: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 1073: Xamarin.AndroidX.Navigation.Runtime.dll => 281
	i64 u0xee81f5b3f1c4f83b, ; 1074: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 1075: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 237
	i64 u0xeedf6bb58bca9075, ; 1076: Xamarin.AndroidX.Biometric.dll => 233
	i64 u0xeefc635595ef57f0, ; 1077: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 1078: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 1079: Xamarin.AndroidX.Print => 283
	i64 u0xef602c523fe2e87a, ; 1080: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 329
	i64 u0xef72742e1bcca27a, ; 1081: Microsoft.Maui.Essentials.dll => 201
	i64 u0xefd1e0c4e5c9b371, ; 1082: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 1083: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1084: Xamarin.AndroidX.Activity => 223
	i64 u0xf0042b29a537c57d, ; 1085: lib_Xamarin.AndroidX.Work.Runtime.dll.so => 306
	i64 u0xf00c29406ea45e19, ; 1086: es/Microsoft.Maui.Controls.resources.dll => 354
	i64 u0xf09e47b6ae914f6e, ; 1087: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 1088: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1089: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 1090: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 1091: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 267
	i64 u0xf11b621fc87b983f, ; 1092: Microsoft.Maui.Controls.Xaml.dll => 199
	i64 u0xf161f4f3c3b7e62c, ; 1093: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1094: System.ValueTuple => 152
	i64 u0xf18a15e13fe9dc9d, ; 1095: lib_OneSignalSDK.DotNet.Android.Core.Binding.dll.so => 204
	i64 u0xf1c4b4005493d871, ; 1096: System.Formats.Asn1.dll => 38
	i64 u0xf2039b1a33e63e8e, ; 1097: Xamarin.Google.Android.DataTransport.TransportApi.dll => 320
	i64 u0xf238bd79489d3a96, ; 1098: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 367
	i64 u0xf2a69492c6bd46b0, ; 1099: lib_Xamarin.Kotlin.StdLib.Jdk7.dll.so => 339
	i64 u0xf2feea356ba760af, ; 1100: Xamarin.AndroidX.Arch.Core.Runtime.dll => 231
	i64 u0xf300e085f8acd238, ; 1101: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 1102: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 1103: lib_Xamarin.Google.Android.Material.dll.so => 323
	i64 u0xf3ad9b8fb3eefd12, ; 1104: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1105: System => 165
	i64 u0xf408654b2a135055, ; 1106: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 1107: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 1108: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4c1dd70a5496a17, ; 1109: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1110: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 1111: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 248
	i64 u0xf518f63ead11fcd1, ; 1112: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 1113: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 1114: Xamarin.AndroidX.CoordinatorLayout => 242
	i64 u0xf61ade9836ad4692, ; 1115: Microsoft.IdentityModel.Tokens.dll => 197
	i64 u0xf6742cbf457c450b, ; 1116: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 268
	i64 u0xf6c0e7d55a7a4e4f, ; 1117: Microsoft.IdentityModel.JsonWebTokens => 195
	i64 u0xf6f893f692f8cb43, ; 1118: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 191
	i64 u0xf70c0a7bf8ccf5af, ; 1119: System.Web => 154
	i64 u0xf77b20923f07c667, ; 1120: de/Microsoft.Maui.Controls.resources.dll => 352
	i64 u0xf7e2cac4c45067b3, ; 1121: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 1122: zh-HK/Microsoft.Maui.Controls.resources.dll => 379
	i64 u0xf7fa0bf77fe677cc, ; 1123: Newtonsoft.Json.dll => 203
	i64 u0xf84773b5c81e3cef, ; 1124: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 377
	i64 u0xf8aac5ea82de1348, ; 1125: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 1126: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 1127: lib_Xamarin.AndroidX.RecyclerView.dll.so => 285
	i64 u0xf915dc29808193a1, ; 1128: System.Web.HttpUtility.dll => 153
	i64 u0xf96c777a2a0686f4, ; 1129: hi/Microsoft.Maui.Controls.resources.dll => 358
	i64 u0xf9be54c8bcf8ff3b, ; 1130: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 1131: Microsoft.Extensions.Options => 190
	i64 u0xfa0e82300e67f913, ; 1132: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1133: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1134: lib_System.Net.Security.dll.so => 74
	i64 u0xfa5ed7226d978949, ; 1135: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 348
	i64 u0xfa645d91e9fc4cba, ; 1136: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 1137: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb022853d73b7fa5, ; 1138: lib_SQLitePCLRaw.batteries_v2.dll.so => 213
	i64 u0xfb06dd2338e6f7c4, ; 1139: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 1140: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1141: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 1142: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 1143: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 1144: Xamarin.AndroidX.LocalBroadcastManager => 277
	i64 u0xfc6b7527cc280b3f, ; 1145: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc719aec26adf9d9, ; 1146: Xamarin.AndroidX.Navigation.Fragment.dll => 280
	i64 u0xfc82690c2fe2735c, ; 1147: Xamarin.AndroidX.Lifecycle.Process.dll => 266
	i64 u0xfc93fc307d279893, ; 1148: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1149: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 1150: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 250
	i64 u0xfd49b3c1a76e2748, ; 1151: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 1152: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 1153: Xamarin.AndroidX.Fragment => 255
	i64 u0xfd8dd91a2c26bd5d, ; 1154: Xamarin.AndroidX.Lifecycle.Runtime => 267
	i64 u0xfda36abccf05cf5c, ; 1155: System.Net.WebSockets.Client => 80
	i64 u0xfdbe4710aa9beeff, ; 1156: CommunityToolkit.Maui => 174
	i64 u0xfddbe9695626a7f5, ; 1157: Xamarin.AndroidX.Lifecycle.Common => 261
	i64 u0xfeae9952cf03b8cb, ; 1158: tr/Microsoft.Maui.Controls.resources => 376
	i64 u0xfebe1950717515f9, ; 1159: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 265
	i64 u0xff270a55858bac8d, ; 1160: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 1161: System.Net.Http.Json => 64
	i64 u0xffb5607c2db1b7e8, ; 1162: Xamarin.Kotlin.StdLib.Jdk8 => 340
	i64 u0xffdb7a971be4ec73 ; 1163: System.ValueTuple.dll => 152
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1164 x i32] [
	i32 42, i32 344, i32 296, i32 13, i32 281, i32 175, i32 191, i32 105,
	i32 171, i32 48, i32 228, i32 7, i32 217, i32 204, i32 86, i32 372,
	i32 350, i32 378, i32 194, i32 251, i32 71, i32 334, i32 285, i32 326,
	i32 12, i32 200, i32 102, i32 379, i32 156, i32 19, i32 256, i32 237,
	i32 161, i32 253, i32 299, i32 167, i32 372, i32 10, i32 189, i32 300,
	i32 96, i32 248, i32 250, i32 326, i32 13, i32 190, i32 10, i32 331,
	i32 288, i32 127, i32 310, i32 95, i32 140, i32 39, i32 373, i32 319,
	i32 347, i32 211, i32 302, i32 369, i32 172, i32 222, i32 5, i32 201,
	i32 67, i32 291, i32 130, i32 290, i32 252, i32 68, i32 316, i32 205,
	i32 238, i32 66, i32 57, i32 247, i32 52, i32 43, i32 125, i32 67,
	i32 81, i32 233, i32 269, i32 384, i32 158, i32 92, i32 99, i32 285,
	i32 141, i32 293, i32 151, i32 234, i32 356, i32 162, i32 169, i32 357,
	i32 308, i32 183, i32 81, i32 384, i32 209, i32 337, i32 238, i32 4,
	i32 5, i32 51, i32 101, i32 56, i32 120, i32 98, i32 168, i32 118,
	i32 344, i32 21, i32 360, i32 137, i32 97, i32 347, i32 77, i32 366,
	i32 283, i32 295, i32 119, i32 8, i32 205, i32 165, i32 375, i32 70,
	i32 386, i32 221, i32 270, i32 286, i32 184, i32 171, i32 312, i32 145,
	i32 40, i32 291, i32 47, i32 30, i32 282, i32 364, i32 144, i32 307,
	i32 190, i32 163, i32 28, i32 84, i32 297, i32 258, i32 326, i32 77,
	i32 287, i32 43, i32 29, i32 42, i32 103, i32 117, i32 226, i32 45,
	i32 91, i32 210, i32 375, i32 56, i32 148, i32 383, i32 331, i32 146,
	i32 100, i32 49, i32 20, i32 243, i32 260, i32 114, i32 293, i32 219,
	i32 288, i32 356, i32 325, i32 213, i32 260, i32 338, i32 192, i32 94,
	i32 208, i32 58, i32 218, i32 361, i32 359, i32 81, i32 325, i32 169,
	i32 26, i32 317, i32 340, i32 71, i32 284, i32 185, i32 254, i32 294,
	i32 382, i32 377, i32 69, i32 33, i32 355, i32 14, i32 139, i32 218,
	i32 38, i32 381, i32 239, i32 232, i32 321, i32 368, i32 134, i32 92,
	i32 88, i32 149, i32 374, i32 24, i32 138, i32 57, i32 208, i32 51,
	i32 353, i32 312, i32 29, i32 157, i32 34, i32 164, i32 186, i32 333,
	i32 318, i32 321, i32 255, i32 194, i32 52, i32 387, i32 304, i32 90,
	i32 328, i32 386, i32 311, i32 313, i32 235, i32 35, i32 356, i32 157,
	i32 9, i32 354, i32 0, i32 76, i32 55, i32 200, i32 350, i32 312,
	i32 198, i32 13, i32 303, i32 179, i32 230, i32 109, i32 274, i32 32,
	i32 310, i32 104, i32 84, i32 92, i32 53, i32 96, i32 336, i32 58,
	i32 9, i32 102, i32 247, i32 68, i32 302, i32 349, i32 203, i32 288,
	i32 125, i32 286, i32 116, i32 307, i32 135, i32 197, i32 126, i32 106,
	i32 338, i32 131, i32 234, i32 329, i32 147, i32 156, i32 256, i32 243,
	i32 213, i32 251, i32 318, i32 286, i32 97, i32 24, i32 292, i32 143,
	i32 283, i32 279, i32 3, i32 167, i32 229, i32 294, i32 100, i32 161,
	i32 99, i32 271, i32 245, i32 25, i32 93, i32 205, i32 168, i32 172,
	i32 224, i32 3, i32 210, i32 368, i32 253, i32 1, i32 114, i32 338,
	i32 256, i32 266, i32 218, i32 206, i32 33, i32 6, i32 372, i32 156,
	i32 370, i32 53, i32 259, i32 85, i32 309, i32 301, i32 282, i32 44,
	i32 265, i32 104, i32 47, i32 138, i32 64, i32 314, i32 276, i32 69,
	i32 80, i32 59, i32 89, i32 154, i32 230, i32 133, i32 110, i32 362,
	i32 276, i32 284, i32 171, i32 134, i32 314, i32 140, i32 40, i32 349,
	i32 215, i32 181, i32 197, i32 198, i32 333, i32 60, i32 176, i32 181,
	i32 273, i32 79, i32 25, i32 209, i32 36, i32 99, i32 269, i32 71,
	i32 22, i32 243, i32 202, i32 373, i32 121, i32 69, i32 107, i32 379,
	i32 277, i32 119, i32 117, i32 261, i32 216, i32 262, i32 11, i32 2,
	i32 124, i32 115, i32 322, i32 142, i32 41, i32 271, i32 87, i32 225,
	i32 214, i32 173, i32 27, i32 148, i32 181, i32 363, i32 182, i32 327,
	i32 224, i32 1, i32 226, i32 44, i32 242, i32 149, i32 259, i32 18,
	i32 86, i32 351, i32 330, i32 41, i32 265, i32 236, i32 340, i32 270,
	i32 94, i32 187, i32 28, i32 41, i32 211, i32 78, i32 252, i32 239,
	i32 144, i32 108, i32 237, i32 315, i32 11, i32 105, i32 137, i32 16,
	i32 122, i32 66, i32 157, i32 22, i32 320, i32 215, i32 353, i32 346,
	i32 102, i32 182, i32 345, i32 315, i32 63, i32 58, i32 199, i32 352,
	i32 110, i32 173, i32 385, i32 343, i32 9, i32 323, i32 120, i32 98,
	i32 311, i32 193, i32 105, i32 274, i32 174, i32 198, i32 111, i32 227,
	i32 49, i32 20, i32 311, i32 273, i32 246, i32 72, i32 241, i32 321,
	i32 155, i32 39, i32 351, i32 35, i32 341, i32 38, i32 357, i32 215,
	i32 305, i32 306, i32 108, i32 366, i32 21, i32 208, i32 336, i32 272,
	i32 202, i32 15, i32 192, i32 79, i32 79, i32 246, i32 192, i32 249,
	i32 280, i32 290, i32 152, i32 21, i32 316, i32 200, i32 350, i32 50,
	i32 51, i32 278, i32 376, i32 366, i32 94, i32 220, i32 185, i32 362,
	i32 16, i32 0, i32 245, i32 123, i32 359, i32 160, i32 45, i32 327,
	i32 178, i32 116, i32 63, i32 211, i32 166, i32 184, i32 179, i32 193,
	i32 14, i32 289, i32 111, i32 227, i32 207, i32 60, i32 342, i32 121,
	i32 365, i32 2, i32 375, i32 309, i32 318, i32 255, i32 322, i32 272,
	i32 320, i32 186, i32 341, i32 337, i32 272, i32 6, i32 236, i32 355,
	i32 251, i32 195, i32 17, i32 373, i32 352, i32 77, i32 240, i32 331,
	i32 175, i32 131, i32 336, i32 365, i32 83, i32 189, i32 12, i32 34,
	i32 119, i32 346, i32 266, i32 253, i32 85, i32 219, i32 334, i32 18,
	i32 302, i32 216, i32 180, i32 264, i32 72, i32 383, i32 258, i32 95,
	i32 217, i32 165, i32 257, i32 82, i32 381, i32 260, i32 228, i32 235,
	i32 342, i32 154, i32 36, i32 151, i32 377, i32 212, i32 194, i32 380,
	i32 144, i32 56, i32 113, i32 236, i32 299, i32 271, i32 298, i32 37,
	i32 381, i32 179, i32 115, i32 226, i32 14, i32 220, i32 146, i32 43,
	i32 201, i32 224, i32 308, i32 98, i32 345, i32 168, i32 16, i32 48,
	i32 107, i32 97, i32 294, i32 276, i32 27, i32 128, i32 29, i32 313,
	i32 357, i32 290, i32 128, i32 44, i32 246, i32 252, i32 149, i32 8,
	i32 203, i32 279, i32 358, i32 371, i32 214, i32 334, i32 370, i32 132,
	i32 369, i32 42, i32 346, i32 214, i32 33, i32 387, i32 46, i32 143,
	i32 273, i32 199, i32 263, i32 386, i32 247, i32 138, i32 62, i32 132,
	i32 349, i32 48, i32 160, i32 310, i32 231, i32 263, i32 220, i32 261,
	i32 332, i32 365, i32 298, i32 46, i32 193, i32 164, i32 196, i32 257,
	i32 196, i32 354, i32 254, i32 361, i32 202, i32 330, i32 18, i32 8,
	i32 308, i32 178, i32 244, i32 124, i32 59, i32 141, i32 176, i32 281,
	i32 364, i32 267, i32 324, i32 304, i32 150, i32 142, i32 344, i32 341,
	i32 126, i32 343, i32 317, i32 160, i32 162, i32 248, i32 223, i32 180,
	i32 314, i32 367, i32 26, i32 279, i32 264, i32 0, i32 82, i32 304,
	i32 127, i32 325, i32 101, i32 148, i32 209, i32 323, i32 282, i32 54,
	i32 162, i32 167, i32 131, i32 37, i32 300, i32 364, i32 184, i32 176,
	i32 22, i32 112, i32 90, i32 249, i32 50, i32 60, i32 122, i32 83,
	i32 127, i32 163, i32 324, i32 166, i32 289, i32 291, i32 250, i32 177,
	i32 219, i32 268, i32 4, i32 262, i32 319, i32 360, i32 170, i32 2,
	i32 330, i32 274, i32 116, i32 385, i32 195, i32 225, i32 19, i32 175,
	i32 207, i32 188, i32 89, i32 65, i32 30, i32 183, i32 353, i32 241,
	i32 59, i32 111, i32 264, i32 32, i32 128, i32 159, i32 371, i32 316,
	i32 239, i32 140, i32 249, i32 367, i32 153, i32 17, i32 238, i32 222,
	i32 75, i32 74, i32 15, i32 169, i32 85, i32 212, i32 335, i32 342,
	i32 124, i32 306, i32 232, i32 263, i32 275, i32 240, i32 374, i32 270,
	i32 34, i32 307, i32 118, i32 139, i32 122, i32 106, i32 351, i32 335,
	i32 383, i32 315, i32 300, i32 235, i32 358, i32 348, i32 54, i32 47,
	i32 28, i32 145, i32 188, i32 339, i32 147, i32 35, i32 374, i32 173,
	i32 186, i32 305, i32 75, i32 161, i32 1, i32 292, i32 370, i32 363,
	i32 159, i32 12, i32 155, i32 151, i32 76, i32 103, i32 112, i32 217,
	i32 230, i32 65, i32 66, i32 303, i32 45, i32 234, i32 109, i32 333,
	i32 287, i32 7, i32 229, i32 55, i32 225, i32 64, i32 258, i32 348,
	i32 244, i32 20, i32 109, i32 101, i32 62, i32 142, i32 223, i32 7,
	i32 196, i32 363, i32 170, i32 50, i32 303, i32 115, i32 141, i32 178,
	i32 166, i32 210, i32 80, i32 332, i32 113, i32 275, i32 17, i32 73,
	i32 280, i32 89, i32 221, i32 87, i32 120, i32 297, i32 227, i32 135,
	i32 153, i32 106, i32 11, i32 90, i32 177, i32 31, i32 174, i32 376,
	i32 136, i32 368, i32 328, i32 371, i32 295, i32 222, i32 40, i32 387,
	i32 292, i32 139, i32 345, i32 347, i32 25, i32 380, i32 73, i32 257,
	i32 296, i32 385, i32 335, i32 27, i32 67, i32 88, i32 95, i32 113,
	i32 313, i32 31, i32 104, i32 262, i32 37, i32 185, i32 72, i32 278,
	i32 329, i32 108, i32 123, i32 229, i32 87, i32 187, i32 86, i32 362,
	i32 93, i32 183, i32 129, i32 275, i32 297, i32 189, i32 382, i32 289,
	i32 244, i32 296, i32 241, i32 328, i32 324, i32 180, i32 163, i32 130,
	i32 188, i32 301, i32 284, i32 182, i32 10, i32 206, i32 293, i32 49,
	i32 378, i32 91, i32 378, i32 150, i32 62, i32 136, i32 150, i32 61,
	i32 187, i32 117, i32 137, i32 337, i32 84, i32 259, i32 380, i32 159,
	i32 298, i32 143, i32 359, i32 254, i32 82, i32 70, i32 287, i32 228,
	i32 136, i32 242, i32 319, i32 221, i32 233, i32 278, i32 125, i32 317,
	i32 382, i32 54, i32 110, i32 130, i32 88, i32 23, i32 74, i32 129,
	i32 31, i32 73, i32 269, i32 361, i32 158, i32 23, i32 4, i32 206,
	i32 170, i32 369, i32 212, i32 204, i32 123, i32 245, i32 360, i32 355,
	i32 114, i32 172, i32 177, i32 32, i32 3, i32 232, i32 164, i32 299,
	i32 30, i32 19, i32 191, i32 339, i32 268, i32 93, i32 36, i32 5,
	i32 305, i32 322, i32 231, i32 343, i32 155, i32 295, i32 327, i32 240,
	i32 277, i32 332, i32 309, i32 216, i32 301, i32 384, i32 207, i32 76,
	i32 63, i32 281, i32 147, i32 237, i32 233, i32 121, i32 134, i32 283,
	i32 329, i32 201, i32 100, i32 39, i32 223, i32 306, i32 354, i32 68,
	i32 26, i32 75, i32 78, i32 267, i32 199, i32 24, i32 152, i32 204,
	i32 38, i32 320, i32 367, i32 339, i32 231, i32 133, i32 103, i32 323,
	i32 57, i32 165, i32 91, i32 61, i32 132, i32 46, i32 133, i32 248,
	i32 145, i32 78, i32 242, i32 197, i32 268, i32 195, i32 191, i32 154,
	i32 352, i32 83, i32 379, i32 203, i32 377, i32 61, i32 96, i32 285,
	i32 153, i32 358, i32 118, i32 190, i32 6, i32 15, i32 74, i32 348,
	i32 146, i32 52, i32 213, i32 70, i32 23, i32 158, i32 126, i32 65,
	i32 277, i32 112, i32 280, i32 266, i32 55, i32 53, i32 250, i32 107,
	i32 135, i32 255, i32 267, i32 80, i32 174, i32 261, i32 376, i32 265,
	i32 129, i32 64, i32 340, i32 152
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1dcfb6f8779c33b6f768c996495cb90ecd729329"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
