; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [171 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [513 x i32] [
	i32 u0x0027eb9e, ; 0: System.Net.NetworkInformation.dll => 131
	i32 u0x00345a11, ; 1: lib_System.Net.Requests.dll.so => 133
	i32 u0x009b21bb, ; 2: System.Net.NameResolution.dll => 130
	i32 u0x00c8cc5d, ; 3: lib_Xamarin.AndroidX.Loader.dll.so => 88
	i32 u0x00e0bbf7, ; 4: lib_System.Xml.XmlSerializer.dll.so => 164
	i32 u0x0119bc86, ; 5: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 42
	i32 u0x0254c520, ; 6: Newtonsoft.Json.dll => 56
	i32 u0x02664405, ; 7: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i32 u0x0288f624, ; 8: lib_FreakyKit.Utils.dll.so => 38
	i32 u0x028aa24d, ; 9: System.Threading.Thread => 158
	i32 u0x032e3b15, ; 10: lib_OneSignalSDK.DotNet.dll.so => 63
	i32 u0x03358480, ; 11: lib_Microsoft.Maui.dll.so => 53
	i32 u0x0335cdbc, ; 12: ca/Microsoft.Maui.Controls.resources => 1
	i32 u0x044bb714, ; 13: Microsoft.Maui.Graphics.dll => 55
	i32 u0x054978f4, ; 14: Microsoft.Identity.Abstractions => 50
	i32 u0x056606a6, ; 15: lib_System.Collections.NonGeneric.dll.so => 109
	i32 u0x05dc54b4, ; 16: Microsoft.Extensions.Diagnostics.Abstractions => 44
	i32 u0x06c2cd46, ; 17: zh-HK/Microsoft.Maui.Controls.resources => 31
	i32 u0x06ee56d3, ; 18: lib_System.Net.Mail.dll.so => 129
	i32 u0x06ffddbc, ; 19: System.Runtime.InteropServices => 145
	i32 u0x074aea82, ; 20: System.Threading.Channels.dll => 157
	i32 u0x078d432a, ; 21: Plugin.Maui.Biometric.dll => 64
	i32 u0x0a0c2bd0, ; 22: lib_Xamarin.AndroidX.Activity.dll.so => 71
	i32 u0x0aa02b72, ; 23: lib_Plugin.Maui.SwipeCardView.dll.so => 104
	i32 u0x0ade3a75, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 95
	i32 u0x0aee6a3d, ; 25: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i32 u0x0aeedc53, ; 26: lib_Xamarin.Google.Android.Material.dll.so => 98
	i32 u0x0b721a36, ; 27: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i32 u0x0ba65f85, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 30
	i32 u0x0be195c3, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i32 u0x0c38ff48, ; 30: System.ComponentModel => 114
	i32 u0x0c7b2e71, ; 31: Xamarin.AndroidX.Browser.dll => 75
	i32 u0x0cb2f309, ; 32: lib_SQLitePCLRaw.provider.dynamic_cdecl.dll.so => 69
	i32 u0x0d3ad0d0, ; 33: Microsoft.Extensions.Diagnostics.dll => 43
	i32 u0x0dc10265, ; 34: Microsoft.CSharp.dll => 106
	i32 u0x0dc2f416, ; 35: lib_Xamarin.AndroidX.CustomView.dll.so => 81
	i32 u0x0e762ada, ; 36: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i32 u0x0eb2f8c5, ; 37: System.Reflection.Emit.Lightweight => 142
	i32 u0x101819f3, ; 38: OneSignalSDK.DotNet.Android => 61
	i32 u0x10bf9929, ; 39: cs/Microsoft.Maui.Controls.resources.dll => 2
	i32 u0x113d3381, ; 40: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i32 u0x115c82ee, ; 41: Microsoft.Extensions.Http.dll => 45
	i32 u0x13031348, ; 42: Xamarin.AndroidX.Activity.dll => 71
	i32 u0x136bf828, ; 43: lib_System.Runtime.dll.so => 150
	i32 u0x14095832, ; 44: ja/Microsoft.Maui.Controls.resources.dll => 15
	i32 u0x14afd810, ; 45: SQLitePCLRaw.lib.e_sqlite3.android.dll => 68
	i32 u0x153e1455, ; 46: it/Microsoft.Maui.Controls.resources.dll => 14
	i32 u0x15502fa0, ; 47: cs/Microsoft.Maui.Controls.resources => 2
	i32 u0x15c177ae, ; 48: lib_Microsoft.Extensions.Configuration.dll.so => 39
	i32 u0x15e184df, ; 49: lib_System.Runtime.Loader.dll.so => 146
	i32 u0x168819b2, ; 50: Plugin.Maui.SwipeCardView => 104
	i32 u0x16a510e1, ; 51: System.Threading.Thread.dll => 158
	i32 u0x16fe439a, ; 52: System.Memory.dll => 127
	i32 u0x17969339, ; 53: _Microsoft.Android.Resource.Designer => 34
	i32 u0x196db5ae, ; 54: OneSignalSDK.DotNet.Core => 62
	i32 u0x19f6996b, ; 55: sv/Microsoft.Maui.Controls.resources.dll => 26
	i32 u0x19fe2da6, ; 56: OneSignalSDK.DotNet => 63
	i32 u0x1a61054f, ; 57: System.Collections => 111
	i32 u0x1ae0ec2c, ; 58: Xamarin.AndroidX.Fragment.dll => 83
	i32 u0x1b317bfd, ; 59: System.Web.HttpUtility.dll => 160
	i32 u0x1b5932ea, ; 60: lib_Mono.Android.Runtime.dll.so => 169
	i32 u0x1b611806, ; 61: System.Runtime.Serialization.Primitives.dll => 149
	i32 u0x1bc6ffe7, ; 62: lib_Java.Interop.dll.so => 168
	i32 u0x1bff388e, ; 63: System.dll => 165
	i32 u0x1c78d08a, ; 64: lib_System.Private.Uri.dll.so => 138
	i32 u0x1cd5cfc6, ; 65: ScheduleListUI.dll => 105
	i32 u0x1dbae811, ; 66: System.ObjectModel => 137
	i32 u0x1dd2dc50, ; 67: id/Microsoft.Maui.Controls.resources.dll => 13
	i32 u0x1e092f31, ; 68: fi/Microsoft.Maui.Controls.resources.dll => 7
	i32 u0x1e9789de, ; 69: Microsoft.Extensions.Primitives.dll => 49
	i32 u0x1f6bf43d, ; 70: hi/Microsoft.Maui.Controls.resources => 10
	i32 u0x20216150, ; 71: Microsoft.Extensions.Logging => 46
	i32 u0x234b6fb2, ; 72: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i32 u0x2397454a, ; 73: lib_System.Collections.Specialized.dll.so => 110
	i32 u0x239cf51b, ; 74: CommunityToolkit.Maui => 35
	i32 u0x2459aaf0, ; 75: lib_System.Net.Sockets.dll.so => 135
	i32 u0x2568904f, ; 76: Xamarin.AndroidX.CustomView => 81
	i32 u0x262d781c, ; 77: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i32 u0x2645b6c3, ; 78: lib_CommunityToolkit.Maui.Core.dll.so => 36
	i32 u0x27787397, ; 79: System.Text.Encodings.Web.dll => 154
	i32 u0x27b53050, ; 80: lib_System.Data.Common.dll.so => 116
	i32 u0x2814a96c, ; 81: System.Collections.Concurrent => 107
	i32 u0x28607aa1, ; 82: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i32 u0x28bdabca, ; 83: System.Net.Security => 134
	i32 u0x2904cf94, ; 84: ca/Microsoft.Maui.Controls.resources.dll => 1
	i32 u0x29293ff5, ; 85: System.Xml.Linq.dll => 161
	i32 u0x29423679, ; 86: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 80
	i32 u0x2a1e8ecb, ; 87: ko/Microsoft.Maui.Controls.resources.dll => 16
	i32 u0x2a4afd4a, ; 88: de/Microsoft.Maui.Controls.resources.dll => 4
	i32 u0x2b15ed29, ; 89: System.Runtime.Loader.dll => 146
	i32 u0x2ca248c0, ; 90: SQLitePCLRaw.batteries_v2 => 66
	i32 u0x2ce01360, ; 91: SQLitePCLRaw.provider.dynamic_cdecl.dll => 69
	i32 u0x2d445acd, ; 92: System.Net.Requests => 133
	i32 u0x2e394f87, ; 93: System.IO.Compression => 123
	i32 u0x2e846bca, ; 94: FreakyKit.Utils => 38
	i32 u0x2f0980eb, ; 95: Microsoft.Extensions.Options => 48
	i32 u0x2ff6fb9f, ; 96: System.Data.Common => 116
	i32 u0x30a0e95c, ; 97: lib_System.Threading.Thread.dll.so => 158
	i32 u0x311247b5, ; 98: System.Private.Uri.dll => 138
	i32 u0x317d5b75, ; 99: System.IO.Compression.Brotli => 122
	i32 u0x3312831d, ; 100: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 82
	i32 u0x33e88be1, ; 101: ar/Microsoft.Maui.Controls.resources => 0
	i32 u0x351454c7, ; 102: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 68
	i32 u0x35e25008, ; 103: System.ComponentModel.Primitives.dll => 112
	i32 u0x3635f196, ; 104: lib_Xamarin.GooglePlayServices.Basement.dll.so => 100
	i32 u0x3664c11a, ; 105: Xamarin.AndroidX.Biometric => 74
	i32 u0x373f6a31, ; 106: tr/Microsoft.Maui.Controls.resources.dll => 28
	i32 u0x37ea9cd7, ; 107: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 86
	i32 u0x38d89c1d, ; 108: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 84
	i32 u0x38f24a24, ; 109: Newtonsoft.Json => 56
	i32 u0x3a2aaa1d, ; 110: System.Xml.XDocument => 163
	i32 u0x3b2c715c, ; 111: System.Collections.dll => 111
	i32 u0x3b3271e4, ; 112: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i32 u0x3b4797e5, ; 113: es/Microsoft.Maui.Controls.resources => 6
	i32 u0x3c5e5b62, ; 114: Xamarin.AndroidX.SavedState.dll => 94
	i32 u0x3cbffa41, ; 115: System.Drawing => 120
	i32 u0x3d10a5d2, ; 116: Microsoft.Identity.Abstractions.dll => 50
	i32 u0x3d548d92, ; 117: Microsoft.Extensions.DependencyInjection.Abstractions => 42
	i32 u0x3d5a6611, ; 118: da/Microsoft.Maui.Controls.resources.dll => 3
	i32 u0x3dbaaf8f, ; 119: Xamarin.AndroidX.AppCompat => 72
	i32 u0x3dc84a49, ; 120: System.Drawing.Primitives.dll => 119
	i32 u0x3e444eb4, ; 121: System.Linq.Expressions.dll => 125
	i32 u0x3e865cbd, ; 122: Microsoft.Extensions.Diagnostics.Abstractions.dll => 44
	i32 u0x3ebd41f6, ; 123: lib_System.Collections.dll.so => 111
	i32 u0x3eea4db8, ; 124: lib_Microsoft.Extensions.Primitives.dll.so => 49
	i32 u0x408b17f4, ; 125: System.ComponentModel.TypeConverter => 113
	i32 u0x409e66d8, ; 126: Xamarin.Kotlin.StdLib => 101
	i32 u0x41761b2c, ; 127: System => 165
	i32 u0x42be2972, ; 128: lib_System.Text.Encodings.Web.dll.so => 154
	i32 u0x4393e151, ; 129: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i32 u0x444e5c8e, ; 130: lib_System.ComponentModel.TypeConverter.dll.so => 113
	i32 u0x4474042c, ; 131: lib_System.Numerics.Vectors.dll.so => 136
	i32 u0x44845810, ; 132: lib_System.Net.Http.dll.so => 128
	i32 u0x463a8801, ; 133: Xamarin.AndroidX.Navigation.Runtime.dll => 91
	i32 u0x464305ed, ; 134: fi/Microsoft.Maui.Controls.resources => 7
	i32 u0x47544163, ; 135: Plugin.Maui.SwipeCardView.dll => 104
	i32 u0x47b79c15, ; 136: pl/Microsoft.Maui.Controls.resources.dll => 20
	i32 u0x4868cc7b, ; 137: CommunityToolkit.Mvvm => 37
	i32 u0x499b8219, ; 138: nb/Microsoft.Maui.Controls.resources.dll => 18
	i32 u0x4a0189ae, ; 139: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i32 u0x4a4cd262, ; 140: Xamarin.AndroidX.Collection.Jvm.dll => 77
	i32 u0x4ae97402, ; 141: lib_Microsoft.Maui.Graphics.dll.so => 55
	i32 u0x4b275854, ; 142: Xamarin.KotlinX.Serialization.Core.Jvm => 103
	i32 u0x4b8552db, ; 143: lib_Microsoft.Identity.Abstractions.dll.so => 50
	i32 u0x4b863c7a, ; 144: lib_System.Private.Xml.Linq.dll.so => 139
	i32 u0x4d0585a0, ; 145: SQLitePCLRaw.core.dll => 67
	i32 u0x4d14ee2b, ; 146: Xamarin.AndroidX.DrawerLayout.dll => 82
	i32 u0x4eed2679, ; 147: System.Linq => 126
	i32 u0x50255dd9, ; 148: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i32 u0x50acdfd7, ; 149: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i32 u0x52114ed3, ; 150: Xamarin.AndroidX.SavedState => 94
	i32 u0x533678bd, ; 151: lib_System.Private.CoreLib.dll.so => 167
	i32 u0x5382d24d, ; 152: FreakyKit.Utils.dll => 38
	i32 u0x53cefc50, ; 153: Xamarin.AndroidX.CoordinatorLayout => 78
	i32 u0x53f80ba6, ; 154: System.Runtime.Serialization.Formatters.dll => 148
	i32 u0x55ab7451, ; 155: Xamarin.AndroidX.Lifecycle.Common.Jvm => 84
	i32 u0x55e55df2, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 86
	i32 u0x568cd628, ; 157: System.Formats.Asn1.dll => 121
	i32 u0x56e7a7ad, ; 158: System.Net.Security.dll => 134
	i32 u0x5718a9ef, ; 159: System.Collections.Immutable.dll => 108
	i32 u0x57261233, ; 160: System.IO.Compression.dll => 123
	i32 u0x57924923, ; 161: Xamarin.AndroidX.AppCompat.AppCompatResources => 73
	i32 u0x57a5e912, ; 162: Microsoft.Extensions.Primitives => 49
	i32 u0x5833866d, ; 163: System.Collections.Immutable => 108
	i32 u0x583e844f, ; 164: System.IO.Compression.Brotli.dll => 122
	i32 u0x58fd6613, ; 165: hi/Microsoft.Maui.Controls.resources.dll => 10
	i32 u0x596b5b3a, ; 166: lib_System.Drawing.Primitives.dll.so => 119
	i32 u0x59b67d12, ; 167: Microsoft.Extensions.Http => 45
	i32 u0x5a48cf6c, ; 168: el/Microsoft.Maui.Controls.resources.dll => 5
	i32 u0x5be451c7, ; 169: lib_Xamarin.AndroidX.Browser.dll.so => 75
	i32 u0x5bf8ca0f, ; 170: System.Text.RegularExpressions.dll => 156
	i32 u0x5c7be408, ; 171: sk/Microsoft.Maui.Controls.resources.dll => 25
	i32 u0x5cabc9a4, ; 172: fr/Microsoft.Maui.Controls.resources => 8
	i32 u0x5d011b9a, ; 173: OneSignalSDK.DotNet.Android.dll => 61
	i32 u0x5e0b6fdc, ; 174: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 103
	i32 u0x5e33306d, ; 175: sv/Microsoft.Maui.Controls.resources => 26
	i32 u0x5e7321d2, ; 176: lib_System.ComponentModel.Primitives.dll.so => 112
	i32 u0x5ed5f779, ; 177: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i32 u0x5f3292e5, ; 178: lib_Microsoft.Extensions.Diagnostics.dll.so => 43
	i32 u0x60b0136a, ; 179: Xamarin.AndroidX.Loader.dll => 88
	i32 u0x60d97228, ; 180: Xamarin.AndroidX.ViewPager2 => 97
	i32 u0x616edae3, ; 181: CommunityToolkit.Maui.Core.dll => 36
	i32 u0x6188ba7e, ; 182: Xamarin.AndroidX.CursorAdapter => 80
	i32 u0x61b9038d, ; 183: System.Net.Http.dll => 128
	i32 u0x61c036ca, ; 184: System.Text.RegularExpressions => 156
	i32 u0x62021776, ; 185: lib_System.IO.Compression.dll.so => 123
	i32 u0x620a8774, ; 186: lib_System.Xml.ReaderWriter.dll.so => 162
	i32 u0x62c6282e, ; 187: System.Runtime => 150
	i32 u0x62cec1a2, ; 188: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 102
	i32 u0x62d6ea10, ; 189: Xamarin.Google.Android.Material.dll => 98
	i32 u0x63fca3d0, ; 190: System.Net.Primitives.dll => 132
	i32 u0x641f3e5a, ; 191: System.Security.Cryptography => 152
	i32 u0x660284a1, ; 192: SQLitePCLRaw.lib.e_sqlite3.android => 68
	i32 u0x6715dc86, ; 193: Xamarin.AndroidX.CardView.dll => 76
	i32 u0x677cd287, ; 194: ro/Microsoft.Maui.Controls.resources.dll => 23
	i32 u0x68139a0d, ; 195: System.IO.Pipelines.dll => 124
	i32 u0x68f61ae4, ; 196: lib_System.Formats.Asn1.dll.so => 121
	i32 u0x690d4b7d, ; 197: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i32 u0x69239124, ; 198: System.Diagnostics.TraceSource.dll => 118
	i32 u0x6947f945, ; 199: Xamarin.AndroidX.SwipeRefreshLayout => 95
	i32 u0x6988f147, ; 200: Microsoft.Extensions.Logging.dll => 46
	i32 u0x69f4f41d, ; 201: lib_Xamarin.AndroidX.AppCompat.dll.so => 72
	i32 u0x6a216153, ; 202: Mono.Android.Runtime.dll => 169
	i32 u0x6a96652d, ; 203: Xamarin.AndroidX.Fragment => 83
	i32 u0x6afaf338, ; 204: lib_System.Threading.dll.so => 159
	i32 u0x6b645ada, ; 205: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i32 u0x6bcd3296, ; 206: Xamarin.AndroidX.Loader => 88
	i32 u0x6be1e423, ; 207: nb/Microsoft.Maui.Controls.resources => 18
	i32 u0x6be29904, ; 208: lib_Xamarin.GooglePlayServices.Base.dll.so => 99
	i32 u0x6c111525, ; 209: Xamarin.Kotlin.StdLib.dll => 101
	i32 u0x6c13413e, ; 210: Xamarin.Google.Android.Material => 98
	i32 u0x6c652ce8, ; 211: Xamarin.AndroidX.Navigation.UI.dll => 92
	i32 u0x6c96614d, ; 212: hu/Microsoft.Maui.Controls.resources => 12
	i32 u0x6cbab720, ; 213: System.Text.Encoding.Extensions => 153
	i32 u0x6cc30c8c, ; 214: System.Runtime.Serialization.Formatters => 148
	i32 u0x6cff90ba, ; 215: Microsoft.Extensions.Logging.Abstractions.dll => 47
	i32 u0x6dcaebf7, ; 216: uk/Microsoft.Maui.Controls.resources.dll => 29
	i32 u0x6ec71a65, ; 217: System.Linq.Expressions => 125
	i32 u0x6f7a29e4, ; 218: System.Reflection.Primitives => 143
	i32 u0x7070c6c0, ; 219: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i32 u0x71c18de0, ; 220: ScheduleListUI => 105
	i32 u0x71c62d98, ; 221: Xamarin.GooglePlayServices.Basement => 100
	i32 u0x71dc7c8b, ; 222: System.Collections.NonGeneric.dll => 109
	i32 u0x71ea74be, ; 223: lib_OneSignalSDK.DotNet.Android.Core.Binding.dll.so => 57
	i32 u0x72fcebde, ; 224: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 73
	i32 u0x731dd955, ; 225: lib_Mono.Android.dll.so => 170
	i32 u0x73674b00, ; 226: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 70
	i32 u0x739bd4a8, ; 227: System.Private.Xml.Linq => 139
	i32 u0x73fbecbe, ; 228: lib_System.Memory.dll.so => 127
	i32 u0x74d743bf, ; 229: ja/Microsoft.Maui.Controls.resources => 15
	i32 u0x75533a5e, ; 230: Microsoft.Extensions.Configuration.dll => 39
	i32 u0x781074ce, ; 231: hr/Microsoft.Maui.Controls.resources => 11
	i32 u0x78b622b1, ; 232: ar/Microsoft.Maui.Controls.resources.dll => 0
	i32 u0x7970be4f, ; 233: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i32 u0x79d00016, ; 234: it/Microsoft.Maui.Controls.resources => 14
	i32 u0x79eb68ee, ; 235: System.Private.Xml => 140
	i32 u0x7a80bd4e, ; 236: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 85
	i32 u0x7b350579, ; 237: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i32 u0x7b6f419e, ; 238: System.Diagnostics.TraceSource => 118
	i32 u0x7bf8cdab, ; 239: System.Runtime.dll => 150
	i32 u0x7c9a6f83, ; 240: SQLitePCLRaw.provider.dynamic_cdecl => 69
	i32 u0x7c9bf920, ; 241: System.Numerics.Vectors => 136
	i32 u0x7d603cde, ; 242: SQLitePCLRaw.provider.e_sqlite3.dll => 70
	i32 u0x7ec9ffe9, ; 243: System.Console => 115
	i32 u0x7eed5835, ; 244: Xamarin.GooglePlayServices.Base.dll => 99
	i32 u0x7f1f0ab2, ; 245: lib_OneSignalSDK.DotNet.Android.Notifications.Binding.dll.so => 60
	i32 u0x7f951399, ; 246: OneSignalSDK.DotNet.Core.dll => 62
	i32 u0x7fb38cd2, ; 247: System.Collections.Specialized => 110
	i32 u0x7fc7a41e, ; 248: System.Xml.XmlSerializer.dll => 164
	i32 u0x7fdcdc37, ; 249: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i32 u0x8030853e, ; 250: ko/Microsoft.Maui.Controls.resources => 16
	i32 u0x8044e1bd, ; 251: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i32 u0x80bd55ad, ; 252: Microsoft.Maui => 53
	i32 u0x80f2f56e, ; 253: lib_System.Runtime.Serialization.Formatters.dll.so => 148
	i32 u0x810c11c2, ; 254: ro/Microsoft.Maui.Controls.resources => 23
	i32 u0x816751d8, ; 255: lib_System.Diagnostics.DiagnosticSource.dll.so => 117
	i32 u0x820d22b3, ; 256: Microsoft.Extensions.Options.dll => 48
	i32 u0x82a8237c, ; 257: Microsoft.Extensions.Logging.Abstractions => 47
	i32 u0x82b6c85e, ; 258: System.ObjectModel.dll => 137
	i32 u0x82bb5429, ; 259: lib_System.Linq.Expressions.dll.so => 125
	i32 u0x82e0ede0, ; 260: lib_Microsoft.Extensions.Http.dll.so => 45
	i32 u0x83323b38, ; 261: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 102
	i32 u0x8334206b, ; 262: System.Net.Http => 128
	i32 u0x8628f1a4, ; 263: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i32 u0x86bba59b, ; 264: lib_Microsoft.Maui.Controls.dll.so => 51
	i32 u0x871c9c1b, ; 265: Microsoft.Extensions.Configuration.Abstractions => 40
	i32 u0x875633cc, ; 266: fr/Microsoft.Maui.Controls.resources.dll => 8
	i32 u0x87a1a22b, ; 267: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i32 u0x87e25095, ; 268: Xamarin.AndroidX.RecyclerView.dll => 93
	i32 u0x87e7fdbb, ; 269: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i32 u0x881f94da, ; 270: lib_netstandard.dll.so => 166
	i32 u0x8873eb17, ; 271: th/Microsoft.Maui.Controls.resources => 27
	i32 u0x88d8bfaa, ; 272: System.Net.Sockets => 135
	i32 u0x88ed6f27, ; 273: lib_SQLitePCLRaw.batteries_v2.dll.so => 66
	i32 u0x88ffe49e, ; 274: System.Net.Mail => 129
	i32 u0x896b7878, ; 275: System.Private.CoreLib.dll => 167
	i32 u0x8b804dbf, ; 276: System.Runtime.InteropServices.RuntimeInformation.dll => 144
	i32 u0x8c10cc61, ; 277: OneSignalSDK.DotNet.Android.Core.Binding => 57
	i32 u0x8c20c628, ; 278: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i32 u0x8c20f140, ; 279: lib_System.Console.dll.so => 115
	i32 u0x8c40e0db, ; 280: System.Net.Primitives => 132
	i32 u0x8c93dffb, ; 281: lib_SQLite-net.dll.so => 65
	i32 u0x8d24e767, ; 282: System.Xml.ReaderWriter.dll => 162
	i32 u0x8d3fac99, ; 283: tr/Microsoft.Maui.Controls.resources => 28
	i32 u0x8d52b2e2, ; 284: Microsoft.Extensions.Configuration => 39
	i32 u0x8dcb0101, ; 285: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 90
	i32 u0x8e02310f, ; 286: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i32 u0x8f24faee, ; 287: System.Web.HttpUtility => 160
	i32 u0x8f8c64e2, ; 288: lib_System.Private.Xml.dll.so => 140
	i32 u0x905caa9d, ; 289: nl/Microsoft.Maui.Controls.resources => 19
	i32 u0x90e50509, ; 290: lib_System.Reflection.Primitives.dll.so => 143
	i32 u0x911615a7, ; 291: lib_Xamarin.AndroidX.Fragment.dll.so => 83
	i32 u0x912896e5, ; 292: System.Console.dll => 115
	i32 u0x928c75ca, ; 293: System.Net.Sockets.dll => 135
	i32 u0x92f11675, ; 294: SQLitePCLRaw.batteries_v2.dll => 66
	i32 u0x93554fdc, ; 295: netstandard.dll => 166
	i32 u0x93918882, ; 296: Java.Interop.dll => 168
	i32 u0x93dba8a1, ; 297: Microsoft.Maui.Controls => 51
	i32 u0x9438d78e, ; 298: lib_System.Text.Json.dll.so => 155
	i32 u0x94a1db18, ; 299: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i32 u0x9593ae7f, ; 300: lib_Xamarin.AndroidX.SavedState.dll.so => 94
	i32 u0x963ac2da, ; 301: sk/Microsoft.Maui.Controls.resources => 25
	i32 u0x969678a1, ; 302: Xamarin.AndroidX.Biometric.dll => 74
	i32 u0x96bea474, ; 303: lib_Microsoft.Maui.Controls.Xaml.dll.so => 52
	i32 u0x974b89a2, ; 304: System.Reflection.Emit.Lightweight.dll => 142
	i32 u0x98ba5a04, ; 305: Microsoft.CSharp => 106
	i32 u0x9930ee42, ; 306: System.Text.Encodings.Web => 154
	i32 u0x9a1756ac, ; 307: System.Text.Encoding.Extensions.dll => 153
	i32 u0x9b24ab96, ; 308: lib_System.Runtime.Serialization.Primitives.dll.so => 149
	i32 u0x9b500441, ; 309: Xamarin.KotlinX.Coroutines.Core.Jvm => 102
	i32 u0x9be82884, ; 310: lib_OneSignalSDK.DotNet.Core.dll.so => 62
	i32 u0x9bfe3a41, ; 311: System.Private.Xml.dll => 140
	i32 u0x9c375496, ; 312: Xamarin.AndroidX.CursorAdapter.dll => 80
	i32 u0x9c96ac4c, ; 313: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 92
	i32 u0x9e78dac1, ; 314: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 87
	i32 u0x9ec4cf01, ; 315: System.Runtime.Loader => 146
	i32 u0x9ecf752a, ; 316: System.Xml.XDocument.dll => 163
	i32 u0x9ee22cc0, ; 317: System.Drawing.Primitives => 119
	i32 u0x9f7ea921, ; 318: lib_System.Runtime.InteropServices.dll.so => 145
	i32 u0x9f8c6f40, ; 319: System.Data.Common.dll => 116
	i32 u0xa0fb56af, ; 320: lib_System.Text.RegularExpressions.dll.so => 156
	i32 u0xa1fd7d9f, ; 321: System.Security.Claims => 151
	i32 u0xa25c90e5, ; 322: lib_Xamarin.AndroidX.Core.dll.so => 79
	i32 u0xa262a30f, ; 323: System.Runtime.Numerics.dll => 147
	i32 u0xa2ce8457, ; 324: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i32 u0xa2e0939b, ; 325: Xamarin.AndroidX.Activity => 71
	i32 u0xa30769e5, ; 326: System.Threading.Channels => 157
	i32 u0xa32eb6f0, ; 327: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 73
	i32 u0xa3ac33c4, ; 328: lib_Plugin.Maui.Biometric.dll.so => 64
	i32 u0xa4672f3b, ; 329: Microsoft.Maui.Controls.Xaml => 52
	i32 u0xa493aa02, ; 330: lib_System.Collections.Concurrent.dll.so => 107
	i32 u0xa4caf7a7, ; 331: Microsoft.Maui.dll => 53
	i32 u0xa4e79dfd, ; 332: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 86
	i32 u0xa5a0a402, ; 333: Xamarin.AndroidX.ViewPager.dll => 96
	i32 u0xa5b67c07, ; 334: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 84
	i32 u0xa5c5753c, ; 335: lib_System.Collections.Immutable.dll.so => 108
	i32 u0xa668c988, ; 336: lib_System.Net.NameResolution.dll.so => 130
	i32 u0xa7008e0b, ; 337: Microsoft.Maui.Graphics => 55
	i32 u0xa7042ae3, ; 338: uk/Microsoft.Maui.Controls.resources => 29
	i32 u0xa741ef0b, ; 339: es/Microsoft.Maui.Controls.resources.dll => 6
	i32 u0xa744f665, ; 340: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 91
	i32 u0xa77776d2, ; 341: OneSignalSDK.DotNet.Android.Notifications.Binding => 60
	i32 u0xa78103bc, ; 342: Xamarin.AndroidX.CoordinatorLayout.dll => 78
	i32 u0xa81b119f, ; 343: lib_System.Security.Cryptography.dll.so => 152
	i32 u0xa8c61dcb, ; 344: nl/Microsoft.Maui.Controls.resources.dll => 19
	i32 u0xa9b829f7, ; 345: Xamarin.GooglePlayServices.Base => 99
	i32 u0xaa107fc4, ; 346: Xamarin.AndroidX.ViewPager => 96
	i32 u0xaa4e51ff, ; 347: el/Microsoft.Maui.Controls.resources => 5
	i32 u0xaa8a4878, ; 348: Microsoft.Maui.Essentials => 54
	i32 u0xaaf54f58, ; 349: lib_ScheduleListUI.dll.so => 105
	i32 u0xaaf9aad7, ; 350: CommunityToolkit.Maui.Core => 36
	i32 u0xabbc23e8, ; 351: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 103
	i32 u0xabdea79a, ; 352: ru/Microsoft.Maui.Controls.resources => 24
	i32 u0xacd02783, ; 353: lib_OneSignalSDK.DotNet.Android.Location.Binding.dll.so => 59
	i32 u0xad6f1e8a, ; 354: System.Private.CoreLib => 167
	i32 u0xaddb6d38, ; 355: Xamarin.AndroidX.ViewPager2.dll => 97
	i32 u0xae037813, ; 356: System.Numerics.Vectors.dll => 136
	i32 u0xaeb2d8a5, ; 357: lib_Microsoft.Extensions.Options.dll.so => 48
	i32 u0xb03e31b4, ; 358: OneSignalSDK.DotNet.Android.Core.Binding.dll => 57
	i32 u0xb0682092, ; 359: System.ComponentModel.dll => 114
	i32 u0xb18af942, ; 360: Xamarin.AndroidX.DrawerLayout => 82
	i32 u0xb1a434a2, ; 361: lib_System.Xml.Linq.dll.so => 161
	i32 u0xb223fa8c, ; 362: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i32 u0xb40c4519, ; 363: Microsoft.Extensions.Diagnostics => 43
	i32 u0xb514b305, ; 364: _Microsoft.Android.Resource.Designer.dll => 34
	i32 u0xb63fa9f0, ; 365: Xamarin.AndroidX.Navigation.Common => 89
	i32 u0xb65adef9, ; 366: Mono.Android.Runtime => 169
	i32 u0xb660be12, ; 367: System.ComponentModel.Primitives => 112
	i32 u0xb6a153b2, ; 368: lib_Xamarin.AndroidX.ViewPager2.dll.so => 97
	i32 u0xb76be845, ; 369: hu/Microsoft.Maui.Controls.resources.dll => 12
	i32 u0xb7ebb216, ; 370: OneSignalSDK.DotNet.Android.InAppMessages.Binding.dll => 58
	i32 u0xb8c22b7f, ; 371: System.Security.Claims.dll => 151
	i32 u0xb8fd311b, ; 372: System.Formats.Asn1 => 121
	i32 u0xbaa520e7, ; 373: lib_System.ObjectModel.dll.so => 137
	i32 u0xbc065e94, ; 374: lib_OneSignalSDK.DotNet.Android.InAppMessages.Binding.dll.so => 58
	i32 u0xbc4c6465, ; 375: System.Reflection.Primitives.dll => 143
	i32 u0xbc98c93d, ; 376: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 77
	i32 u0xbd113355, ; 377: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 89
	i32 u0xbd78b0c8, ; 378: Xamarin.AndroidX.Navigation.Fragment.dll => 90
	i32 u0xbff2e236, ; 379: System.Threading => 159
	i32 u0xc00e375b, ; 380: lib_Newtonsoft.Json.dll.so => 56
	i32 u0xc08d007e, ; 381: Xamarin.GooglePlayServices.Basement.dll => 100
	i32 u0xc235e84d, ; 382: Xamarin.AndroidX.CardView => 76
	i32 u0xc3428433, ; 383: lib_System.Reflection.Emit.ILGeneration.dll.so => 141
	i32 u0xc3e9b3a2, ; 384: SQLite-net.dll => 65
	i32 u0xc591efe9, ; 385: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 40
	i32 u0xc5b097e4, ; 386: System.Net.Requests.dll => 133
	i32 u0xc5b776df, ; 387: Xamarin.AndroidX.CustomView.dll => 81
	i32 u0xc774da4f, ; 388: Xamarin.AndroidX.Navigation.Runtime => 91
	i32 u0xc821fc10, ; 389: lib_System.ComponentModel.dll.so => 114
	i32 u0xc82afec1, ; 390: System.Text.Json => 155
	i32 u0xc849ca45, ; 391: SQLitePCLRaw.core => 67
	i32 u0xc86c06e3, ; 392: Xamarin.AndroidX.Core => 79
	i32 u0xc8a662e9, ; 393: Java.Interop => 168
	i32 u0xc8d10307, ; 394: lib_System.Diagnostics.TraceSource.dll.so => 118
	i32 u0xc92a6809, ; 395: Xamarin.AndroidX.RecyclerView => 93
	i32 u0xca3dc903, ; 396: OneSignalSDK.DotNet.Android.Location.Binding => 59
	i32 u0xcb5af55c, ; 397: lib_System.Reflection.Emit.Lightweight.dll.so => 142
	i32 u0xcc5af6ee, ; 398: Microsoft.Extensions.DependencyInjection.dll => 41
	i32 u0xcc7d82b4, ; 399: netstandard => 166
	i32 u0xce513709, ; 400: lib_Xamarin.AndroidX.Biometric.dll.so => 74
	i32 u0xce70fda2, ; 401: hr/Microsoft.Maui.Controls.resources.dll => 11
	i32 u0xcef19b37, ; 402: System.ComponentModel.TypeConverter.dll => 113
	i32 u0xcf3163e6, ; 403: Mono.Android => 170
	i32 u0xcf663a21, ; 404: ru/Microsoft.Maui.Controls.resources.dll => 24
	i32 u0xcfa20c36, ; 405: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 95
	i32 u0xcfbaacae, ; 406: System.Text.Json.dll => 155
	i32 u0xd0b7ab9c, ; 407: OneSignalSDK.DotNet.Android.Location.Binding.dll => 59
	i32 u0xd128d608, ; 408: System.Xml.Linq => 161
	i32 u0xd328ac54, ; 409: vi/Microsoft.Maui.Controls.resources => 30
	i32 u0xd4045e1b, ; 410: lib_System.dll.so => 165
	i32 u0xd457e5c9, ; 411: lib_Microsoft.CSharp.dll.so => 106
	i32 u0xd622b752, ; 412: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i32 u0xd664cdf2, ; 413: de/Microsoft.Maui.Controls.resources => 4
	i32 u0xd715a361, ; 414: System.Linq.dll => 126
	i32 u0xd7f95f5a, ; 415: da/Microsoft.Maui.Controls.resources => 3
	i32 u0xd804d57a, ; 416: System.Runtime.InteropServices.RuntimeInformation => 144
	i32 u0xd81b62b1, ; 417: OneSignalSDK.DotNet.Android.Notifications.Binding.dll => 60
	i32 u0xd889aee8, ; 418: lib_System.Threading.Channels.dll.so => 157
	i32 u0xd8bba49d, ; 419: lib_Xamarin.AndroidX.RecyclerView.dll.so => 93
	i32 u0xd90e5f5a, ; 420: Xamarin.AndroidX.Lifecycle.LiveData.Core => 85
	i32 u0xd930cda0, ; 421: Xamarin.AndroidX.Navigation.Fragment => 90
	i32 u0xd96cf6f7, ; 422: pt-BR/Microsoft.Maui.Controls.resources => 21
	i32 u0xd9f65f5e, ; 423: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i32 u0xd9fdda56, ; 424: Microsoft.Extensions.Configuration.Abstractions.dll => 40
	i32 u0xda2f27df, ; 425: System.Net.NetworkInformation => 131
	i32 u0xda4773dd, ; 426: he/Microsoft.Maui.Controls.resources => 9
	i32 u0xdae8aa5e, ; 427: Mono.Android.dll => 170
	i32 u0xdb7f7e5d, ; 428: Xamarin.AndroidX.Browser => 75
	i32 u0xdbb50d93, ; 429: ms/Microsoft.Maui.Controls.resources => 17
	i32 u0xdc5370c5, ; 430: lib_System.Web.HttpUtility.dll.so => 160
	i32 u0xdc68940c, ; 431: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i32 u0xde068c70, ; 432: Xamarin.AndroidX.Navigation.Common.dll => 89
	i32 u0xde7354ab, ; 433: System.Net.NameResolution => 130
	i32 u0xde7f624e, ; 434: OneSignalSDK.DotNet.Android.InAppMessages.Binding => 58
	i32 u0xdf6f3870, ; 435: System.Diagnostics.DiagnosticSource => 117
	i32 u0xdfca27bc, ; 436: SQLitePCLRaw.provider.e_sqlite3 => 70
	i32 u0xe0dec2ee, ; 437: lib_CommunityToolkit.Maui.dll.so => 35
	i32 u0xe13414bb, ; 438: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i32 u0xe1a41194, ; 439: lib_System.Xml.XDocument.dll.so => 163
	i32 u0xe1f0a5d8, ; 440: lib_Xamarin.AndroidX.ViewPager.dll.so => 96
	i32 u0xe2098b0b, ; 441: System.Collections.NonGeneric => 109
	i32 u0xe250cda6, ; 442: lib_Microsoft.Extensions.Logging.dll.so => 46
	i32 u0xe2513246, ; 443: lib_System.Runtime.Numerics.dll.so => 147
	i32 u0xe2a3f2e8, ; 444: System.Collections.Specialized.dll => 110
	i32 u0xe34ee011, ; 445: lib_System.IO.Pipelines.dll.so => 124
	i32 u0xe3886bf7, ; 446: CommunityToolkit.Maui.dll => 35
	i32 u0xe3c7860c, ; 447: lib_System.Security.Claims.dll.so => 151
	i32 u0xe3df9d2b, ; 448: System.Security.Cryptography.dll => 152
	i32 u0xe4fab729, ; 449: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 42
	i32 u0xe52378b9, ; 450: System.Net.Mail.dll => 129
	i32 u0xe56ef253, ; 451: System.Runtime.InteropServices.dll => 145
	i32 u0xe625b819, ; 452: lib_Xamarin.AndroidX.CardView.dll.so => 76
	i32 u0xe6e8f547, ; 453: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 44
	i32 u0xe6fa1cf2, ; 454: OneSignalSDK.DotNet.dll => 63
	i32 u0xe70c9739, ; 455: SQLite-net => 65
	i32 u0xe7dc15ff, ; 456: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i32 u0xe839deed, ; 457: System.Collections.Concurrent.dll => 107
	i32 u0xe843daa0, ; 458: Xamarin.AndroidX.Core.dll => 79
	i32 u0xe90fdb70, ; 459: Xamarin.AndroidX.Collection.Jvm => 77
	i32 u0xe99f7d24, ; 460: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i32 u0xea213423, ; 461: System.Xml.ReaderWriter => 162
	i32 u0xea4fb52e, ; 462: Xamarin.AndroidX.Navigation.UI => 92
	i32 u0xeab81858, ; 463: lib_Microsoft.Maui.Essentials.dll.so => 54
	i32 u0xeaf598f6, ; 464: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 47
	i32 u0xeb5560c9, ; 465: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 144
	i32 u0xebb0254b, ; 466: lib_System.Net.NetworkInformation.dll.so => 131
	i32 u0xebc66336, ; 467: Xamarin.AndroidX.AppCompat.dll => 72
	i32 u0xed1090ae, ; 468: lib_System.Net.Primitives.dll.so => 132
	i32 u0xed409aea, ; 469: th/Microsoft.Maui.Controls.resources.dll => 27
	i32 u0xed96d41f, ; 470: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 78
	i32 u0xedadd6e2, ; 471: he/Microsoft.Maui.Controls.resources.dll => 9
	i32 u0xedf6669b, ; 472: lib_System.Drawing.dll.so => 120
	i32 u0xefd01a89, ; 473: System.IO.Pipelines => 124
	i32 u0xeff49a63, ; 474: System.Memory => 127
	i32 u0xeff49c4a, ; 475: lib_System.Text.Encoding.Extensions.dll.so => 153
	i32 u0xf0d49749, ; 476: Plugin.Maui.Biometric => 64
	i32 u0xf0eb68b5, ; 477: lib_OneSignalSDK.DotNet.Android.dll.so => 61
	i32 u0xf121f953, ; 478: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 85
	i32 u0xf1304331, ; 479: Microsoft.Maui.Controls.Xaml.dll => 52
	i32 u0xf1676aaa, ; 480: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i32 u0xf1ad867b, ; 481: System.Reflection.Emit.ILGeneration => 141
	i32 u0xf27f60d1, ; 482: System.Private.Xml.Linq.dll => 139
	i32 u0xf29c5384, ; 483: id/Microsoft.Maui.Controls.resources => 13
	i32 u0xf2ce3c98, ; 484: System.Threading.dll => 159
	i32 u0xf2dd3fc4, ; 485: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i32 u0xf323e0a6, ; 486: lib_Xamarin.Kotlin.StdLib.dll.so => 101
	i32 u0xf40add04, ; 487: Microsoft.Maui.Essentials.dll => 54
	i32 u0xf45985cf, ; 488: System.Drawing.dll => 120
	i32 u0xf462c30d, ; 489: System.Private.Uri => 138
	i32 u0xf48143e5, ; 490: pt/Microsoft.Maui.Controls.resources.dll => 22
	i32 u0xf5185c24, ; 491: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i32 u0xf53cb11d, ; 492: lib_System.Net.Security.dll.so => 134
	i32 u0xf5861a4f, ; 493: pl/Microsoft.Maui.Controls.resources => 20
	i32 u0xf5e94e90, ; 494: ms/Microsoft.Maui.Controls.resources.dll => 17
	i32 u0xf5f4f1f0, ; 495: Microsoft.Extensions.DependencyInjection => 41
	i32 u0xf5fdf056, ; 496: lib_Microsoft.Extensions.DependencyInjection.dll.so => 41
	i32 u0xf73be021, ; 497: System.Reflection.Emit.ILGeneration.dll => 141
	i32 u0xf7e95c85, ; 498: System.Xml.XmlSerializer => 164
	i32 u0xf86129d4, ; 499: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i32 u0xf93ba7d4, ; 500: System.Runtime.Serialization.Primitives => 149
	i32 u0xf94a8f86, ; 501: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 87
	i32 u0xf9be026d, ; 502: lib_SQLitePCLRaw.core.dll.so => 67
	i32 u0xfa50891f, ; 503: lib_System.Linq.dll.so => 126
	i32 u0xfaf0dda8, ; 504: lib_CommunityToolkit.Mvvm.dll.so => 37
	i32 u0xfb0af295, ; 505: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i32 u0xfb1dad5d, ; 506: System.Diagnostics.DiagnosticSource.dll => 117
	i32 u0xfbc4b67c, ; 507: lib_System.IO.Compression.Brotli.dll.so => 122
	i32 u0xfc5f7d36, ; 508: pt/Microsoft.Maui.Controls.resources => 22
	i32 u0xfea12dee, ; 509: Microsoft.Maui.Controls.dll => 51
	i32 u0xfec99597, ; 510: CommunityToolkit.Mvvm.dll => 37
	i32 u0xfecef6ea, ; 511: System.Runtime.Numerics => 147
	i32 u0xffd4917f ; 512: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 87
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [513 x i32] [
	i32 131, i32 133, i32 130, i32 88, i32 164, i32 42, i32 56, i32 29,
	i32 38, i32 158, i32 63, i32 53, i32 1, i32 55, i32 50, i32 109,
	i32 44, i32 31, i32 129, i32 145, i32 157, i32 64, i32 71, i32 104,
	i32 95, i32 30, i32 98, i32 20, i32 30, i32 31, i32 114, i32 75,
	i32 69, i32 43, i32 106, i32 81, i32 18, i32 142, i32 61, i32 2,
	i32 25, i32 45, i32 71, i32 150, i32 15, i32 68, i32 14, i32 2,
	i32 39, i32 146, i32 104, i32 158, i32 127, i32 34, i32 62, i32 26,
	i32 63, i32 111, i32 83, i32 160, i32 169, i32 149, i32 168, i32 165,
	i32 138, i32 105, i32 137, i32 13, i32 7, i32 49, i32 10, i32 46,
	i32 21, i32 110, i32 35, i32 135, i32 81, i32 4, i32 36, i32 154,
	i32 116, i32 107, i32 21, i32 134, i32 1, i32 161, i32 80, i32 16,
	i32 4, i32 146, i32 66, i32 69, i32 133, i32 123, i32 38, i32 48,
	i32 116, i32 158, i32 138, i32 122, i32 82, i32 0, i32 68, i32 112,
	i32 100, i32 74, i32 28, i32 86, i32 84, i32 56, i32 163, i32 111,
	i32 32, i32 6, i32 94, i32 120, i32 50, i32 42, i32 3, i32 72,
	i32 119, i32 125, i32 44, i32 111, i32 49, i32 113, i32 101, i32 165,
	i32 154, i32 27, i32 113, i32 136, i32 128, i32 91, i32 7, i32 104,
	i32 20, i32 37, i32 18, i32 10, i32 77, i32 55, i32 103, i32 50,
	i32 139, i32 67, i32 82, i32 126, i32 11, i32 1, i32 94, i32 167,
	i32 38, i32 78, i32 148, i32 84, i32 86, i32 121, i32 134, i32 108,
	i32 123, i32 73, i32 49, i32 108, i32 122, i32 10, i32 119, i32 45,
	i32 5, i32 75, i32 156, i32 25, i32 8, i32 61, i32 103, i32 26,
	i32 112, i32 33, i32 43, i32 88, i32 97, i32 36, i32 80, i32 128,
	i32 156, i32 123, i32 162, i32 150, i32 102, i32 98, i32 132, i32 152,
	i32 68, i32 76, i32 23, i32 124, i32 121, i32 33, i32 118, i32 95,
	i32 46, i32 72, i32 169, i32 83, i32 159, i32 8, i32 88, i32 18,
	i32 99, i32 101, i32 98, i32 92, i32 12, i32 153, i32 148, i32 47,
	i32 29, i32 125, i32 143, i32 32, i32 105, i32 100, i32 109, i32 57,
	i32 73, i32 170, i32 70, i32 139, i32 127, i32 15, i32 39, i32 11,
	i32 0, i32 9, i32 14, i32 140, i32 85, i32 34, i32 118, i32 150,
	i32 69, i32 136, i32 70, i32 115, i32 99, i32 60, i32 62, i32 110,
	i32 164, i32 16, i32 16, i32 17, i32 53, i32 148, i32 23, i32 117,
	i32 48, i32 47, i32 137, i32 125, i32 45, i32 102, i32 128, i32 24,
	i32 51, i32 40, i32 8, i32 14, i32 93, i32 19, i32 166, i32 27,
	i32 135, i32 66, i32 129, i32 167, i32 144, i32 57, i32 7, i32 115,
	i32 132, i32 65, i32 162, i32 28, i32 39, i32 90, i32 0, i32 160,
	i32 140, i32 19, i32 143, i32 83, i32 115, i32 135, i32 66, i32 166,
	i32 168, i32 51, i32 155, i32 13, i32 94, i32 25, i32 74, i32 52,
	i32 142, i32 106, i32 154, i32 153, i32 149, i32 102, i32 62, i32 140,
	i32 80, i32 92, i32 87, i32 146, i32 163, i32 119, i32 145, i32 116,
	i32 156, i32 151, i32 79, i32 147, i32 6, i32 71, i32 157, i32 73,
	i32 64, i32 52, i32 107, i32 53, i32 86, i32 96, i32 84, i32 108,
	i32 130, i32 55, i32 29, i32 6, i32 91, i32 60, i32 78, i32 152,
	i32 19, i32 99, i32 96, i32 5, i32 54, i32 105, i32 36, i32 103,
	i32 24, i32 59, i32 167, i32 97, i32 136, i32 48, i32 57, i32 114,
	i32 82, i32 161, i32 2, i32 43, i32 34, i32 89, i32 169, i32 112,
	i32 97, i32 12, i32 58, i32 151, i32 121, i32 137, i32 58, i32 143,
	i32 77, i32 89, i32 90, i32 159, i32 56, i32 100, i32 76, i32 141,
	i32 65, i32 40, i32 133, i32 81, i32 91, i32 114, i32 155, i32 67,
	i32 79, i32 168, i32 118, i32 93, i32 59, i32 142, i32 41, i32 166,
	i32 74, i32 11, i32 113, i32 170, i32 24, i32 95, i32 155, i32 59,
	i32 161, i32 30, i32 165, i32 106, i32 23, i32 4, i32 126, i32 3,
	i32 144, i32 60, i32 157, i32 93, i32 85, i32 90, i32 21, i32 5,
	i32 40, i32 131, i32 9, i32 170, i32 75, i32 17, i32 160, i32 33,
	i32 89, i32 130, i32 58, i32 117, i32 70, i32 35, i32 12, i32 163,
	i32 96, i32 109, i32 46, i32 147, i32 110, i32 124, i32 35, i32 151,
	i32 152, i32 42, i32 129, i32 145, i32 76, i32 44, i32 63, i32 65,
	i32 32, i32 107, i32 79, i32 77, i32 28, i32 162, i32 92, i32 54,
	i32 47, i32 144, i32 131, i32 72, i32 132, i32 27, i32 78, i32 9,
	i32 120, i32 124, i32 127, i32 153, i32 64, i32 61, i32 85, i32 52,
	i32 3, i32 141, i32 139, i32 13, i32 159, i32 15, i32 101, i32 54,
	i32 120, i32 138, i32 22, i32 22, i32 134, i32 20, i32 17, i32 41,
	i32 41, i32 141, i32 164, i32 26, i32 149, i32 87, i32 67, i32 126,
	i32 37, i32 31, i32 117, i32 122, i32 22, i32 51, i32 37, i32 147,
	i32 87
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1dcfb6f8779c33b6f768c996495cb90ecd729329"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
