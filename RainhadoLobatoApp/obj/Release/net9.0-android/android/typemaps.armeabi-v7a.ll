; ModuleID = 'typemaps.armeabi-v7a.ll'
source_filename = "typemaps.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 46, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1260, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [46 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x08, i8 u0x4b, i8 u0x5f, i8 u0xa3, i8 u0x4d, i8 u0xdf, i8 u0x34, i8 u0x4c, i8 u0xaf, i8 u0x46, i8 u0x9b, i8 u0x35, i8 u0x41, i8 u0x99, i8 u0x2d, i8 u0x75 ], ; module_uuid: a35f4b08-df4d-4c34-af46-9b3541992d75
		i32 6, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x09, i8 u0x40, i8 u0x4a, i8 u0x5c, i8 u0x26, i8 u0xd5, i8 u0x46, i8 u0x44, i8 u0x85, i8 u0x76, i8 u0x50, i8 u0x93, i8 u0x9c, i8 u0xd1, i8 u0x5e, i8 u0xd6 ], ; module_uuid: 5c4a4009-d526-4446-8576-50939cd15ed6
		i32 7, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: OneSignalSDK.DotNet.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x0b, i8 u0xf5, i8 u0xe6, i8 u0x1d, i8 u0xef, i8 u0xa5, i8 u0xe1, i8 u0x42, i8 u0xab, i8 u0x18, i8 u0xef, i8 u0xb3, i8 u0x1b, i8 u0xdb, i8 u0x97, i8 u0x1a ], ; module_uuid: 1de6f50b-a5ef-42e1-ab18-efb31bdb971a
		i32 2, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1e, i8 u0x62, i8 u0xb8, i8 u0x52, i8 u0x62, i8 u0xab, i8 u0x59, i8 u0x48, i8 u0xa6, i8 u0x35, i8 u0x0b, i8 u0x26, i8 u0xe8, i8 u0xbd, i8 u0x96, i8 u0x8b ], ; module_uuid: 52b8621e-ab62-4859-a635-0b26e8bd968b
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: CommunityToolkit.Maui.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1e, i8 u0xc1, i8 u0x42, i8 u0xab, i8 u0xab, i8 u0x75, i8 u0x54, i8 u0x40, i8 u0x86, i8 u0xa5, i8 u0x3c, i8 u0xbe, i8 u0xdc, i8 u0x0d, i8 u0x61, i8 u0x96 ], ; module_uuid: ab42c11e-75ab-4054-86a5-3cbedc0d6196
		i32 41, ; uint32_t entry_count
		i32 21, ; uint32_t duplicate_count
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module4_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x24, i8 u0xd6, i8 u0x27, i8 u0x53, i8 u0x6a, i8 u0xa0, i8 u0x81, i8 u0x46, i8 u0x88, i8 u0x49, i8 u0x0a, i8 u0xe5, i8 u0x0b, i8 u0x64, i8 u0x40, i8 u0x3e ], ; module_uuid: 5327d624-a06a-4681-8849-0ae50b64403e
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: OneSignalSDK.DotNet.Android.Location.Binding
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x30, i8 u0x35, i8 u0x4f, i8 u0xcb, i8 u0x8b, i8 u0x1d, i8 u0xd4, i8 u0x49, i8 u0x85, i8 u0xd3, i8 u0x07, i8 u0x3c, i8 u0x4b, i8 u0xcb, i8 u0x07, i8 u0x32 ], ; module_uuid: cb4f3530-1d8b-49d4-85d3-073c4bcb0732
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x3e, i8 u0x55, i8 u0x1f, i8 u0x27, i8 u0x3c, i8 u0x79, i8 u0xd2, i8 u0x4d, i8 u0x9b, i8 u0x5c, i8 u0xcf, i8 u0x67, i8 u0xc8, i8 u0xdc, i8 u0xfe, i8 u0x8d ], ; module_uuid: 271f553e-793c-4dd2-9b5c-cf67c8dcfe8d
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module7_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x3f, i8 u0xc1, i8 u0xb3, i8 u0x7c, i8 u0x82, i8 u0x3d, i8 u0x15, i8 u0x4d, i8 u0xb3, i8 u0x04, i8 u0xe2, i8 u0xf3, i8 u0xb6, i8 u0x3f, i8 u0x85, i8 u0x8d ], ; module_uuid: 7cb3c13f-3d82-4d15-b304-e2f3b63f858d
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x46, i8 u0xb5, i8 u0xa4, i8 u0xc3, i8 u0x19, i8 u0x34, i8 u0x9f, i8 u0x4d, i8 u0x9f, i8 u0xa8, i8 u0x5b, i8 u0xf9, i8 u0x04, i8 u0xbe, i8 u0xdc, i8 u0x54 ], ; module_uuid: c3a4b546-3419-4d9f-9fa8-5bf904bedc54
		i32 55, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x46, i8 u0xdc, i8 u0xb9, i8 u0xbf, i8 u0x3a, i8 u0xeb, i8 u0xf2, i8 u0x49, i8 u0x92, i8 u0xef, i8 u0x3f, i8 u0x59, i8 u0x13, i8 u0x7b, i8 u0x22, i8 u0x74 ], ; module_uuid: bfb9dc46-eb3a-49f2-92ef-3f59137b2274
		i32 69, ; uint32_t entry_count
		i32 35, ; uint32_t duplicate_count
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: OneSignalSDK.DotNet.Android.Core.Binding
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x49, i8 u0x03, i8 u0x67, i8 u0xe7, i8 u0x0b, i8 u0x89, i8 u0xa5, i8 u0x40, i8 u0xbf, i8 u0x08, i8 u0x88, i8 u0xd0, i8 u0xcc, i8 u0xf8, i8 u0xf9, i8 u0x08 ], ; module_uuid: e7670349-890b-40a5-bf08-88d0ccf8f908
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Base
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x4d, i8 u0x55, i8 u0xa3, i8 u0x7c, i8 u0x81, i8 u0x15, i8 u0x7c, i8 u0x47, i8 u0x9b, i8 u0xf5, i8 u0xa5, i8 u0xa1, i8 u0x72, i8 u0xf6, i8 u0x1b, i8 u0x5a ], ; module_uuid: 7ca3554d-1581-477c-9bf5-a5a172f61b5a
		i32 12, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module12_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.Browser
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x4d, i8 u0xbf, i8 u0x0e, i8 u0xb7, i8 u0x69, i8 u0xb8, i8 u0x64, i8 u0x46, i8 u0xb6, i8 u0xc3, i8 u0x54, i8 u0x65, i8 u0x40, i8 u0xb9, i8 u0x74, i8 u0x3e ], ; module_uuid: b70ebf4d-b869-4664-b6c3-546540b9743e
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module13_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x55, i8 u0xdf, i8 u0x61, i8 u0x26, i8 u0x7c, i8 u0x26, i8 u0x6c, i8 u0x41, i8 u0xbb, i8 u0x30, i8 u0xcc, i8 u0x8d, i8 u0x2e, i8 u0xbd, i8 u0xd3, i8 u0x21 ], ; module_uuid: 2661df55-267c-416c-bb30-cc8d2ebdd321
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x5f, i8 u0xd3, i8 u0x75, i8 u0xcc, i8 u0x86, i8 u0xe3, i8 u0x4d, i8 u0x46, i8 u0x9c, i8 u0x68, i8 u0xab, i8 u0xc3, i8 u0x51, i8 u0x6b, i8 u0xd4, i8 u0x2d ], ; module_uuid: cc75d35f-e386-464d-9c68-abc3516bd42d
		i32 10, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module15_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.KotlinX.Serialization.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x61, i8 u0x14, i8 u0xd4, i8 u0x52, i8 u0x58, i8 u0x89, i8 u0x8c, i8 u0x4b, i8 u0x83, i8 u0x4b, i8 u0xe8, i8 u0x5b, i8 u0x2a, i8 u0x0d, i8 u0xa8, i8 u0x40 ], ; module_uuid: 52d41461-8958-4b8c-834b-e85b2a0da840
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x64, i8 u0x08, i8 u0xcb, i8 u0x0a, i8 u0xde, i8 u0xf9, i8 u0x79, i8 u0x4d, i8 u0x9b, i8 u0x79, i8 u0x9b, i8 u0x12, i8 u0x4b, i8 u0xe9, i8 u0x72, i8 u0xcc ], ; module_uuid: 0acb0864-f9de-4d79-9b79-9b124be972cc
		i32 7, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.AndroidX.Biometric
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x67, i8 u0x68, i8 u0xec, i8 u0x93, i8 u0x54, i8 u0xec, i8 u0x0e, i8 u0x41, i8 u0xb1, i8 u0x79, i8 u0xe7, i8 u0xeb, i8 u0x64, i8 u0x55, i8 u0x5f, i8 u0x53 ], ; module_uuid: 93ec6867-ec54-410e-b179-e7eb64555f53
		i32 17, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x6b, i8 u0xb9, i8 u0xb5, i8 u0x82, i8 u0xb6, i8 u0x31, i8 u0x64, i8 u0x49, i8 u0x99, i8 u0xde, i8 u0x06, i8 u0x2b, i8 u0xba, i8 u0xd2, i8 u0xe1, i8 u0xd3 ], ; module_uuid: 82b5b96b-31b6-4964-99de-062bbad2e1d3
		i32 3, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module19_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x7d, i8 u0xf1, i8 u0xbf, i8 u0xd9, i8 u0xd6, i8 u0xf8, i8 u0x49, i8 u0x44, i8 u0xa9, i8 u0x9f, i8 u0x93, i8 u0xc3, i8 u0xcb, i8 u0xb6, i8 u0x3b, i8 u0x63 ], ; module_uuid: d9bff17d-f8d6-4449-a99f-93c3cbb63b63
		i32 9, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x80, i8 u0x8d, i8 u0x7c, i8 u0xc7, i8 u0x7a, i8 u0x6c, i8 u0x3a, i8 u0x42, i8 u0x99, i8 u0xbe, i8 u0x90, i8 u0x34, i8 u0xa6, i8 u0x64, i8 u0x12, i8 u0x25 ], ; module_uuid: c77c8d80-6c7a-423a-99be-9034a6641225
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Plugin.Maui.Biometric
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8a, i8 u0x91, i8 u0x9a, i8 u0x19, i8 u0x8a, i8 u0x24, i8 u0x15, i8 u0x4f, i8 u0xaf, i8 u0x48, i8 u0xb9, i8 u0x2f, i8 u0x70, i8 u0xd5, i8 u0x48, i8 u0x84 ], ; module_uuid: 199a918a-248a-4f15-af48-b92f70d54884
		i32 13, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8b, i8 u0x1b, i8 u0x26, i8 u0x87, i8 u0x55, i8 u0x1b, i8 u0xd9, i8 u0x43, i8 u0x8a, i8 u0x28, i8 u0x63, i8 u0x14, i8 u0x98, i8 u0x17, i8 u0x89, i8 u0x53 ], ; module_uuid: 87261b8b-1b55-43d9-8a28-631498178953
		i32 5, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module23_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8c, i8 u0x10, i8 u0x3f, i8 u0xf4, i8 u0x83, i8 u0x93, i8 u0x6a, i8 u0x45, i8 u0x96, i8 u0xd0, i8 u0xc0, i8 u0x04, i8 u0x89, i8 u0x12, i8 u0x92, i8 u0x4a ], ; module_uuid: f43f108c-9383-456a-96d0-c0048912924a
		i32 5, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8e, i8 u0xd8, i8 u0x83, i8 u0xef, i8 u0xfd, i8 u0x76, i8 u0x82, i8 u0x43, i8 u0xae, i8 u0x58, i8 u0x17, i8 u0x6b, i8 u0x78, i8 u0x35, i8 u0xd0, i8 u0x43 ], ; module_uuid: ef83d88e-76fd-4382-ae58-176b7835d043
		i32 69, ; uint32_t entry_count
		i32 22, ; uint32_t duplicate_count
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x91, i8 u0x74, i8 u0x9a, i8 u0x8b, i8 u0x0d, i8 u0xc7, i8 u0xfa, i8 u0x43, i8 u0x85, i8 u0x3a, i8 u0x65, i8 u0x50, i8 u0x3a, i8 u0x77, i8 u0x49, i8 u0xdb ], ; module_uuid: 8b9a7491-c70d-43fa-853a-65503a7749db
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: OneSignalSDK.DotNet.Android.InAppMessages.Binding
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x93, i8 u0x55, i8 u0xfa, i8 u0xc3, i8 u0xc2, i8 u0xbd, i8 u0x21, i8 u0x4a, i8 u0xbe, i8 u0xae, i8 u0x8a, i8 u0x96, i8 u0xe1, i8 u0xe1, i8 u0xb0, i8 u0x3c ], ; module_uuid: c3fa5593-bdc2-4a21-beae-8a96e1e1b03c
		i32 3, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x99, i8 u0x21, i8 u0xaa, i8 u0xc6, i8 u0xa7, i8 u0xe8, i8 u0x5d, i8 u0x4c, i8 u0x9a, i8 u0x49, i8 u0x58, i8 u0x3d, i8 u0xe7, i8 u0xd3, i8 u0x59, i8 u0x4a ], ; module_uuid: c6aa2199-e8a7-4c5d-9a49-583de7d3594a
		i32 9, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xa5, i8 u0xfc, i8 u0x66, i8 u0x3d, i8 u0x89, i8 u0x16, i8 u0x10, i8 u0x48, i8 u0x9b, i8 u0x33, i8 u0xa6, i8 u0x9d, i8 u0xc8, i8 u0x46, i8 u0x0c, i8 u0xc3 ], ; module_uuid: 3d66fca5-1689-4810-9b33-a69dc8460cc3
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xb6, i8 u0x65, i8 u0x71, i8 u0xb8, i8 u0x58, i8 u0x05, i8 u0x2d, i8 u0x40, i8 u0xaa, i8 u0xe1, i8 u0x81, i8 u0x22, i8 u0xed, i8 u0x74, i8 u0x6b, i8 u0x2b ], ; module_uuid: b87165b6-0558-402d-aae1-8122ed746b2b
		i32 40, ; uint32_t entry_count
		i32 7, ; uint32_t duplicate_count
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: OneSignalSDK.DotNet.Android.Notifications.Binding
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc2, i8 u0xed, i8 u0xae, i8 u0x45, i8 u0xcc, i8 u0x04, i8 u0x7f, i8 u0x4d, i8 u0x9a, i8 u0x4b, i8 u0xd9, i8 u0xde, i8 u0x2e, i8 u0xa3, i8 u0x8e, i8 u0x5f ], ; module_uuid: 45aeedc2-04cc-4d7f-9a4b-d9de2ea38e5f
		i32 5, ; uint32_t entry_count
		i32 3, ; uint32_t duplicate_count
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc6, i8 u0xaa, i8 u0x8c, i8 u0xdf, i8 u0xfd, i8 u0x14, i8 u0x17, i8 u0x42, i8 u0x9d, i8 u0x85, i8 u0x07, i8 u0x0f, i8 u0x1c, i8 u0xe0, i8 u0x39, i8 u0xd9 ], ; module_uuid: df8caac6-14fd-4217-9d85-070f1ce039d9
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: ScheduleListUI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xce, i8 u0xd2, i8 u0x6b, i8 u0x73, i8 u0x24, i8 u0xca, i8 u0x4b, i8 u0x4a, i8 u0x8a, i8 u0xce, i8 u0x3f, i8 u0x6d, i8 u0x33, i8 u0xdd, i8 u0x92, i8 u0x74 ], ; module_uuid: 736bd2ce-ca24-4a4b-8ace-3f6d33dd9274
		i32 2, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.GooglePlayServices.Basement
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdb, i8 u0xf5, i8 u0x9e, i8 u0x1b, i8 u0xaf, i8 u0x8b, i8 u0x53, i8 u0x41, i8 u0xac, i8 u0xbf, i8 u0xc4, i8 u0x2b, i8 u0xba, i8 u0x0b, i8 u0x6f, i8 u0x2e ], ; module_uuid: 1b9ef5db-8baf-4153-acbf-c42bba0b6f2e
		i32 7, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdc, i8 u0xeb, i8 u0x0f, i8 u0x81, i8 u0x45, i8 u0x2b, i8 u0x49, i8 u0x4a, i8 u0x92, i8 u0x38, i8 u0xb0, i8 u0x51, i8 u0xdd, i8 u0x5e, i8 u0x78, i8 u0x16 ], ; module_uuid: 810febdc-2b45-4a49-9238-b051dd5e7816
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdf, i8 u0xd2, i8 u0x80, i8 u0xa1, i8 u0x33, i8 u0x04, i8 u0x11, i8 u0x4e, i8 u0xa9, i8 u0xef, i8 u0x75, i8 u0x0c, i8 u0x69, i8 u0x9a, i8 u0xea, i8 u0xc2 ], ; module_uuid: a180d2df-0433-4e11-a9ef-750c699aeac2
		i32 529, ; uint32_t entry_count
		i32 204, ; uint32_t duplicate_count
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module36_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 36
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe0, i8 u0x64, i8 u0x03, i8 u0x6b, i8 u0x82, i8 u0xf1, i8 u0xbf, i8 u0x4f, i8 u0xba, i8 u0x57, i8 u0xd7, i8 u0xea, i8 u0x07, i8 u0x0f, i8 u0x0a, i8 u0x81 ], ; module_uuid: 6b0364e0-f182-4fbf-ba57-d7ea070f0a81
		i32 7, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module37_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module37_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.37_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 37
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe6, i8 u0xe5, i8 u0xd9, i8 u0xde, i8 u0x05, i8 u0x97, i8 u0x43, i8 u0x4e, i8 u0x9b, i8 u0x1b, i8 u0x9c, i8 u0x1d, i8 u0x74, i8 u0xb7, i8 u0x45, i8 u0x31 ], ; module_uuid: ded9e5e6-9705-4e43-9b1b-9c1d74b74531
		i32 107, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module38_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.38_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 38
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe9, i8 u0x12, i8 u0xfe, i8 u0xeb, i8 u0xdc, i8 u0xb1, i8 u0x2b, i8 u0x47, i8 u0xa9, i8 u0xd9, i8 u0xd4, i8 u0xba, i8 u0xb0, i8 u0x21, i8 u0x9f, i8 u0x39 ], ; module_uuid: ebfe12e9-b1dc-472b-a9d9-d4bab0219f39
		i32 76, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module39_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module39_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.39_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 39
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xea, i8 u0x60, i8 u0x34, i8 u0xcc, i8 u0x4b, i8 u0x63, i8 u0xa6, i8 u0x48, i8 u0x89, i8 u0x4e, i8 u0x14, i8 u0x8b, i8 u0xd8, i8 u0x83, i8 u0x23, i8 u0x1e ], ; module_uuid: cc3460ea-634b-48a6-894e-148bd883231e
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module40_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module40_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.40_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 40
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xef, i8 u0x5c, i8 u0xa0, i8 u0xfa, i8 u0xcf, i8 u0xcc, i8 u0x61, i8 u0x4e, i8 u0xae, i8 u0xa0, i8 u0xd6, i8 u0x71, i8 u0xec, i8 u0x15, i8 u0xeb, i8 u0xbd ], ; module_uuid: faa05cef-cccf-4e61-aea0-d671ec15ebbd
		i32 20, ; uint32_t entry_count
		i32 10, ; uint32_t duplicate_count
		ptr @module41_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module41_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.41_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 41
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xef, i8 u0xd9, i8 u0x5d, i8 u0xcb, i8 u0xd7, i8 u0x29, i8 u0x42, i8 u0x4f, i8 u0x88, i8 u0xe4, i8 u0x5c, i8 u0xed, i8 u0xf2, i8 u0xea, i8 u0xf3, i8 u0xa2 ], ; module_uuid: cb5dd9ef-29d7-4f42-88e4-5cedf2eaf3a2
		i32 4, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module42_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module42_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.42_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 42
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf3, i8 u0x5e, i8 u0xad, i8 u0xed, i8 u0x00, i8 u0x93, i8 u0xe2, i8 u0x43, i8 u0x9f, i8 u0x2b, i8 u0x54, i8 u0x55, i8 u0x72, i8 u0x9e, i8 u0xd5, i8 u0x4b ], ; module_uuid: edad5ef3-9300-43e2-9f2b-5455729ed54b
		i32 25, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module43_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module43_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.43_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 43
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf3, i8 u0xb1, i8 u0x28, i8 u0xc8, i8 u0x89, i8 u0xd4, i8 u0x12, i8 u0x40, i8 u0x9a, i8 u0x94, i8 u0x05, i8 u0x3f, i8 u0x5b, i8 u0x9c, i8 u0xa9, i8 u0x2b ], ; module_uuid: c828b1f3-d489-4012-9a94-053f5b9ca92b
		i32 67, ; uint32_t entry_count
		i32 25, ; uint32_t duplicate_count
		ptr @module44_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module44_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.44_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 44
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf6, i8 u0xd9, i8 u0x8e, i8 u0x28, i8 u0x07, i8 u0x86, i8 u0xbd, i8 u0x4f, i8 u0x85, i8 u0xef, i8 u0x2a, i8 u0x40, i8 u0xaf, i8 u0x49, i8 u0x14, i8 u0x9a ], ; module_uuid: 288ed9f6-8607-4fbd-85ef-2a40af49149a
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module45_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.45_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 45
], align 4

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1260 x i32] [
	i32 u0x002f18ac, ; 0 => com/onesignal/inAppMessages/IInAppMessageLifecycleListener
	i32 u0x00478dcb, ; 1 => android/animation/Animator$AnimatorListener
	i32 u0x004cab3f, ; 2 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i32 u0x00bc506a, ; 3 => java/lang/Object
	i32 u0x00bedaaf, ; 4 => java/lang/AutoCloseable
	i32 u0x00c42a04, ; 5 => android/text/style/LineHeightSpan
	i32 u0x00e478f9, ; 6 => androidx/recyclerview/widget/LinearLayoutManager
	i32 u0x00fb0a3a, ; 7 => kotlin/reflect/KParameter
	i32 u0x010e2046, ; 8 => androidx/fragment/app/Fragment
	i32 u0x01c47bce, ; 9 => android/widget/ListAdapter
	i32 u0x01e97a1e, ; 10 => java/security/cert/Certificate
	i32 u0x02088ffa, ; 11 => android/content/pm/PackageItemInfo
	i32 u0x02142dda, ; 12 => android/webkit/WebResourceResponse
	i32 u0x023d7f57, ; 13 => kotlin/reflect/KTypeProjection$Companion
	i32 u0x026bf8c9, ; 14 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i32 u0x02d3cbcb, ; 15 => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i32 u0x03e7672c, ; 16 => crc64fddc838597f4fd38/AndroidConsumer_1
	i32 u0x04197fb0, ; 17 => crc6452ffdc5b34af3a0f/ScopedFragment
	i32 u0x042a7d13, ; 18 => androidx/core/view/WindowInsetsCompat
	i32 u0x046d7780, ; 19 => android/view/ViewGroup
	i32 u0x04f92ecb, ; 20 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i32 u0x0545fbb5, ; 21 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i32 u0x05672010, ; 22 => java/io/FileNotFoundException
	i32 u0x0607f599, ; 23 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i32 u0x0618dae1, ; 24 => androidx/appcompat/widget/DecorToolbar
	i32 u0x0648d5c4, ; 25 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/SamsungHomeBadger
	i32 u0x066694a3, ; 26 => androidx/navigation/NavigatorProvider
	i32 u0x068a5e08, ; 27 => android/view/autofill/AutofillId
	i32 u0x06f9f7e2, ; 28 => android/graphics/BlurMaskFilter
	i32 u0x070ad8fb, ; 29 => com/onesignal/IOneSignal
	i32 u0x0717724f, ; 30 => android/util/DisplayMetrics
	i32 u0x0720f4c1, ; 31 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i32 u0x079ef0ee, ; 32 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i32 u0x07b07a2a, ; 33 => android/graphics/PorterDuffXfermode
	i32 u0x07d492c1, ; 34 => android/webkit/RenderProcessGoneDetail
	i32 u0x07d910b4, ; 35 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i32 u0x07eec85c, ; 36 => androidx/activity/OnBackPressedCallback
	i32 u0x0833f622, ; 37 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i32 u0x083c5433, ; 38 => javax/net/ssl/SSLSessionContext
	i32 u0x084d3fe5, ; 39 => android/view/KeyEvent
	i32 u0x0895b1f6, ; 40 => android/text/style/SubscriptSpan
	i32 u0x08b214f7, ; 41 => java/util/List
	i32 u0x08da0411, ; 42 => android/text/GetChars
	i32 u0x08eb4f47, ; 43 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i32 u0x08f9beb5, ; 44 => androidx/activity/contextaware/OnContextAvailableListener
	i32 u0x095e0c49, ; 45 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i32 u0x096ec55d, ; 46 => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i32 u0x0981856f, ; 47 => androidx/activity/result/contract/ActivityResultContract
	i32 u0x09b71dad, ; 48 => crc645d80431ce5f73f11/StartSnapHelper
	i32 u0x09e8221d, ; 49 => java/text/DecimalFormat
	i32 u0x09e90572, ; 50 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i32 u0x09f32486, ; 51 => crc6452ffdc5b34af3a0f/ContainerView
	i32 u0x0a4e3671, ; 52 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/ApexHomeBadger
	i32 u0x0a8831f3, ; 53 => java/lang/IllegalArgumentException
	i32 u0x0aa158cb, ; 54 => android/window/OnBackInvokedCallback
	i32 u0x0aeaaae8, ; 55 => android/view/OrientationEventListener
	i32 u0x0b7ed74c, ; 56 => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i32 u0x0b81b467, ; 57 => kotlinx/serialization/encoding/Encoder
	i32 u0x0b9203de, ; 58 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i32 u0x0bb64482, ; 59 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener
	i32 u0x0cfc47eb, ; 60 => com/onesignal/notifications/receivers/NotificationDismissReceiver
	i32 u0x0d3656a1, ; 61 => com/google/android/gms/common/api/Scope
	i32 u0x0d5716c4, ; 62 => com/microsoft/maui/PlatformInterop
	i32 u0x0d7ee84f, ; 63 => androidx/navigation/NavDeepLink
	i32 u0x0db97f4c, ; 64 => crc64e1fb321c08285b90/ListViewRenderer
	i32 u0x0df96362, ; 65 => androidx/biometric/BiometricPrompt
	i32 u0x0dfa53b7, ; 66 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i32 u0x0e019f53, ; 67 => androidx/lifecycle/MutableLiveData
	i32 u0x0e784f5e, ; 68 => crc64739e6ff015bad190/MainApplication
	i32 u0x0ee7af87, ; 69 => androidx/navigation/NavHostController
	i32 u0x0f00221f, ; 70 => android/widget/DatePicker
	i32 u0x0f1f3e6c, ; 71 => android/graphics/RadialGradient
	i32 u0x0f52f1a6, ; 72 => java/lang/ReflectiveOperationException
	i32 u0x0f56401e, ; 73 => androidx/navigation/Navigator
	i32 u0x0f7f0f16, ; 74 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadgeException
	i32 u0x0fa6ff5c, ; 75 => android/provider/MediaStore
	i32 u0x0fab0d1d, ; 76 => android/view/WindowInsets
	i32 u0x100ba9c7, ; 77 => javax/security/cert/X509Certificate
	i32 u0x103d4ae1, ; 78 => android/window/TrustedPresentationThresholds
	i32 u0x103d95e0, ; 79 => crc64e1fb321c08285b90/ViewRenderer_2
	i32 u0x1061c392, ; 80 => com/onesignal/notifications/INotificationWillDisplayEvent
	i32 u0x10714b0d, ; 81 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i32 u0x1079b5f8, ; 82 => java/security/spec/EncodedKeySpec
	i32 u0x10910a74, ; 83 => android/view/ViewGroup$OnHierarchyChangeListener
	i32 u0x1093a286, ; 84 => crc64e1fb321c08285b90/EntryCellView
	i32 u0x10abc779, ; 85 => android/content/SharedPreferences$Editor
	i32 u0x10c1a907, ; 86 => java/util/function/Function
	i32 u0x10d4429a, ; 87 => com/onesignal/notifications/receivers/FCMBroadcastReceiver$Companion
	i32 u0x111682ad, ; 88 => crc645d80431ce5f73f11/PositionalSmoothScroller
	i32 u0x1175c4c3, ; 89 => androidx/loader/content/Loader$OnLoadCompleteListener
	i32 u0x1180e1f5, ; 90 => crc6452ffdc5b34af3a0f/MauiShapeView
	i32 u0x11a20c22, ; 91 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i32 u0x11c94630, ; 92 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i32 u0x11d7c927, ; 93 => androidx/savedstate/SavedStateRegistry
	i32 u0x1232d570, ; 94 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i32 u0x124d2e7b, ; 95 => android/view/MenuItem$OnActionExpandListener
	i32 u0x12d4d672, ; 96 => androidx/core/view/WindowCompat
	i32 u0x12e1e050, ; 97 => com/onesignal/common/AndroidUtils$SchemaType
	i32 u0x12e718cb, ; 98 => android/animation/Animator
	i32 u0x13735600, ; 99 => com/onesignal/user/subscriptions/IEmailSubscription
	i32 u0x1431beb7, ; 100 => com/google/android/material/appbar/CollapsingToolbarLayout
	i32 u0x14799e8f, ; 101 => android/widget/AbsListView$OnScrollListener
	i32 u0x155ae8e9, ; 102 => android/text/style/CharacterStyle
	i32 u0x157cf77b, ; 103 => androidx/appcompat/widget/AppCompatRadioButton
	i32 u0x15ce0a3b, ; 104 => crc64159f3caeb1269279/MauiSemanticOrderView
	i32 u0x15d8dfc9, ; 105 => android/view/ViewGroup$LayoutParams
	i32 u0x16159e7b, ; 106 => java/security/SignatureSpi
	i32 u0x1637fef4, ; 107 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i32 u0x1749241e, ; 108 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i32 u0x17725ef2, ; 109 => mono/java/lang/RunnableImplementor
	i32 u0x17a32db8, ; 110 => androidx/lifecycle/LifecycleOwner
	i32 u0x17a8df5c, ; 111 => com/onesignal/notifications/IPermissionObserver
	i32 u0x17b15b04, ; 112 => com/onesignal/common/DeviceUtils
	i32 u0x17b23958, ; 113 => crc6452ffdc5b34af3a0f/MauiHybridWebView
	i32 u0x17c2261f, ; 114 => android/content/pm/ResolveInfo
	i32 u0x17cdcfdb, ; 115 => android/animation/TimeInterpolator
	i32 u0x186d68f0, ; 116 => androidx/browser/customtabs/CustomTabsCallback
	i32 u0x189a6365, ; 117 => java/lang/Long
	i32 u0x18d6d687, ; 118 => android/util/StateSet
	i32 u0x18e22b17, ; 119 => kotlin/sequences/Sequence
	i32 u0x18feeb05, ; 120 => java/util/Iterator
	i32 u0x19100f08, ; 121 => java/net/ConnectException
	i32 u0x193579d8, ; 122 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i32 u0x194bb4e9, ; 123 => java/lang/ClassLoader
	i32 u0x195ae333, ; 124 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i32 u0x198045ff, ; 125 => androidx/fragment/app/FragmentResultListener
	i32 u0x19983bd9, ; 126 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/AdwHomeBadger
	i32 u0x19aa23e2, ; 127 => com/onesignal/notifications/IActionButton
	i32 u0x19ecef57, ; 128 => android/runtime/XmlReaderPullParser
	i32 u0x1a0b1639, ; 129 => android/content/DialogInterface$OnShowListener
	i32 u0x1a163acf, ; 130 => android/app/UiModeManager
	i32 u0x1a53a322, ; 131 => androidx/fragment/app/FragmentFactory
	i32 u0x1a549103, ; 132 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i32 u0x1a6b349b, ; 133 => java/lang/LinkageError
	i32 u0x1a8f0c05, ; 134 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i32 u0x1a93ad3b, ; 135 => crc64fddc838597f4fd38/AndroidUserManager_InternalUserChangedHandler
	i32 u0x1ad1b5c7, ; 136 => androidx/recyclerview/widget/OrientationHelper
	i32 u0x1b35e6fb, ; 137 => java/lang/ref/WeakReference
	i32 u0x1b4e378e, ; 138 => crc6452ffdc5b34af3a0f/MauiPicker
	i32 u0x1b9e9991, ; 139 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i32 u0x1baaf41a, ; 140 => crc6452ffdc5b34af3a0f/MauiStepper
	i32 u0x1cdb4833, ; 141 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i32 u0x1d3e444f, ; 142 => java/util/concurrent/TimeUnit
	i32 u0x1d402962, ; 143 => crc645d80431ce5f73f11/NongreedySnapHelper
	i32 u0x1d993a8a, ; 144 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i32 u0x1dcf4e4a, ; 145 => android/provider/DocumentsContract
	i32 u0x1de7d866, ; 146 => android/view/ViewGroup$MarginLayoutParams
	i32 u0x1e91847a, ; 147 => crc64e1fb321c08285b90/FrameRenderer
	i32 u0x1ed12fb6, ; 148 => android/view/ViewParent
	i32 u0x1ed7c45a, ; 149 => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i32 u0x1edafe2e, ; 150 => android/os/Parcel
	i32 u0x1f153e95, ; 151 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i32 u0x1f35371e, ; 152 => android/app/SearchableInfo
	i32 u0x1fa9731c, ; 153 => mono/android/runtime/OutputStreamAdapter
	i32 u0x2012da5e, ; 154 => crc64ba438d8f48cf7e75/IntermediateActivity
	i32 u0x2103ec5f, ; 155 => android/graphics/drawable/ColorDrawable
	i32 u0x2109685b, ; 156 => java/util/function/UnaryOperator
	i32 u0x210f5079, ; 157 => android/opengl/Matrix
	i32 u0x21120696, ; 158 => com/onesignal/common/JSONObjectExtensionsKt
	i32 u0x2185a282, ; 159 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/XiaomiHomeBadger
	i32 u0x21e20b74, ; 160 => android/content/DialogInterface$OnDismissListener
	i32 u0x220dab84, ; 161 => android/widget/SectionIndexer
	i32 u0x2222aa0b, ; 162 => crc64e1fb321c08285b90/GroupedListViewAdapter
	i32 u0x2247788b, ; 163 => kotlin/reflect/KClassifier
	i32 u0x22a2d798, ; 164 => java/nio/channels/FileChannel
	i32 u0x22b53691, ; 165 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i32 u0x22d234ef, ; 166 => android/widget/Filter
	i32 u0x22d2aa9f, ; 167 => java/lang/IllegalStateException
	i32 u0x22d50cad, ; 168 => com/google/android/material/shape/MaterialShapeDrawable
	i32 u0x22e5821a, ; 169 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i32 u0x22ffb172, ; 170 => androidx/activity/ComponentActivity
	i32 u0x233568be, ; 171 => android/view/ViewTreeObserver
	i32 u0x23380852, ; 172 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i32 u0x23464fac, ; 173 => android/os/Bundle
	i32 u0x2355e8b6, ; 174 => androidx/browser/customtabs/CustomTabsClient
	i32 u0x2368da71, ; 175 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog
	i32 u0x236b09ae, ; 176 => com/onesignal/notifications/INotificationClickResult
	i32 u0x23952c7c, ; 177 => crc64338477404e88479c/ColorChangeRevealDrawable
	i32 u0x23a7d398, ; 178 => android/app/Notification
	i32 u0x23e6e7ee, ; 179 => java/security/spec/PKCS8EncodedKeySpec
	i32 u0x2417fc41, ; 180 => crc64159f3caeb1269279/MauiPopup
	i32 u0x242020ac, ; 181 => java/io/Serializable
	i32 u0x2433ab5e, ; 182 => android/view/animation/LinearInterpolator
	i32 u0x245fc51f, ; 183 => androidx/core/view/accessibility/AccessibilityViewCommand
	i32 u0x24c03bd9, ; 184 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i32 u0x24d523fa, ; 185 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i32 u0x24e61bfb, ; 186 => java/net/URL
	i32 u0x250e8d70, ; 187 => crc6452ffdc5b34af3a0f/MauiSearchView
	i32 u0x251064b7, ; 188 => crc64338477404e88479c/GenericMenuClickListener
	i32 u0x2523f230, ; 189 => androidx/biometric/BiometricPrompt$PromptInfo
	i32 u0x25380d4a, ; 190 => android/view/View$DragShadowBuilder
	i32 u0x254d9be0, ; 191 => androidx/appcompat/app/AppCompatActivity
	i32 u0x2592f163, ; 192 => android/text/method/KeyListener
	i32 u0x25acea43, ; 193 => android/app/TimePickerDialog
	i32 u0x25f292d5, ; 194 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i32 u0x260ef71f, ; 195 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i32 u0x26120c9e, ; 196 => android/view/GestureDetector$OnGestureListener
	i32 u0x2662c089, ; 197 => androidx/fragment/app/FragmentContainer
	i32 u0x267564e8, ; 198 => androidx/loader/content/Loader
	i32 u0x2711b991, ; 199 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i32 u0x27174791, ; 200 => androidx/fragment/app/FragmentTransaction
	i32 u0x2733a797, ; 201 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i32 u0x281006aa, ; 202 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/SonyHomeBadger
	i32 u0x286188c9, ; 203 => java/util/concurrent/atomic/AtomicReference
	i32 u0x291921cf, ; 204 => androidx/appcompat/widget/Toolbar
	i32 u0x2920644b, ; 205 => androidx/core/view/OnApplyWindowInsetsListener
	i32 u0x2948d393, ; 206 => android/app/Service
	i32 u0x294d1f6f, ; 207 => java/util/ArrayList
	i32 u0x29519679, ; 208 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i32 u0x29b72311, ; 209 => android/content/res/AssetFileDescriptor
	i32 u0x29c7fa0b, ; 210 => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i32 u0x29da15f0, ; 211 => android/graphics/drawable/GradientDrawable$Orientation
	i32 u0x2a7040b6, ; 212 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i32 u0x2b245eed, ; 213 => crc645d80431ce5f73f11/CenterSnapHelper
	i32 u0x2beb7623, ; 214 => androidx/appcompat/widget/SearchView
	i32 u0x2c1b9c3b, ; 215 => androidx/core/text/PrecomputedTextCompat
	i32 u0x2c3b3af2, ; 216 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/ZukHomeBadger
	i32 u0x2c59949b, ; 217 => android/graphics/Paint$Join
	i32 u0x2c73cf3e, ; 218 => android/text/style/SuperscriptSpan
	i32 u0x2d74d41b, ; 219 => com/google/android/material/shape/ShapePathModel
	i32 u0x2d894828, ; 220 => com/microsoft/maui/PlatformFontSpan
	i32 u0x2e0eb4ab, ; 221 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i32 u0x2e841628, ; 222 => java/lang/CharSequence
	i32 u0x2e8cec9f, ; 223 => java/io/PrintWriter
	i32 u0x2eac71fc, ; 224 => java/text/DateFormat
	i32 u0x2edea1d2, ; 225 => android/graphics/drawable/PaintDrawable
	i32 u0x2ef62f80, ; 226 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i32 u0x2f030501, ; 227 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i32 u0x2f523ac2, ; 228 => java/lang/Integer
	i32 u0x2f9d3744, ; 229 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i32 u0x3002ef83, ; 230 => android/os/IBinder$DeathRecipient
	i32 u0x3016caa7, ; 231 => java/lang/Thread
	i32 u0x30181324, ; 232 => java/text/DecimalFormatSymbols
	i32 u0x3047a991, ; 233 => android/animation/ValueAnimator$DurationScaleChangeListener
	i32 u0x305ae1f2, ; 234 => android/service/notification/StatusBarNotification
	i32 u0x30747690, ; 235 => com/onesignal/common/DateUtils
	i32 u0x30941ba0, ; 236 => androidx/core/internal/view/SupportMenuItem
	i32 u0x311d1bcb, ; 237 => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i32 u0x314914eb, ; 238 => android/os/PersistableBundle
	i32 u0x31520fea, ; 239 => android/provider/MediaStore$Images
	i32 u0x316f39f7, ; 240 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i32 u0x317411c3, ; 241 => androidx/core/widget/CompoundButtonCompat
	i32 u0x31ee71a1, ; 242 => kotlinx/serialization/DeserializationStrategy
	i32 u0x31fd4970, ; 243 => java/lang/NullPointerException
	i32 u0x3246fe73, ; 244 => kotlin/jvm/internal/DefaultConstructorMarker
	i32 u0x326ce9e6, ; 245 => android/widget/RemoteViews
	i32 u0x32b6fa26, ; 246 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i32 u0x331bc629, ; 247 => android/content/res/AssetManager
	i32 u0x335d7ffc, ; 248 => com/google/android/material/navigation/NavigationBarItemView
	i32 u0x338d1039, ; 249 => android/graphics/Bitmap$Config
	i32 u0x33be7eb5, ; 250 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i32 u0x34408f1d, ; 251 => javax/net/ssl/TrustManager
	i32 u0x34ae90d5, ; 252 => android/provider/MediaStore$Images$Media
	i32 u0x34c36fc5, ; 253 => android/content/ContentResolver
	i32 u0x353fa59a, ; 254 => java/lang/Short
	i32 u0x355cc90a, ; 255 => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i32 u0x359cf2e1, ; 256 => androidx/core/content/FileProvider
	i32 u0x359e1122, ; 257 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i32 u0x3600fc04, ; 258 => android/database/Cursor
	i32 u0x3616c5d8, ; 259 => androidx/navigation/ui/NavigationUI
	i32 u0x36234ada, ; 260 => com/onesignal/notifications/activities/NotificationOpenedActivityHMS
	i32 u0x3627d355, ; 261 => android/security/identity/IdentityCredential
	i32 u0x369b72ab, ; 262 => androidx/core/view/autofill/AutofillIdCompat
	i32 u0x36c8dd60, ; 263 => crc64338477404e88479c/DragAndDropGestureHandler
	i32 u0x36c9b6ff, ; 264 => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i32 u0x371d03a4, ; 265 => com/onesignal/inAppMessages/IInAppMessageDidDisplayEvent
	i32 u0x375a7458, ; 266 => android/graphics/BitmapFactory
	i32 u0x37c197fc, ; 267 => androidx/viewpager/widget/ViewPager$PageTransformer
	i32 u0x37e62d09, ; 268 => androidx/core/view/ViewPropertyAnimatorCompat
	i32 u0x37e734c2, ; 269 => com/google/android/material/navigation/NavigationBarPresenter
	i32 u0x3830cc82, ; 270 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i32 u0x38d7ff82, ; 271 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i32 u0x395f2485, ; 272 => kotlinx/coroutines/flow/StateFlow
	i32 u0x39815ca6, ; 273 => android/text/TextUtils
	i32 u0x39877573, ; 274 => com/microsoft/maui/PlatformPaintType
	i32 u0x39a5d9ef, ; 275 => android/text/TextPaint
	i32 u0x3a096e32, ; 276 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i32 u0x3a48f956, ; 277 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i32 u0x3a7238c4, ; 278 => com/onesignal/notifications/INotificationClickListener
	i32 u0x3a7f1f33, ; 279 => crc64338477404e88479c/GradientStrokeDrawable
	i32 u0x3a8d1ecd, ; 280 => android/widget/HorizontalScrollView
	i32 u0x3a91c58d, ; 281 => androidx/lifecycle/LiveData
	i32 u0x3aafe3b4, ; 282 => android/graphics/PointF
	i32 u0x3ab236a7, ; 283 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i32 u0x3ac61340, ; 284 => androidx/core/content/ContextCompat
	i32 u0x3af26c4d, ; 285 => android/text/method/BaseKeyListener
	i32 u0x3b686dd0, ; 286 => java/io/FileDescriptor
	i32 u0x3b6aaeb6, ; 287 => androidx/lifecycle/Observer
	i32 u0x3bb02f49, ; 288 => com/microsoft/maui/PlatformLogger
	i32 u0x3c238b9c, ; 289 => android/graphics/Color
	i32 u0x3c676983, ; 290 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i32 u0x3c99c850, ; 291 => androidx/recyclerview/widget/ItemTouchHelper
	i32 u0x3cb98831, ; 292 => android/widget/EditText
	i32 u0x3cd9ecb2, ; 293 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i32 u0x3d2de4ff, ; 294 => android/view/WindowMetrics
	i32 u0x3d2f4240, ; 295 => java/net/SocketAddress
	i32 u0x3d6f597a, ; 296 => android/database/DataSetObserver
	i32 u0x3dbfff89, ; 297 => android/content/res/Resources
	i32 u0x3df0d4a6, ; 298 => android/view/SurfaceControlInputReceiver
	i32 u0x3e5fd7cb, ; 299 => microsoft/maui/platform/MauiNavHostFragment
	i32 u0x3e607fe9, ; 300 => android/text/InputFilter$LengthFilter
	i32 u0x3e670d08, ; 301 => androidx/fragment/app/FragmentContainerView
	i32 u0x3e78485e, ; 302 => android/view/GestureDetector$OnDoubleTapListener
	i32 u0x3edd497a, ; 303 => android/graphics/drawable/shapes/OvalShape
	i32 u0x3eebda7e, ; 304 => android/widget/AbsoluteLayout
	i32 u0x3f290730, ; 305 => androidx/viewpager/widget/ViewPager
	i32 u0x3fa97b77, ; 306 => crc640ec207abc449b2ca/CustomFrameLayout
	i32 u0x3fcde9ae, ; 307 => android/database/ContentObserver
	i32 u0x3fce790c, ; 308 => androidx/navigation/NavDeepLinkBuilder
	i32 u0x3ff4ef52, ; 309 => java/lang/annotation/Annotation
	i32 u0x3fff4f83, ; 310 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i32 u0x40186e33, ; 311 => com/google/android/material/tabs/TabLayout$TabView
	i32 u0x403b5100, ; 312 => java/util/function/Consumer
	i32 u0x4082de07, ; 313 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i32 u0x409cbcf3, ; 314 => androidx/core/view/OnReceiveContentListener
	i32 u0x4103dd30, ; 315 => androidx/navigation/NavController
	i32 u0x41066ac4, ; 316 => javax/net/ssl/KeyManagerFactory
	i32 u0x4124ee8a, ; 317 => crc64e1fb321c08285b90/ListViewRenderer_Container
	i32 u0x4189f9ae, ; 318 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/AsusHomeBadger
	i32 u0x419f5f85, ; 319 => android/widget/TextView$OnEditorActionListener
	i32 u0x41aacf93, ; 320 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i32 u0x41aca669, ; 321 => mono/android/view/View_OnFocusChangeListenerImplementor
	i32 u0x41b8a68b, ; 322 => android/text/Layout$Alignment
	i32 u0x41d78140, ; 323 => androidx/browser/customtabs/CustomTabsServiceConnection
	i32 u0x41fe3ee6, ; 324 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i32 u0x41ffdec1, ; 325 => androidx/activity/result/ActivityResultLauncher
	i32 u0x421115f5, ; 326 => android/widget/AdapterView$OnItemLongClickListener
	i32 u0x4213ec86, ; 327 => microsoft/maui/essentials/fileProvider
	i32 u0x42994fe2, ; 328 => androidx/drawerlayout/widget/DrawerLayout
	i32 u0x4339cf56, ; 329 => androidx/navigation/ui/AppBarConfiguration
	i32 u0x439c42c4, ; 330 => androidx/core/view/ViewPropertyAnimatorListener
	i32 u0x43f0e078, ; 331 => android/text/StaticLayout$Builder
	i32 u0x4411b6b5, ; 332 => java/util/Enumeration
	i32 u0x444226c8, ; 333 => crc640ec207abc449b2ca/ShellFragmentContainer
	i32 u0x44549b66, ; 334 => android/widget/RadioButton
	i32 u0x44722348, ; 335 => crc64338477404e88479c/PointerGestureHandler
	i32 u0x4612c890, ; 336 => java/lang/ClassNotFoundException
	i32 u0x463d3a5b, ; 337 => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i32 u0x464a65f1, ; 338 => crc64e1fb321c08285b90/TableViewRenderer
	i32 u0x4663e7a6, ; 339 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i32 u0x46649c28, ; 340 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i32 u0x46869992, ; 341 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i32 u0x46a5d765, ; 342 => android/view/SubMenu
	i32 u0x46e9011c, ; 343 => com/onesignal/common/AndroidUtils$WhenMappings
	i32 u0x472f30ec, ; 344 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i32 u0x473360a9, ; 345 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i32 u0x4739749b, ; 346 => com/onesignal/common/RootToolsInternalMethods
	i32 u0x4746c815, ; 347 => android/net/Network
	i32 u0x474a7a4e, ; 348 => java/lang/Appendable
	i32 u0x47706bb8, ; 349 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i32 u0x4799433e, ; 350 => android/net/NetworkInfo
	i32 u0x47ac927d, ; 351 => android/text/style/StyleSpan
	i32 u0x47bec27c, ; 352 => kotlinx/serialization/descriptors/SerialDescriptor
	i32 u0x47d41efc, ; 353 => android/animation/ValueAnimator
	i32 u0x48481824, ; 354 => android/app/DatePickerDialog
	i32 u0x4850bb46, ; 355 => android/graphics/Xfermode
	i32 u0x48b62a0e, ; 356 => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i32 u0x48b672c7, ; 357 => kotlin/enums/EnumEntries
	i32 u0x48c87573, ; 358 => com/onesignal/Continue
	i32 u0x48c8f7b3, ; 359 => com/onesignal/notifications/INotificationLifecycleListener
	i32 u0x48cde81e, ; 360 => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i32 u0x48f94eac, ; 361 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i32 u0x49066b21, ; 362 => com/onesignal/notifications/internal/display/INotificationDisplayer
	i32 u0x4923b010, ; 363 => javax/security/cert/Certificate
	i32 u0x49aa1d7f, ; 364 => androidx/core/view/contentcapture/ContentCaptureSessionCompat
	i32 u0x4a8f5c50, ; 365 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i32 u0x4ab64f4a, ; 366 => com/onesignal/notifications/activities/NotificationOpenedActivityBase
	i32 u0x4abb3c6e, ; 367 => androidx/core/app/TaskStackBuilder
	i32 u0x4b02dd12, ; 368 => androidx/appcompat/view/ActionMode$Callback
	i32 u0x4b215843, ; 369 => android/os/UserHandle
	i32 u0x4b6bb0db, ; 370 => androidx/coordinatorlayout/widget/CoordinatorLayout
	i32 u0x4bb583ad, ; 371 => android/view/Window$Callback
	i32 u0x4bbb3aaa, ; 372 => java/net/SocketTimeoutException
	i32 u0x4c0869ac, ; 373 => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i32 u0x4c5b770c, ; 374 => android/widget/SeekBar$OnSeekBarChangeListener
	i32 u0x4c5c40ad, ; 375 => com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable
	i32 u0x4c72cd78, ; 376 => com/onesignal/inAppMessages/IInAppMessage
	i32 u0x4cb4dca7, ; 377 => android/widget/Filter$FilterResults
	i32 u0x4cc4b4da, ; 378 => com/onesignal/inAppMessages/InAppMessageActionUrlType$Companion
	i32 u0x4cd44339, ; 379 => kotlin/jvm/functions/Function2
	i32 u0x4cde54af, ; 380 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i32 u0x4d121556, ; 381 => com/google/android/material/appbar/HeaderBehavior
	i32 u0x4d64d6f9, ; 382 => java/lang/Throwable
	i32 u0x4d99a2d2, ; 383 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i32 u0x4dc09619, ; 384 => androidx/core/view/MenuProvider
	i32 u0x4dda45b7, ; 385 => crc6488302ad6e9e4df1a/MauiApplication
	i32 u0x4deca75d, ; 386 => android/os/Binder
	i32 u0x4dfe661e, ; 387 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i32 u0x4e614a2f, ; 388 => androidx/appcompat/app/AppCompatCallback
	i32 u0x4e907ef7, ; 389 => android/widget/Filterable
	i32 u0x4ee6065b, ; 390 => javax/net/ssl/SSLContext
	i32 u0x4f474993, ; 391 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i32 u0x4f6893c3, ; 392 => crc640ec207abc449b2ca/ScrollLayoutManager
	i32 u0x4f93fcd4, ; 393 => java/util/Collection
	i32 u0x4fa59f87, ; 394 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i32 u0x4faf2ae5, ; 395 => androidx/core/os/LocaleListCompat
	i32 u0x4fe415e2, ; 396 => android/graphics/Paint
	i32 u0x4fe7bef4, ; 397 => crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface
	i32 u0x502cf4aa, ; 398 => androidx/navigation/fragment/FragmentNavigator
	i32 u0x509bc3e1, ; 399 => androidx/appcompat/view/menu/MenuPresenter
	i32 u0x50aec99f, ; 400 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i32 u0x50e42412, ; 401 => androidx/fragment/app/DialogFragment
	i32 u0x51378d59, ; 402 => androidx/appcompat/widget/Toolbar$LayoutParams
	i32 u0x51907546, ; 403 => java/lang/ClassCastException
	i32 u0x51b625d8, ; 404 => android/graphics/PorterDuff$Mode
	i32 u0x51deacb7, ; 405 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i32 u0x51dff242, ; 406 => javax/net/ssl/KeyManager
	i32 u0x51f025eb, ; 407 => androidx/core/util/Pair
	i32 u0x527741c7, ; 408 => android/os/Message
	i32 u0x528b0ea0, ; 409 => androidx/lifecycle/SavedStateHandle
	i32 u0x52a83d46, ; 410 => android/content/ComponentName
	i32 u0x533e1761, ; 411 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i32 u0x5348d2f9, ; 412 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i32 u0x534e497b, ; 413 => crc640ec207abc449b2ca/ContainerView
	i32 u0x54661d07, ; 414 => android/content/pm/ApplicationInfo
	i32 u0x54b5a026, ; 415 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i32 u0x54fbd6e1, ; 416 => java/lang/SecurityException
	i32 u0x551e4b18, ; 417 => java/net/HttpURLConnection
	i32 u0x5538f851, ; 418 => android/graphics/RectF
	i32 u0x556abf7e, ; 419 => android/view/ViewManager
	i32 u0x55991f2d, ; 420 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i32 u0x55b8ed42, ; 421 => androidx/appcompat/view/menu/MenuView
	i32 u0x55c1c54b, ; 422 => android/view/View$OnAttachStateChangeListener
	i32 u0x55f87ea2, ; 423 => java/util/function/Predicate
	i32 u0x5606a26c, ; 424 => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i32 u0x5629681c, ; 425 => crc64fddc838597f4fd38/AndroidNotificationsManager_InternalNotificationsEventsHandler
	i32 u0x56442f9e, ; 426 => android/widget/LinearLayout$LayoutParams
	i32 u0x56649a7c, ; 427 => com/onesignal/user/IUserManager
	i32 u0x568deecb, ; 428 => crc64338477404e88479c/TapAndPanGestureDetector
	i32 u0x56a1f2b6, ; 429 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i32 u0x56dcd081, ; 430 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i32 u0x56e0f077, ; 431 => android/text/SpannableStringInternal
	i32 u0x5703751a, ; 432 => android/widget/ProgressBar
	i32 u0x574ad8f7, ; 433 => crc640ec207abc449b2ca/ShellToolbarTracker
	i32 u0x5788ec77, ; 434 => androidx/core/view/AccessibilityDelegateCompat
	i32 u0x57dee6d9, ; 435 => android/view/animation/AnimationUtils
	i32 u0x57eb2dc6, ; 436 => com/microsoft/maui/PlatformShadowDrawable
	i32 u0x57f522af, ; 437 => java/util/HashMap
	i32 u0x57fe728e, ; 438 => javax/security/auth/Subject
	i32 u0x582246aa, ; 439 => com/onesignal/inAppMessages/IInAppMessageWillDisplayEvent
	i32 u0x58467de4, ; 440 => android/graphics/drawable/Animatable
	i32 u0x588e1716, ; 441 => android/view/View$OnHoverListener
	i32 u0x58c968b2, ; 442 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 u0x58fa8e39, ; 443 => java/util/concurrent/Executor
	i32 u0x58feb1d7, ; 444 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i32 u0x5924ac1f, ; 445 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i32 u0x593adb3c, ; 446 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i32 u0x5997339c, ; 447 => androidx/core/view/WindowInsetsCompat$Type
	i32 u0x59cf8f6b, ; 448 => android/widget/Button
	i32 u0x5a00a85b, ; 449 => androidx/core/text/PrecomputedTextCompat$Params
	i32 u0x5a0c1cc6, ; 450 => crc6452ffdc5b34af3a0f/ViewFragment
	i32 u0x5a810c5d, ; 451 => android/provider/MediaStore$Audio$Media
	i32 u0x5acdf5ad, ; 452 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i32 u0x5aeca5f1, ; 453 => java/security/PrivateKey
	i32 u0x5b9950c8, ; 454 => android/provider/MediaStore$Audio
	i32 u0x5bcf2a0b, ; 455 => androidx/browser/customtabs/CustomTabsClient_CustomTabsCallbackImpl
	i32 u0x5c10ee2c, ; 456 => java/io/File
	i32 u0x5c494750, ; 457 => android/view/WindowManager$LayoutParams
	i32 u0x5c6b3b05, ; 458 => android/content/ContentProvider
	i32 u0x5c82230b, ; 459 => crc6452ffdc5b34af3a0f/MauiShapeableImageView
	i32 u0x5c9ae70f, ; 460 => android/graphics/LinearGradient
	i32 u0x5d560868, ; 461 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i32 u0x5d588b71, ; 462 => java/util/Comparator
	i32 u0x5d70e13e, ; 463 => com/onesignal/notifications/receivers/FCMBroadcastReceiver
	i32 u0x5da461e9, ; 464 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i32 u0x5dc17518, ; 465 => android/widget/AutoCompleteTextView
	i32 u0x5dcecc9b, ; 466 => android/app/AlertDialog
	i32 u0x5dd5e6b6, ; 467 => com/onesignal/user/state/UserChangedState
	i32 u0x5e499d39, ; 468 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i32 u0x5e742e49, ; 469 => android/view/Display
	i32 u0x5e956e3c, ; 470 => android/os/Handler
	i32 u0x5ee96369, ; 471 => androidx/navigation/NavOptions
	i32 u0x60190a81, ; 472 => androidx/appcompat/widget/AppCompatTextView
	i32 u0x602a30a1, ; 473 => crc64338477404e88479c/ModalNavigationManager_ModalFragment
	i32 u0x60397957, ; 474 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i32 u0x604bdbbe, ; 475 => com/onesignal/common/AndroidUtils
	i32 u0x60696f62, ; 476 => kotlin/reflect/KType
	i32 u0x607c6b65, ; 477 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i32 u0x60b33fcf, ; 478 => android/webkit/CookieManager
	i32 u0x613435ba, ; 479 => com/microsoft/maui/ImageLoaderCallback
	i32 u0x6189e9ec, ; 480 => androidx/navigation/NavViewModelStoreProvider
	i32 u0x61a146b7, ; 481 => java/security/Principal
	i32 u0x620ad162, ; 482 => android/graphics/Matrix
	i32 u0x62182271, ; 483 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i32 u0x622147f6, ; 484 => android/view/View
	i32 u0x62545cb7, ; 485 => java/lang/RuntimeException
	i32 u0x62c5df0e, ; 486 => java/lang/IndexOutOfBoundsException
	i32 u0x630ec3df, ; 487 => android/view/View$OnTouchListener
	i32 u0x6367c7e3, ; 488 => javax/crypto/Cipher
	i32 u0x63ac2c80, ; 489 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i32 u0x640bb35a, ; 490 => com/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler
	i32 u0x6422529f, ; 491 => android/view/accessibility/AccessibilityManager
	i32 u0x642f84c3, ; 492 => java/lang/Byte
	i32 u0x64361bd8, ; 493 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i32 u0x6492fb02, ; 494 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i32 u0x64966a00, ; 495 => android/widget/CheckBox
	i32 u0x649adfeb, ; 496 => com/microsoft/maui/PlatformWrapperView
	i32 u0x64e4d5f7, ; 497 => android/view/WindowInsets$Type
	i32 u0x650d9fe7, ; 498 => android/widget/EdgeEffect
	i32 u0x652aa869, ; 499 => com/onesignal/IOneSignal$DefaultImpls
	i32 u0x653fbff6, ; 500 => androidx/navigation/NavDestination$DeepLinkMatch
	i32 u0x654bd255, ; 501 => android/widget/CompoundButton
	i32 u0x658f1073, ; 502 => com/onesignal/location/BuildConfig
	i32 u0x6597608e, ; 503 => android/view/ContentInfo
	i32 u0x66019c1e, ; 504 => com/onesignal/notifications/BackgroundImageLayout
	i32 u0x665c41ad, ; 505 => androidx/navigation/NavDirections
	i32 u0x666aa4c6, ; 506 => java/lang/Character
	i32 u0x66d3bdea, ; 507 => kotlin/reflect/KParameter$Kind
	i32 u0x66ff73c3, ; 508 => android/view/animation/Animation$AnimationListener
	i32 u0x67045916, ; 509 => kotlin/coroutines/CoroutineContext$Key
	i32 u0x671880fe, ; 510 => android/view/MenuInflater
	i32 u0x6758efa2, ; 511 => android/content/ClipData$Item
	i32 u0x6772e35e, ; 512 => java/util/ListIterator
	i32 u0x67a3aa49, ; 513 => androidx/lifecycle/ViewModelStore
	i32 u0x67c2b7a7, ; 514 => android/widget/FrameLayout
	i32 u0x67c4792a, ; 515 => android/os/IInterface
	i32 u0x681a963a, ; 516 => android/app/Application$ActivityLifecycleCallbacks
	i32 u0x6827af36, ; 517 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i32 u0x689f8691, ; 518 => java/util/Random
	i32 u0x68b2b367, ; 519 => androidx/core/view/ActionProvider$VisibilityListener
	i32 u0x68b8500d, ; 520 => android/text/Layout
	i32 u0x68b9fbe9, ; 521 => android/graphics/drawable/shapes/RectShape
	i32 u0x68c2e1e6, ; 522 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i32 u0x68c8ba43, ; 523 => crc64739e6ff015bad190/MainActivity
	i32 u0x68d070f5, ; 524 => android/os/BaseBundle
	i32 u0x68fa7a8c, ; 525 => android/content/ClipData
	i32 u0x69399da8, ; 526 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i32 u0x69828be4, ; 527 => kotlinx/serialization/KSerializer
	i32 u0x69a95714, ; 528 => android/graphics/Point
	i32 u0x69cd2b8d, ; 529 => crc64f728827fec74e9c3/Toolbar_Container
	i32 u0x69d1c518, ; 530 => android/content/res/ColorStateList
	i32 u0x6a118714, ; 531 => android/provider/MediaStore$Video$Media
	i32 u0x6a1bd0c1, ; 532 => java/util/SequencedCollection
	i32 u0x6a234096, ; 533 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i32 u0x6a4dcb9c, ; 534 => com/onesignal/notifications/internal/INotificationActivityOpener
	i32 u0x6aaafc04, ; 535 => androidx/browser/customtabs/CustomTabsSession$PendingSession
	i32 u0x6ab4d8d7, ; 536 => android/text/Spanned
	i32 u0x6b1300b3, ; 537 => com/google/android/material/button/MaterialButton
	i32 u0x6bb7ffbf, ; 538 => android/view/View$OnClickListener
	i32 u0x6c313de9, ; 539 => kotlin/reflect/KFunction
	i32 u0x6c384f90, ; 540 => com/onesignal/notifications/internal/common/NotificationHelper
	i32 u0x6cd3e11f, ; 541 => androidx/appcompat/widget/SearchView$OnCloseListener
	i32 u0x6cd77b83, ; 542 => androidx/appcompat/view/menu/SubMenuBuilder
	i32 u0x6d083925, ; 543 => crc64e1fb321c08285b90/SwitchCellView
	i32 u0x6d1f477f, ; 544 => android/graphics/drawable/ShapeDrawable
	i32 u0x6d652989, ; 545 => androidx/navigation/NavAction
	i32 u0x6d8a8ab7, ; 546 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i32 u0x6e082885, ; 547 => crc6452ffdc5b34af3a0f/MauiPageControl
	i32 u0x6e3aaade, ; 548 => com/google/android/material/appbar/AppBarLayout$Behavior
	i32 u0x6e5f2b64, ; 549 => java/lang/Runnable
	i32 u0x6e7c8b15, ; 550 => com/google/android/material/badge/BadgeDrawable
	i32 u0x6e92f3e9, ; 551 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i32 u0x6e9aa4b9, ; 552 => mono/android/text/TextWatcherImplementor
	i32 u0x6eb08a9f, ; 553 => crc64fddc838597f4fd38/AndroidInAppMessagesManager_InternalInAppMessageEventsHandler
	i32 u0x6ece3e1d, ; 554 => android/widget/LinearLayout
	i32 u0x6ef0b866, ; 555 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i32 u0x6f25776f, ; 556 => android/view/ViewConfiguration
	i32 u0x6f3d8b79, ; 557 => android/view/SearchEvent
	i32 u0x6f5d868b, ; 558 => com/onesignal/OneSignal
	i32 u0x6f9085df, ; 559 => android/graphics/drawable/Drawable$ConstantState
	i32 u0x704e1132, ; 560 => crc64e1fb321c08285b90/BaseCellView
	i32 u0x705864f0, ; 561 => android/os/PowerManager
	i32 u0x705a3855, ; 562 => android/content/DialogInterface$OnMultiChoiceClickListener
	i32 u0x708c8a9b, ; 563 => kotlin/jvm/functions/Function1
	i32 u0x70a9a559, ; 564 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i32 u0x70c5396a, ; 565 => android/graphics/drawable/InsetDrawable
	i32 u0x70de2257, ; 566 => androidx/fragment/app/FragmentActivity
	i32 u0x718714c5, ; 567 => android/text/style/ForegroundColorSpan
	i32 u0x718da316, ; 568 => androidx/lifecycle/ViewModelProvider
	i32 u0x71e3cb66, ; 569 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i32 u0x7204c6b6, ; 570 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i32 u0x72a868f6, ; 571 => android/content/pm/ComponentInfo
	i32 u0x72db92de, ; 572 => androidx/lifecycle/Lifecycle$Event
	i32 u0x73946ca3, ; 573 => com/microsoft/maui/PlatformMauiAppCompatActivity
	i32 u0x73dbb303, ; 574 => android/widget/AdapterView$OnItemSelectedListener
	i32 u0x73e1105c, ; 575 => java/io/OutputStream
	i32 u0x74e24c4e, ; 576 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i32 u0x74f3ac63, ; 577 => android/content/BroadcastReceiver
	i32 u0x752e0221, ; 578 => androidx/fragment/app/FragmentManager
	i32 u0x754292b2, ; 579 => androidx/navigation/NavArgument
	i32 u0x7562d335, ; 580 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i32 u0x756f6f77, ; 581 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i32 u0x7573a76b, ; 582 => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i32 u0x75743229, ; 583 => androidx/appcompat/app/AlertDialog$Builder
	i32 u0x75976883, ; 584 => crc640ec207abc449b2ca/ShellPageContainer
	i32 u0x75c34d61, ; 585 => androidx/viewpager2/adapter/FragmentStateAdapter
	i32 u0x75c9a43f, ; 586 => com/google/android/material/shape/EdgeTreatment
	i32 u0x75d35057, ; 587 => com/google/android/material/bottomsheet/BottomSheetDialog
	i32 u0x765ee0ac, ; 588 => android/app/Activity
	i32 u0x767c0d39, ; 589 => java/lang/Boolean
	i32 u0x768561de, ; 590 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i32 u0x76a65018, ; 591 => android/widget/AdapterView$OnItemClickListener
	i32 u0x772ee9d8, ; 592 => android/graphics/drawable/GradientDrawable
	i32 u0x77b0a344, ; 593 => android/content/Intent
	i32 u0x77bf1500, ; 594 => com/google/android/material/elevation/ElevationOverlayProvider
	i32 u0x77e098bc, ; 595 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i32 u0x780abb64, ; 596 => androidx/appcompat/widget/AppCompatImageView
	i32 u0x781647f7, ; 597 => android/view/accessibility/AccessibilityRecord
	i32 u0x78cbc3b9, ; 598 => android/widget/FrameLayout$LayoutParams
	i32 u0x78dd82d8, ; 599 => android/view/ContextThemeWrapper
	i32 u0x791579f7, ; 600 => android/widget/AdapterView
	i32 u0x7963618e, ; 601 => android/content/DialogInterface
	i32 u0x797f700c, ; 602 => com/onesignal/inAppMessages/IInAppMessagesManager
	i32 u0x7993c871, ; 603 => android/widget/TimePicker
	i32 u0x79b2da8d, ; 604 => com/onesignal/location/ILocationManager
	i32 u0x79c4b7dd, ; 605 => android/text/style/BulletSpan
	i32 u0x79c62bf1, ; 606 => android/os/Parcelable$Creator
	i32 u0x79cac366, ; 607 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i32 u0x79e9460d, ; 608 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i32 u0x79fc40da, ; 609 => java/util/Locale
	i32 u0x7a0dbe3c, ; 610 => android/webkit/WebChromeClient$FileChooserParams
	i32 u0x7a3f2e65, ; 611 => java/util/function/ToLongFunction
	i32 u0x7a6505ce, ; 612 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i32 u0x7a73c9e6, ; 613 => androidx/recyclerview/widget/RecyclerView$Recycler
	i32 u0x7ae35f4c, ; 614 => android/database/CharArrayBuffer
	i32 u0x7b05ec59, ; 615 => android/view/animation/Animation
	i32 u0x7b112ed3, ; 616 => android/widget/SpinnerAdapter
	i32 u0x7b26a38a, ; 617 => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i32 u0x7b89e3c9, ; 618 => crc64b5e713d400f589b7/MauiDrawable
	i32 u0x7b949de0, ; 619 => android/app/AlertDialog$Builder
	i32 u0x7bbef866, ; 620 => androidx/navigation/NavGraphNavigator
	i32 u0x7bf686d2, ; 621 => android/content/IntentSender
	i32 u0x7c04bc64, ; 622 => java/security/SecureRandom
	i32 u0x7c07630b, ; 623 => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i32 u0x7c4c42c3, ; 624 => mono/com/onesignal/inAppMessages/IInAppMessageLifecycleListenerImplementor
	i32 u0x7c9f6d9f, ; 625 => android/os/Environment
	i32 u0x7ca2ec86, ; 626 => androidx/fragment/app/FragmentManager$BackStackEntry
	i32 u0x7cf48e43, ; 627 => android/widget/AbsSeekBar
	i32 u0x7d39e03d, ; 628 => android/graphics/Path
	i32 u0x7dc43ae1, ; 629 => android/window/InputTransferToken
	i32 u0x7df3df82, ; 630 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i32 u0x7e04b61a, ; 631 => android/content/res/Configuration
	i32 u0x7e7413f3, ; 632 => kotlin/jvm/internal/markers/KMappedMarker
	i32 u0x7e7dc740, ; 633 => kotlin/coroutines/Continuation
	i32 u0x7e97d929, ; 634 => android/content/ContentValues
	i32 u0x7edb32fa, ; 635 => androidx/loader/app/LoaderManager
	i32 u0x7ef77429, ; 636 => kotlinx/coroutines/flow/SharedFlow
	i32 u0x7f0bcdf3, ; 637 => android/animation/AnimatorListenerAdapter
	i32 u0x7f5f2883, ; 638 => crc64338477404e88479c/FragmentContainer
	i32 u0x7f668fbf, ; 639 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i32 u0x7f90f27b, ; 640 => androidx/navigation/NavGraph
	i32 u0x7fb69f47, ; 641 => com/google/android/material/appbar/AppBarLayout
	i32 u0x800f41b6, ; 642 => com/onesignal/notifications/bridges/OneSignalHmsEventBridge
	i32 u0x801f5d9d, ; 643 => crc64e1fb321c08285b90/ConditionalFocusLayout
	i32 u0x805d85e9, ; 644 => mono/com/onesignal/notifications/INotificationLifecycleListenerImplementor
	i32 u0x806b383f, ; 645 => android/view/animation/AnimationSet
	i32 u0x806ed615, ; 646 => com/google/android/material/tabs/TabLayout
	i32 u0x814108db, ; 647 => kotlin/reflect/KCallable
	i32 u0x816ed070, ; 648 => androidx/navigation/NavDestination
	i32 u0x81a4c641, ; 649 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i32 u0x81c3131c, ; 650 => androidx/lifecycle/Lifecycle
	i32 u0x82225f2a, ; 651 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i32 u0x827a2712, ; 652 => android/graphics/Paint$FontMetrics
	i32 u0x828c7aaa, ; 653 => java/security/Key
	i32 u0x82a50e2b, ; 654 => androidx/lifecycle/Lifecycle$State
	i32 u0x82ac1c5f, ; 655 => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i32 u0x83625f1e, ; 656 => org/xmlpull/v1/XmlPullParser
	i32 u0x83a26d33, ; 657 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i32 u0x83b8de8d, ; 658 => com/onesignal/user/subscriptions/PushSubscriptionChangedState
	i32 u0x84105191, ; 659 => crc645d80431ce5f73f11/TextViewHolder
	i32 u0x8475e296, ; 660 => android/provider/MediaStore$Video
	i32 u0x848534fd, ; 661 => androidx/appcompat/widget/TooltipCompat
	i32 u0x84c04103, ; 662 => androidx/fragment/app/FragmentOnAttachListener
	i32 u0x84fcfe0d, ; 663 => androidx/core/app/ActivityOptionsCompat
	i32 u0x854542ba, ; 664 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i32 u0x85a05c5d, ; 665 => androidx/appcompat/widget/ScrollingTabContainerView
	i32 u0x85ee6357, ; 666 => androidx/navigation/Navigator$Extras
	i32 u0x868456ef, ; 667 => crc6452ffdc5b34af3a0f/WrapperView
	i32 u0x871f05f2, ; 668 => crc6452ffdc5b34af3a0f/MauiWebView
	i32 u0x8724f930, ; 669 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i32 u0x873c59ae, ; 670 => com/onesignal/inAppMessages/IInAppMessageWillDismissEvent
	i32 u0x873fa2a1, ; 671 => java/net/UnknownServiceException
	i32 u0x875b8bea, ; 672 => java/net/Proxy$Type
	i32 u0x87a0f669, ; 673 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i32 u0x87e3ff73, ; 674 => androidx/appcompat/widget/AppCompatImageButton
	i32 u0x882d17e1, ; 675 => android/app/Application
	i32 u0x8830928f, ; 676 => com/microsoft/maui/PlatformDispatcher
	i32 u0x886b9456, ; 677 => com/google/android/material/checkbox/MaterialCheckBox
	i32 u0x88c5fabc, ; 678 => android/view/accessibility/AccessibilityNodeInfo
	i32 u0x88cf1b4e, ; 679 => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i32 u0x88e074f7, ; 680 => android/content/IntentFilter
	i32 u0x893ab6b3, ; 681 => kotlinx/serialization/SerializationStrategy
	i32 u0x894ab1ed, ; 682 => com/onesignal/user/subscriptions/ISmsSubscription
	i32 u0x89a49e25, ; 683 => android/graphics/Path$Op
	i32 u0x89c2c9ef, ; 684 => com/google/android/material/appbar/ViewOffsetBehavior
	i32 u0x89ec3a79, ; 685 => crc64159f3caeb1269279/MauiDrawingView
	i32 u0x8a121279, ; 686 => androidx/lifecycle/ViewModelStoreOwner
	i32 u0x8a35f941, ; 687 => kotlin/reflect/KVariance
	i32 u0x8a4bc22b, ; 688 => crc64338477404e88479c/MauiViewPager
	i32 u0x8a67f0b6, ; 689 => kotlin/reflect/KTypeProjection
	i32 u0x8a994ed4, ; 690 => com/onesignal/notifications/activities/NotificationOpenedActivityAndroid22AndOlder
	i32 u0x8a9efa0c, ; 691 => java/lang/Iterable
	i32 u0x8ae4259c, ; 692 => androidx/activity/result/ActivityResultCallback
	i32 u0x8af094d1, ; 693 => crc6452ffdc5b34af3a0f/BorderDrawable
	i32 u0x8b6202b1, ; 694 => android/view/contentcapture/ContentCaptureSession
	i32 u0x8b8800b8, ; 695 => androidx/recyclerview/widget/PagerSnapHelper
	i32 u0x8ba324db, ; 696 => com/onesignal/user/subscriptions/IPushSubscription
	i32 u0x8bdb13a3, ; 697 => android/content/pm/ActivityInfo
	i32 u0x8bea7a70, ; 698 => android/net/ConnectivityManager
	i32 u0x8c1a4154, ; 699 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i32 u0x8cb0a476, ; 700 => crc64338477404e88479c/InnerScaleListener
	i32 u0x8ce3a5d6, ; 701 => java/lang/Enum
	i32 u0x8cee3898, ; 702 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/EverythingMeHomeBadger
	i32 u0x8d1d3103, ; 703 => android/widget/SearchView
	i32 u0x8d57f1bc, ; 704 => android/widget/Switch
	i32 u0x8d822d02, ; 705 => com/onesignal/inAppMessages/InAppMessageActionUrlType
	i32 u0x8e0e3e95, ; 706 => com/onesignal/user/subscriptions/PushSubscriptionState
	i32 u0x8e637552, ; 707 => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i32 u0x8e6ad92b, ; 708 => android/view/ViewStructure
	i32 u0x8e8542be, ; 709 => androidx/browser/customtabs/CustomTabsIntent$Builder
	i32 u0x8ecc3a71, ; 710 => android/view/View$OnLayoutChangeListener
	i32 u0x8ed9958c, ; 711 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i32 u0x8eff3e69, ; 712 => androidx/recyclerview/widget/RecyclerView
	i32 u0x8f4b02f6, ; 713 => android/app/PendingIntent
	i32 u0x8f68a41d, ; 714 => android/graphics/Shader
	i32 u0x8fa17b2d, ; 715 => android/util/TypedValue
	i32 u0x8fbb1ca5, ; 716 => java/lang/UnsupportedOperationException
	i32 u0x8fe5f0da, ; 717 => com/onesignal/notifications/INotificationsManager
	i32 u0x903fdde8, ; 718 => android/content/res/Resources$Theme
	i32 u0x90aa95f0, ; 719 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i32 u0x90b7e95d, ; 720 => crc6490284b47efd0c513/WebAuthenticationCallbackActivity
	i32 u0x90cdc46b, ; 721 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i32 u0x91368633, ; 722 => androidx/cursoradapter/widget/CursorAdapter
	i32 u0x9164c142, ; 723 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i32 u0x918f9763, ; 724 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i32 u0x91a3eaf3, ; 725 => java/net/SocketException
	i32 u0x91a87d29, ; 726 => android/graphics/PathEffect
	i32 u0x91a93d72, ; 727 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i32 u0x91b08077, ; 728 => crc64e1fb321c08285b90/EntryCellEditText
	i32 u0x920377cb, ; 729 => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i32 u0x922a94b5, ; 730 => java/io/RandomAccessFile
	i32 u0x9254a809, ; 731 => android/view/WindowInsetsAnimationControlListener
	i32 u0x929b0a45, ; 732 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i32 u0x929cda6a, ; 733 => androidx/recyclerview/widget/ItemTouchUIUtil
	i32 u0x92a4a287, ; 734 => kotlinx/serialization/encoding/CompositeEncoder
	i32 u0x92b40e49, ; 735 => org/xmlpull/v1/XmlPullParserException
	i32 u0x92e47122, ; 736 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i32 u0x9313713b, ; 737 => android/window/OnBackInvokedDispatcher
	i32 u0x93615193, ; 738 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i32 u0x938427ee, ; 739 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack
	i32 u0x93a0f3b2, ; 740 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i32 u0x93a19d5c, ; 741 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i32 u0x93c633e2, ; 742 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i32 u0x93e1af4c, ; 743 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i32 u0x941c28a5, ; 744 => android/webkit/WebSettings
	i32 u0x949cba0b, ; 745 => android/text/StaticLayout
	i32 u0x9573bcb0, ; 746 => crc640ec207abc449b2ca/ShellSearchView
	i32 u0x95a99c55, ; 747 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i32 u0x95b65844, ; 748 => android/app/NotificationManager
	i32 u0x96f382c0, ; 749 => com/onesignal/session/ISessionManager
	i32 u0x96f82d4f, ; 750 => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 u0x97807eec, ; 751 => android/view/ContextMenu$ContextMenuInfo
	i32 u0x97a30613, ; 752 => androidx/core/view/MenuItemCompat
	i32 u0x97db463b, ; 753 => com/microsoft/maui/PlatformContentViewGroup
	i32 u0x98172bc3, ; 754 => com/onesignal/notifications/INotificationReceivedEvent
	i32 u0x9820b7c9, ; 755 => androidx/core/view/ScrollingView
	i32 u0x98632cbb, ; 756 => androidx/browser/customtabs/CustomTabColorSchemeParams
	i32 u0x9871c90a, ; 757 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i32 u0x9873a0ac, ; 758 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i32 u0x987a2d5e, ; 759 => java/io/FileInputStream
	i32 u0x987e88d8, ; 760 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i32 u0x9881b4d0, ; 761 => android/graphics/drawable/Icon
	i32 u0x98ebcde1, ; 762 => android/app/DatePickerDialog$OnDateSetListener
	i32 u0x99197446, ; 763 => androidx/appcompat/widget/AppCompatEditText
	i32 u0x9926febb, ; 764 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i32 u0x99407db7, ; 765 => java/text/SimpleDateFormat
	i32 u0x99631a62, ; 766 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i32 u0x99ae9b84, ; 767 => android/widget/ImageView$ScaleType
	i32 u0x99b1b0b7, ; 768 => com/microsoft/maui/HybridJavaScriptInterface
	i32 u0x99eec34b, ; 769 => androidx/navigation/NavController$OnDestinationChangedListener
	i32 u0x99f64847, ; 770 => mono/android/animation/AnimatorEventDispatcher
	i32 u0x9a1d2e88, ; 771 => java/text/NumberFormat
	i32 u0x9a2f021b, ; 772 => android/content/DialogInterface$OnKeyListener
	i32 u0x9aa0facc, ; 773 => android/widget/BaseAdapter
	i32 u0x9aed999f, ; 774 => android/view/SurfaceControl
	i32 u0x9b0e465f, ; 775 => androidx/navigation/NavDeepLinkRequest
	i32 u0x9b179eb2, ; 776 => crc6452ffdc5b34af3a0f/MauiLayerDrawable
	i32 u0x9c4a4535, ; 777 => com/onesignal/common/ViewUtils
	i32 u0x9ca85dca, ; 778 => android/content/DialogInterface$OnCancelListener
	i32 u0x9d2fdb8f, ; 779 => android/content/pm/PackageManager
	i32 u0x9d44121c, ; 780 => androidx/appcompat/app/AppCompatDelegate
	i32 u0x9d796341, ; 781 => com/google/android/material/navigation/NavigationView
	i32 u0x9d7fe3dc, ; 782 => android/content/pm/Signature
	i32 u0x9da7ab0b, ; 783 => androidx/core/widget/NestedScrollView
	i32 u0x9da99a31, ; 784 => androidx/core/app/ComponentActivity$ExtraData
	i32 u0x9dd23514, ; 785 => androidx/core/graphics/drawable/DrawableCompat
	i32 u0x9df33784, ; 786 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i32 u0x9e00de95, ; 787 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i32 u0x9e3b164d, ; 788 => java/io/InterruptedIOException
	i32 u0x9ea9f8cf, ; 789 => android/widget/ImageButton
	i32 u0x9ebf0e07, ; 790 => mono/java/lang/Runnable
	i32 u0x9ed79303, ; 791 => javax/net/ssl/HostnameVerifier
	i32 u0x9f11a71b, ; 792 => kotlin/reflect/KDeclarationContainer
	i32 u0x9f1e7849, ; 793 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i32 u0x9f287e8b, ; 794 => com/onesignal/common/IDManager
	i32 u0x9f7aa877, ; 795 => android/webkit/WebViewClient
	i32 u0x9fba5c10, ; 796 => android/view/KeyboardShortcutInfo
	i32 u0x9fc26a20, ; 797 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i32 u0x9fd00367, ; 798 => android/widget/Adapter
	i32 u0x9fdb1e25, ; 799 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i32 u0x9fdbe44e, ; 800 => android/view/MotionEvent
	i32 u0xa0343f64, ; 801 => android/widget/TextView
	i32 u0xa067f1d6, ; 802 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i32 u0xa06deb73, ; 803 => android/view/View$OnKeyListener
	i32 u0xa07cd682, ; 804 => android/util/Log
	i32 u0xa0ad0a01, ; 805 => crc645d80431ce5f73f11/SingleSnapHelper
	i32 u0xa0e7f4d5, ; 806 => android/webkit/WebResourceRequest
	i32 u0xa10b2832, ; 807 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i32 u0xa10dac39, ; 808 => androidx/appcompat/widget/SwitchCompat
	i32 u0xa1717eed, ; 809 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i32 u0xa2347fe6, ; 810 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i32 u0xa2384ed3, ; 811 => android/graphics/drawable/Drawable
	i32 u0xa2d12ed5, ; 812 => android/view/View$MeasureSpec
	i32 u0xa304302a, ; 813 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i32 u0xa37b2b3a, ; 814 => androidx/biometric/BiometricPrompt$AuthenticationResult
	i32 u0xa37de40c, ; 815 => androidx/activity/result/ActivityResultRegistry
	i32 u0xa3ce43ef, ; 816 => crc64e1fb321c08285b90/TableViewModelRenderer
	i32 u0xa43a5132, ; 817 => com/onesignal/notifications/BuildConfig
	i32 u0xa43ee622, ; 818 => com/onesignal/user/subscriptions/IPushSubscriptionObserver
	i32 u0xa4416377, ; 819 => android/text/Spannable
	i32 u0xa4ab3847, ; 820 => java/lang/Float
	i32 u0xa537c29d, ; 821 => android/graphics/drawable/LayerDrawable
	i32 u0xa58386f0, ; 822 => com/onesignal/notifications/activities/NotificationOpenedActivity
	i32 u0xa58733e8, ; 823 => com/onesignal/notifications/internal/common/NotificationConstants
	i32 u0xa5d6e364, ; 824 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i32 u0xa63f9a0a, ; 825 => androidx/navigation/NavInflater
	i32 u0xa65e80fa, ; 826 => com/onesignal/notifications/receivers/UpgradeReceiver
	i32 u0xa6b4071d, ; 827 => android/text/format/DateFormat
	i32 u0xa70f782c, ; 828 => crc6452ffdc5b34af3a0f/MauiScrollView
	i32 u0xa7d2e3c3, ; 829 => android/os/Build
	i32 u0xa7f9e1e3, ; 830 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i32 u0xa82239ca, ; 831 => crc6452ffdc5b34af3a0f/MauiBoxView
	i32 u0xa855e6a7, ; 832 => androidx/appcompat/widget/AppCompatButton
	i32 u0xa91fd561, ; 833 => android/view/DragEvent
	i32 u0xa96e63d3, ; 834 => crc645d80431ce5f73f11/ScrollHelper
	i32 u0xa9e1e5e2, ; 835 => java/util/function/IntFunction
	i32 u0xaa090c56, ; 836 => androidx/cardview/widget/CardView
	i32 u0xaa4a698b, ; 837 => com/google/android/material/shape/CornerTreatment
	i32 u0xaa4fbe78, ; 838 => mono/android/view/View_OnKeyListenerImplementor
	i32 u0xaa714f7e, ; 839 => java/util/Spliterator
	i32 u0xaa722a66, ; 840 => android/view/WindowInsetsAnimation$Bounds
	i32 u0xaa8288ed, ; 841 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i32 u0xaaa43bcf, ; 842 => androidx/core/view/ActionProvider
	i32 u0xaad17d09, ; 843 => androidx/recyclerview/widget/SnapHelper
	i32 u0xaae19488, ; 844 => android/view/ActionMode
	i32 u0xab40258f, ; 845 => android/content/pm/PackageInfo
	i32 u0xab580b31, ; 846 => java/lang/StackTraceElement
	i32 u0xabc082c8, ; 847 => com/onesignal/inAppMessages/IInAppMessageClickResult
	i32 u0xad202668, ; 848 => android/view/WindowInsetsAnimationController
	i32 u0xad2a0fae, ; 849 => android/text/style/ParagraphStyle
	i32 u0xad6c6892, ; 850 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i32 u0xadf680a3, ; 851 => android/content/DialogInterface$OnClickListener
	i32 u0xae34b971, ; 852 => android/graphics/BlendMode
	i32 u0xaecafdf1, ; 853 => com/onesignal/debug/LogLevel
	i32 u0xaed01dcc, ; 854 => android/view/InputEvent
	i32 u0xaeddab28, ; 855 => android/util/AttributeSet
	i32 u0xaf084182, ; 856 => androidx/fragment/app/strictmode/Violation
	i32 u0xaf0e9942, ; 857 => androidx/recyclerview/widget/LinearSmoothScroller
	i32 u0xaf53d718, ; 858 => com/onesignal/inAppMessages/BuildConfig
	i32 u0xaf6773fc, ; 859 => java/lang/Exception
	i32 u0xaf73e94d, ; 860 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i32 u0xaf862ea3, ; 861 => android/widget/ListView
	i32 u0xb00cb718, ; 862 => android/view/WindowInsetsController
	i32 u0xb01f0e14, ; 863 => androidx/appcompat/app/ActionBar
	i32 u0xb0a3f732, ; 864 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i32 u0xb0f78dd9, ; 865 => mono/android/view/animation/Animation_AnimationListenerImplementor
	i32 u0xb152a219, ; 866 => java/text/Format
	i32 u0xb1a6fc2a, ; 867 => mono/android/runtime/JavaArray
	i32 u0xb1bf6ad1, ; 868 => com/onesignal/notifications/internal/lifecycle/INotificationLifecycleCallback
	i32 u0xb1d7f461, ; 869 => mono/android/TypeManager
	i32 u0xb1f26d38, ; 870 => android/text/method/DigitsKeyListener
	i32 u0xb253e191, ; 871 => crc645d80431ce5f73f11/SelectableViewHolder
	i32 u0xb27fd2fc, ; 872 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i32 u0xb283b297, ; 873 => com/onesignal/inAppMessages/IInAppMessageDidDismissEvent
	i32 u0xb2ba2e16, ; 874 => com/onesignal/user/state/UserState
	i32 u0xb2c7c079, ; 875 => androidx/core/view/ContentInfoCompat
	i32 u0xb2d9b850, ; 876 => crc645d80431ce5f73f11/SizedItemContentView
	i32 u0xb2e0546e, ; 877 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i32 u0xb2ea14bd, ; 878 => crc645d80431ce5f73f11/SpacingItemDecoration
	i32 u0xb2f122ea, ; 879 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i32 u0xb36373f3, ; 880 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i32 u0xb37a7bd1, ; 881 => androidx/appcompat/app/ActionBar$LayoutParams
	i32 u0xb3aaaba5, ; 882 => crc64e1fb321c08285b90/CellAdapter
	i32 u0xb3b2298b, ; 883 => kotlin/Function
	i32 u0xb41bb47f, ; 884 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i32 u0xb4216866, ; 885 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i32 u0xb4355675, ; 886 => android/text/SpannableString
	i32 u0xb438f723, ; 887 => com/microsoft/maui/PlatformAppCompatTextView
	i32 u0xb47b8436, ; 888 => crc645d80431ce5f73f11/DataChangeObserver
	i32 u0xb4c4fd79, ; 889 => java/io/StringWriter
	i32 u0xb52fccdc, ; 890 => com/onesignal/notifications/IDisplayableNotification
	i32 u0xb5efe08f, ; 891 => android/view/animation/DecelerateInterpolator
	i32 u0xb5f14d6b, ; 892 => com/google/android/material/shape/CornerSize
	i32 u0xb60e14b7, ; 893 => com/onesignal/notifications/IMutableNotification
	i32 u0xb613e04c, ; 894 => crc64396a3fe5f8138e3f/KeepAliveService
	i32 u0xb6265a3c, ; 895 => androidx/core/view/WindowInsetsAnimationCompat
	i32 u0xb7220b27, ; 896 => java/util/concurrent/Future
	i32 u0xb74574e5, ; 897 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i32 u0xb751e489, ; 898 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i32 u0xb783dae8, ; 899 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i32 u0xb7b96051, ; 900 => crc64e1fb321c08285b90/ListViewAdapter
	i32 u0xb7c06eb6, ; 901 => android/util/Pair
	i32 u0xb7e59bab, ; 902 => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i32 u0xb7ff321b, ; 903 => androidx/appcompat/app/ActionBarDrawerToggle
	i32 u0xb803c5fe, ; 904 => android/preference/PreferenceManager
	i32 u0xb875ac42, ; 905 => com/onesignal/common/NetworkUtils
	i32 u0xb8b0d69a, ; 906 => android/webkit/WebResourceError
	i32 u0xb91a1a14, ; 907 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i32 u0xb92af814, ; 908 => androidx/viewpager2/widget/ViewPager2
	i32 u0xb9465a21, ; 909 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i32 u0xb9c52a1f, ; 910 => android/view/View$AccessibilityDelegate
	i32 u0xb9cef92b, ; 911 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i32 u0xb9dbcdb9, ; 912 => crc64338477404e88479c/InnerGestureListener
	i32 u0xb9f9d446, ; 913 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i32 u0xbaa104aa, ; 914 => com/onesignal/notifications/INotificationServiceExtension
	i32 u0xbb361208, ; 915 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i32 u0xbb3e4f07, ; 916 => android/view/ScaleGestureDetector
	i32 u0xbb77c486, ; 917 => crc645d80431ce5f73f11/ItemContentView
	i32 u0xbb977183, ; 918 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i32 u0xbba3aad6, ; 919 => android/animation/ValueAnimator$AnimatorUpdateListener
	i32 u0xbbcd0eb2, ; 920 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i32 u0xbbda7222, ; 921 => androidx/appcompat/view/menu/MenuItemImpl
	i32 u0xbbfffad3, ; 922 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i32 u0xbc2538fe, ; 923 => com/onesignal/notifications/receivers/BootUpReceiver
	i32 u0xbc73ced5, ; 924 => androidx/appcompat/content/res/AppCompatResources
	i32 u0xbc9ed48b, ; 925 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i32 u0xbd2317bb, ; 926 => android/content/pm/ShortcutInfo
	i32 u0xbd262c45, ; 927 => android/os/IBinder
	i32 u0xbd267561, ; 928 => android/graphics/Path$Direction
	i32 u0xbd71139f, ; 929 => android/view/inputmethod/InputMethodManager
	i32 u0xbd79b67e, ; 930 => com/microsoft/maui/PlatformLineHeightSpan
	i32 u0xbd9816ec, ; 931 => androidx/appcompat/widget/LinearLayoutCompat
	i32 u0xbdbcdc8f, ; 932 => android/view/ActionMode$Callback
	i32 u0xbdd653d9, ; 933 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i32 u0xbddd6b44, ; 934 => androidx/navigation/NavigatorState
	i32 u0xbe184831, ; 935 => android/graphics/MaskFilter
	i32 u0xbe1e310b, ; 936 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i32 u0xbe57cab0, ; 937 => android/text/style/ClickableSpan
	i32 u0xbe7236f1, ; 938 => com/google/android/material/shape/ShapeAppearanceModel
	i32 u0xbed6d31f, ; 939 => android/content/ClipDescription
	i32 u0xbeeddf83, ; 940 => android/widget/SeekBar
	i32 u0xbeef72b4, ; 941 => android/view/KeyboardShortcutGroup
	i32 u0xbf32553d, ; 942 => android/os/LocaleList
	i32 u0xbf9d1a04, ; 943 => android/view/WindowManager
	i32 u0xbfeacd6d, ; 944 => crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity
	i32 u0xbff0c2b9, ; 945 => androidx/navigation/NavType
	i32 u0xc0155dc2, ; 946 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/Badger
	i32 u0xc019ab9d, ; 947 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i32 u0xc02ffb33, ; 948 => kotlin/jvm/functions/Function0
	i32 u0xc039ad33, ; 949 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i32 u0xc166dc4b, ; 950 => crc640ec207abc449b2ca/ShellItemRenderer
	i32 u0xc189e81b, ; 951 => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i32 u0xc1a8a34a, ; 952 => kotlinx/coroutines/flow/Flow
	i32 u0xc1af7a0a, ; 953 => android/window/BackEvent
	i32 u0xc20d3e5c, ; 954 => com/google/android/material/navigation/NavigationBarMenuView
	i32 u0xc27806ec, ; 955 => android/graphics/BlurMaskFilter$Blur
	i32 u0xc281dd93, ; 956 => crc64fddc838597f4fd38/AndroidPushSubscription_InternalSubscriptionChangedHandler
	i32 u0xc289248f, ; 957 => javax/crypto/Mac
	i32 u0xc2f8d665, ; 958 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i32 u0xc30b961d, ; 959 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/util/BroadcastHelper
	i32 u0xc39e36a2, ; 960 => android/view/MenuItem
	i32 u0xc3d3d56c, ; 961 => crc6468b6408a11370c2f/WebAuthenticatorCallbackActivity
	i32 u0xc3f2d711, ; 962 => androidx/activity/FullyDrawnReporter
	i32 u0xc3f7408a, ; 963 => crc645d80431ce5f73f11/EdgeSnapHelper
	i32 u0xc41ddd9a, ; 964 => android/view/ViewPropertyAnimator
	i32 u0xc456317e, ; 965 => android/graphics/Shader$TileMode
	i32 u0xc48747d2, ; 966 => kotlinx/coroutines/CoroutineScope
	i32 u0xc4acc23e, ; 967 => androidx/core/view/ScaleGestureDetectorCompat
	i32 u0xc4bfd570, ; 968 => javax/net/ssl/SSLSession
	i32 u0xc4caaec0, ; 969 => android/text/method/MovementMethod
	i32 u0xc4e3199e, ; 970 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i32 u0xc4f9e681, ; 971 => androidx/navigation/NavBackStackEntry
	i32 u0xc56e7e9d, ; 972 => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i32 u0xc5df2394, ; 973 => java/net/Proxy
	i32 u0xc5f08444, ; 974 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i32 u0xc6d796a7, ; 975 => crc6452ffdc5b34af3a0f/MauiHybridWebViewClient
	i32 u0xc70f7058, ; 976 => androidx/core/util/Predicate
	i32 u0xc726531b, ; 977 => androidx/fragment/app/strictmode/FragmentStrictMode
	i32 u0xc73e8ae5, ; 978 => androidx/recyclerview/widget/LinearSnapHelper
	i32 u0xc74fb4e7, ; 979 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i32 u0xc75b6eef, ; 980 => androidx/core/view/ViewStructureCompat
	i32 u0xc78628c1, ; 981 => android/graphics/Insets
	i32 u0xc79709e8, ; 982 => com/onesignal/notifications/internal/common/OSWorkManagerHelper
	i32 u0xc8148a69, ; 983 => android/graphics/DashPathEffect
	i32 u0xc81a4a8b, ; 984 => androidx/browser/customtabs/EngagementSignalsCallback
	i32 u0xc83ffa94, ; 985 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i32 u0xc84f176b, ; 986 => com/onesignal/common/JSONUtils
	i32 u0xc8c8236e, ; 987 => android/graphics/drawable/shapes/Shape
	i32 u0xc8e082ac, ; 988 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i32 u0xc8f71d8d, ; 989 => androidx/core/graphics/Insets
	i32 u0xc9666c22, ; 990 => androidx/core/util/Consumer
	i32 u0xc971f3df, ; 991 => android/text/Editable
	i32 u0xc9d198ec, ; 992 => crc64f9cf19485bf7e9d8/AuthCallback
	i32 u0xc9df47c6, ; 993 => androidx/core/content/pm/PackageInfoCompat
	i32 u0xc9fc6f20, ; 994 => android/view/View$OnFocusChangeListener
	i32 u0xcabc363c, ; 995 => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i32 u0xcae6a6f7, ; 996 => com/onesignal/notifications/INotification$DefaultImpls
	i32 u0xcb2b39d0, ; 997 => android/webkit/WebMessage
	i32 u0xcb379d37, ; 998 => javax/net/ssl/HttpsURLConnection
	i32 u0xcb4acc01, ; 999 => androidx/lifecycle/viewmodel/CreationExtras
	i32 u0xcb50e8b0, ; 1000 => mono/com/onesignal/notifications/INotificationClickListenerImplementor
	i32 u0xcbab6a1c, ; 1001 => android/view/View$OnScrollChangeListener
	i32 u0xcbf0502f, ; 1002 => com/google/android/material/tabs/TabLayout$Tab
	i32 u0xcc0df96f, ; 1003 => java/lang/Number
	i32 u0xcc7ee4cc, ; 1004 => android/content/SharedPreferences
	i32 u0xcd3884d5, ; 1005 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i32 u0xcdfbae9f, ; 1006 => android/view/accessibility/AccessibilityWindowInfo
	i32 u0xce7fd80a, ; 1007 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/HuaweiHomeBadger
	i32 u0xcf2305a9, ; 1008 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/NewHtcHomeBadger
	i32 u0xcf7e6cf6, ; 1009 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i32 u0xcf92bc3a, ; 1010 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i32 u0xd01ded62, ; 1011 => androidx/appcompat/app/AppCompatDialog
	i32 u0xd0681e04, ; 1012 => androidx/biometric/BiometricPrompt$AuthenticationCallback
	i32 u0xd07999b7, ; 1013 => android/graphics/Paint$FontMetricsInt
	i32 u0xd0850756, ; 1014 => crc645d80431ce5f73f11/EndSnapHelper
	i32 u0xd0967088, ; 1015 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i32 u0xd0c6fce3, ; 1016 => mono/android/view/View_OnScrollChangeListenerImplementor
	i32 u0xd0daecfc, ; 1017 => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i32 u0xd176d4f3, ; 1018 => com/onesignal/common/AndroidUtils$SchemaType$Companion
	i32 u0xd191832f, ; 1019 => java/util/function/IntConsumer
	i32 u0xd1cde4e5, ; 1020 => java/net/URLConnection
	i32 u0xd1d1c655, ; 1021 => com/onesignal/inAppMessages/IInAppMessageClickEvent
	i32 u0xd1e48dd6, ; 1022 => androidx/core/view/ViewCompat
	i32 u0xd1f311e6, ; 1023 => com/onesignal/debug/IDebugManager
	i32 u0xd28ff81d, ; 1024 => android/text/style/WrapTogetherSpan
	i32 u0xd2d86a5e, ; 1025 => android/graphics/Paint$Cap
	i32 u0xd2fd5c16, ; 1026 => androidx/browser/customtabs/CustomTabsIntent
	i32 u0xd31e7330, ; 1027 => com/google/android/material/tabs/TabLayoutMediator
	i32 u0xd362931d, ; 1028 => android/text/TextDirectionHeuristic
	i32 u0xd386ad38, ; 1029 => crc64396a3fe5f8138e3f/CustomTabsServiceConnectionImpl
	i32 u0xd3b11951, ; 1030 => crc645d80431ce5f73f11/SimpleViewHolder
	i32 u0xd4128768, ; 1031 => android/util/SizeF
	i32 u0xd43e92b6, ; 1032 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i32 u0xd4d1239f, ; 1033 => java/security/Signature
	i32 u0xd4dd51a8, ; 1034 => androidx/appcompat/view/menu/MenuBuilder
	i32 u0xd4f35a51, ; 1035 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i32 u0xd52920d3, ; 1036 => android/runtime/JavaProxyThrowable
	i32 u0xd59204d6, ; 1037 => com/onesignal/inAppMessages/IInAppMessageClickListener
	i32 u0xd595bdf7, ; 1038 => com/onesignal/ContinueResult
	i32 u0xd5c43ed3, ; 1039 => crc640ec207abc449b2ca/ShellItemRendererBase
	i32 u0xd66fd9dd, ; 1040 => android/widget/AbsListView
	i32 u0xd6a9a839, ; 1041 => com/onesignal/notifications/INotificationClickEvent
	i32 u0xd6b37f87, ; 1042 => crc645d80431ce5f73f11/EmptyViewAdapter
	i32 u0xd70d7c57, ; 1043 => androidx/recyclerview/widget/RecyclerView$State
	i32 u0xd72952f7, ; 1044 => android/os/CancellationSignal
	i32 u0xd7432b3d, ; 1045 => kotlinx/serialization/encoding/CompositeDecoder
	i32 u0xd74ff3a1, ; 1046 => androidx/navigation/fragment/FragmentNavigator$Destination
	i32 u0xd76cff7f, ; 1047 => androidx/appcompat/app/ActionBar$Tab
	i32 u0xd7c5fed1, ; 1048 => java/util/function/ToIntFunction
	i32 u0xd7d31db6, ; 1049 => androidx/appcompat/app/ActionBar$TabListener
	i32 u0xd861fedf, ; 1050 => crc64fddc838597f4fd38/AndroidVoidConsumer
	i32 u0xd89e92c7, ; 1051 => android/graphics/drawable/AnimationDrawable
	i32 u0xd8e726a8, ; 1052 => kotlinx/coroutines/flow/FlowCollector
	i32 u0xd9a7e440, ; 1053 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i32 u0xda3a2e42, ; 1054 => crc64e1fb321c08285b90/ViewRenderer
	i32 u0xda7f484d, ; 1055 => android/view/LayoutInflater
	i32 u0xda867062, ; 1056 => java/lang/String
	i32 u0xda91fa6b, ; 1057 => androidx/recyclerview/widget/RecyclerView$Adapter
	i32 u0xda9e431c, ; 1058 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i32 u0xdab17055, ; 1059 => java/net/InetSocketAddress
	i32 u0xdaf44ffb, ; 1060 => android/view/accessibility/AccessibilityEvent
	i32 u0xdb1ab932, ; 1061 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i32 u0xdb1d5643, ; 1062 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/util/CloseHelper
	i32 u0xdb5c1df3, ; 1063 => androidx/activity/ComponentDialog
	i32 u0xdb8b0f9a, ; 1064 => mono/android/runtime/JavaObject
	i32 u0xdb9674ba, ; 1065 => android/view/ActionProvider
	i32 u0xdbe1e516, ; 1066 => androidx/lifecycle/ViewModel
	i32 u0xdc37ab30, ; 1067 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i32 u0xdc450a54, ; 1068 => mono/com/onesignal/inAppMessages/IInAppMessageClickListenerImplementor
	i32 u0xdc76bd11, ; 1069 => android/text/SpannableStringBuilder
	i32 u0xdc9dd54d, ; 1070 => android/graphics/Paint$Style
	i32 u0xdcab8f7d, ; 1071 => java/lang/Double
	i32 u0xdcd8956d, ; 1072 => kotlin/reflect/KAnnotatedElement
	i32 u0xdd3973f2, ; 1073 => android/text/style/MetricAffectingSpan
	i32 u0xdd7b8a2d, ; 1074 => android/os/Build$VERSION
	i32 u0xddcb4d38, ; 1075 => android/text/NoCopySpan
	i32 u0xdde616ce, ; 1076 => javax/net/SocketFactory
	i32 u0xdde79766, ; 1077 => android/text/method/NumberKeyListener
	i32 u0xde103843, ; 1078 => crc640ec207abc449b2ca/ShellSectionRenderer
	i32 u0xde20a2a0, ; 1079 => java/net/ProtocolException
	i32 u0xdecff86c, ; 1080 => android/webkit/WebChromeClient
	i32 u0xdf0e9c6f, ; 1081 => org/json/JSONArray
	i32 u0xdf443a44, ; 1082 => android/view/Choreographer
	i32 u0xdf8d9963, ; 1083 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadger
	i32 u0xdfb71e99, ; 1084 => android/text/style/TypefaceSpan
	i32 u0xe01bf9a2, ; 1085 => android/graphics/Bitmap
	i32 u0xe0237554, ; 1086 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i32 u0xe03d126e, ; 1087 => androidx/activity/OnBackPressedDispatcher
	i32 u0xe057d7d6, ; 1088 => android/view/Window
	i32 u0xe105a023, ; 1089 => androidx/core/view/WindowInsetsControllerCompat
	i32 u0xe1996344, ; 1090 => androidx/customview/widget/Openable
	i32 u0xe1bfcc2b, ; 1091 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/OPPOHomeBader
	i32 u0xe1f6cebd, ; 1092 => java/security/spec/KeySpec
	i32 u0xe2e42add, ; 1093 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/NovaHomeBadger
	i32 u0xe32a2fba, ; 1094 => android/content/res/TypedArray
	i32 u0xe3e4c8e2, ; 1095 => android/net/Uri
	i32 u0xe414eff2, ; 1096 => android/graphics/drawable/DrawableWrapper
	i32 u0xe42c024c, ; 1097 => crc640ec207abc449b2ca/RecyclerViewContainer
	i32 u0xe42c4bfa, ; 1098 => android/widget/TextView$BufferType
	i32 u0xe51d476f, ; 1099 => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i32 u0xe5221abb, ; 1100 => android/graphics/Path$FillType
	i32 u0xe57e2b32, ; 1101 => androidx/navigation/fragment/NavHostFragment
	i32 u0xe5aa8bbf, ; 1102 => com/onesignal/user/state/IUserStateObserver
	i32 u0xe5cb91a7, ; 1103 => androidx/appcompat/view/ActionMode
	i32 u0xe6087a1c, ; 1104 => androidx/viewpager2/adapter/FragmentViewHolder
	i32 u0xe6870f3e, ; 1105 => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i32 u0xe6cf0c89, ; 1106 => android/view/animation/BaseInterpolator
	i32 u0xe6d2683b, ; 1107 => com/google/android/material/navigation/NavigationBarView
	i32 u0xe6d69f7f, ; 1108 => android/graphics/ColorFilter
	i32 u0xe713ee31, ; 1109 => androidx/biometric/BiometricPrompt$CryptoObject
	i32 u0xe727a76c, ; 1110 => androidx/activity/BackEventCompat
	i32 u0xe76b5314, ; 1111 => java/lang/Class
	i32 u0xe777de45, ; 1112 => org/json/JSONObject
	i32 u0xe7825e60, ; 1113 => android/webkit/WebView
	i32 u0xe78ae646, ; 1114 => android/text/Html
	i32 u0xe7befe90, ; 1115 => com/google/android/material/appbar/MaterialToolbar
	i32 u0xe825eea1, ; 1116 => com/onesignal/common/TimeUtils
	i32 u0xe82f7a1f, ; 1117 => androidx/core/app/SharedElementCallback
	i32 u0xe83ca42e, ; 1118 => android/widget/ImageView
	i32 u0xe87a4841, ; 1119 => android/graphics/Typeface
	i32 u0xe87e252b, ; 1120 => java/io/InputStream
	i32 u0xe888326c, ; 1121 => com/onesignal/common/OneSignalUtils
	i32 u0xe8915163, ; 1122 => android/text/InputFilter
	i32 u0xe8c65307, ; 1123 => com/onesignal/notifications/internal/common/NotificationGenerationJob
	i32 u0xe8d164a8, ; 1124 => android/webkit/ValueCallback
	i32 u0xe8f04dff, ; 1125 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i32 u0xe9334697, ; 1126 => java/security/KeyStore
	i32 u0xe95013a9, ; 1127 => kotlin/coroutines/CoroutineContext
	i32 u0xe9a2c576, ; 1128 => android/view/ContextMenu
	i32 u0xe9b48534, ; 1129 => android/net/NetworkCapabilities
	i32 u0xe9c6b9e0, ; 1130 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i32 u0xe9caaadd, ; 1131 => androidx/fragment/app/Fragment$SavedState
	i32 u0xe9ce42bc, ; 1132 => android/text/method/MetaKeyKeyListener
	i32 u0xe9d56f43, ; 1133 => kotlin/reflect/KVisibility
	i32 u0xe9e19344, ; 1134 => kotlinx/serialization/descriptors/SerialKind
	i32 u0xea05a91d, ; 1135 => android/app/TimePickerDialog$OnTimeSetListener
	i32 u0xea502245, ; 1136 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 u0xea708f4b, ; 1137 => android/graphics/Rect
	i32 u0xeabcef18, ; 1138 => androidx/appcompat/widget/AppCompatCheckBox
	i32 u0xeb026181, ; 1139 => android/graphics/Region
	i32 u0xeb10d94d, ; 1140 => android/content/pm/ShortcutManager
	i32 u0xeb158b93, ; 1141 => crc64338477404e88479c/GenericAnimatorListener
	i32 u0xeb1ee708, ; 1142 => com/onesignal/user/subscriptions/ISubscription
	i32 u0xeb5d161a, ; 1143 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i32 u0xeb8ea4ba, ; 1144 => androidx/collection/SparseArrayCompat
	i32 u0xec9bfbc3, ; 1145 => androidx/core/widget/TextViewCompat
	i32 u0xeca128e8, ; 1146 => mono/android/runtime/InputStreamAdapter
	i32 u0xecc6b393, ; 1147 => crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver
	i32 u0xecc755a5, ; 1148 => android/graphics/BitmapShader
	i32 u0xecedb4bd, ; 1149 => javax/net/ssl/SSLSocketFactory
	i32 u0xeceebae3, ; 1150 => com/onesignal/notifications/IDisplayableMutableNotification
	i32 u0xed596b7a, ; 1151 => com/onesignal/notifications/internal/lifecycle/INotificationLifecycleService
	i32 u0xed80a856, ; 1152 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i32 u0xee05559f, ; 1153 => android/content/ContextWrapper
	i32 u0xee250f69, ; 1154 => android/graphics/Canvas
	i32 u0xef0b5e8e, ; 1155 => kotlinx/serialization/encoding/CompositeDecoder$Companion
	i32 u0xef13ffcb, ; 1156 => androidx/biometric/BiometricPrompt$PromptInfo$Builder
	i32 u0xef1f5801, ; 1157 => com/google/android/material/imageview/ShapeableImageView
	i32 u0xef769ed3, ; 1158 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i32 u0xefa10a0f, ; 1159 => java/lang/Error
	i32 u0xefa62f24, ; 1160 => android/graphics/drawable/DrawableContainer
	i32 u0xefd00308, ; 1161 => android/graphics/drawable/StateListDrawable
	i32 u0xefe9a9ab, ; 1162 => android/webkit/MimeTypeMap
	i32 u0xeff867cf, ; 1163 => androidx/core/view/PointerIconCompat
	i32 u0xf02ee875, ; 1164 => android/widget/FilterQueryProvider
	i32 u0xf03f31cc, ; 1165 => android/app/Dialog
	i32 u0xf043ce43, ; 1166 => android/view/animation/Interpolator
	i32 u0xf06fcd2c, ; 1167 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/DefaultBadger
	i32 u0xf079578a, ; 1168 => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i32 u0xf08cdcbf, ; 1169 => android/view/View$OnDragListener
	i32 u0xf0afa21d, ; 1170 => android/text/style/UnderlineSpan
	i32 u0xf0d0d93a, ; 1171 => android/graphics/drawable/RippleDrawable
	i32 u0xf0d90fd6, ; 1172 => androidx/biometric/BiometricManager
	i32 u0xf0f59ec7, ; 1173 => androidx/recyclerview/widget/GridLayoutManager
	i32 u0xf11a54ed, ; 1174 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/VivoHomeBadger
	i32 u0xf124220b, ; 1175 => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i32 u0xf18125ef, ; 1176 => android/content/Context
	i32 u0xf1cbf0e8, ; 1177 => java/lang/NoClassDefFoundError
	i32 u0xf1e6d542, ; 1178 => android/view/GestureDetector
	i32 u0xf1f2b06d, ; 1179 => com/onesignal/common/NetworkUtils$ResponseStatusType
	i32 u0xf2047d70, ; 1180 => android/view/WindowInsetsAnimation
	i32 u0xf22ceb61, ; 1181 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i32 u0xf25e2260, ; 1182 => android/util/SparseArray
	i32 u0xf2652bfd, ; 1183 => com/google/android/material/shape/ShapePath
	i32 u0xf2a6cde9, ; 1184 => java/lang/ref/Reference
	i32 u0xf358152c, ; 1185 => androidx/fragment/app/FragmentHostCallback
	i32 u0xf39a9cec, ; 1186 => kotlinx/serialization/encoding/Decoder
	i32 u0xf3a294c2, ; 1187 => mono/android/view/View_OnTouchListenerImplementor
	i32 u0xf3aa8320, ; 1188 => java/io/Reader
	i32 u0xf4107582, ; 1189 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i32 u0xf4274bcc, ; 1190 => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i32 u0xf44428b7, ; 1191 => mono/android/view/View_OnClickListenerImplementor
	i32 u0xf452419a, ; 1192 => androidx/core/view/DisplayCutoutCompat
	i32 u0xf466d32d, ; 1193 => com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/LGHomeBadger
	i32 u0xf475d75a, ; 1194 => java/io/Writer
	i32 u0xf47dc196, ; 1195 => androidx/viewpager/widget/PagerAdapter
	i32 u0xf49449ce, ; 1196 => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i32 u0xf4a27a51, ; 1197 => android/text/TextUtils$TruncateAt
	i32 u0xf52720c7, ; 1198 => androidx/loader/content/Loader$OnLoadCanceledListener
	i32 u0xf547c14c, ; 1199 => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i32 u0xf55ec28f, ; 1200 => androidx/lifecycle/LifecycleObserver
	i32 u0xf57e1eb2, ; 1201 => androidx/navigation/ui/AppBarConfiguration$Builder
	i32 u0xf58061a4, ; 1202 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i32 u0xf58117fa, ; 1203 => android/os/Looper
	i32 u0xf60116c5, ; 1204 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i32 u0xf60f9453, ; 1205 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i32 u0xf6203711, ; 1206 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i32 u0xf639ab34, ; 1207 => java/security/KeyFactory
	i32 u0xf6740dbf, ; 1208 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i32 u0xf69aa6ed, ; 1209 => android/content/pm/ShortcutInfo$Builder
	i32 u0xf6b37d7c, ; 1210 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i32 u0xf6e67f48, ; 1211 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i32 u0xf700684c, ; 1212 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i32 u0xf74645b8, ; 1213 => androidx/core/app/ComponentActivity
	i32 u0xf74684cd, ; 1214 => javax/net/ssl/TrustManagerFactory
	i32 u0xf7d32035, ; 1215 => java/io/IOException
	i32 u0xf8073d4a, ; 1216 => java/lang/Void
	i32 u0xf81453c5, ; 1217 => com/onesignal/debug/LogLevel$Companion
	i32 u0xf84f3f3a, ; 1218 => crc64e53d2f592022988e/ConnectivityBroadcastReceiver
	i32 u0xf852a5d2, ; 1219 => android/text/TextWatcher
	i32 u0xf86409d3, ; 1220 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i32 u0xf92c79b2, ; 1221 => androidx/appcompat/app/AlertDialog
	i32 u0xf9685ba7, ; 1222 => crc640ec207abc449b2ca/ShellContentFragment
	i32 u0xf98147a7, ; 1223 => crc64fddc838597f4fd38/AndroidBoolConsumer
	i32 u0xf9dfcc6c, ; 1224 => androidx/core/graphics/ColorUtils
	i32 u0xfa10306a, ; 1225 => android/graphics/Region$Op
	i32 u0xfa586deb, ; 1226 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i32 u0xfa8c5be5, ; 1227 => android/graphics/Bitmap$CompressFormat
	i32 u0xfae621e1, ; 1228 => com/google/android/material/bottomnavigation/BottomNavigationView
	i32 u0xfaf49b49, ; 1229 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i32 u0xfb076c6c, ; 1230 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i32 u0xfb88098a, ; 1231 => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i32 u0xfbbdc5a1, ; 1232 => android/text/style/StrikethroughSpan
	i32 u0xfbca2191, ; 1233 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i32 u0xfbffcdb4, ; 1234 => com/onesignal/common/OneSignalWrapper
	i32 u0xfc06bc93, ; 1235 => com/onesignal/notifications/INotification
	i32 u0xfc49ff4f, ; 1236 => java/util/HashSet
	i32 u0xfc81a960, ; 1237 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i32 u0xfc874966, ; 1238 => android/os/Parcelable
	i32 u0xfc916214, ; 1239 => android/view/MenuItem$OnMenuItemClickListener
	i32 u0xfca7c9b3, ; 1240 => androidx/browser/customtabs/CustomTabsSession
	i32 u0xfd3fb630, ; 1241 => android/view/Menu
	i32 u0xfd57cb03, ; 1242 => android/text/style/BackgroundColorSpan
	i32 u0xfdc9e96c, ; 1243 => crc6452ffdc5b34af3a0f/MauiTextView
	i32 u0xfdf8e515, ; 1244 => java/util/function/ToDoubleFunction
	i32 u0xfe67d036, ; 1245 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i32 u0xfe6ffb84, ; 1246 => kotlin/reflect/KClass
	i32 u0xfe943b89, ; 1247 => android/graphics/PorterDuff
	i32 u0xfeae1439, ; 1248 => androidx/lifecycle/ViewModelProvider$Factory
	i32 u0xfec117ab, ; 1249 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i32 u0xfed8b694, ; 1250 => crc64338477404e88479c/GenericGlobalLayoutListener
	i32 u0xfef5d29f, ; 1251 => java/io/Closeable
	i32 u0xfeff58ae, ; 1252 => com/google/android/gms/auth/api/signin/GoogleSignInAccount
	i32 u0xff0b9725, ; 1253 => android/widget/CompoundButton$OnCheckedChangeListener
	i32 u0xff224fc2, ; 1254 => kotlin/reflect/KTypeParameter
	i32 u0xff409a35, ; 1255 => com/microsoft/maui/MauiViewGroup
	i32 u0xff6b77f6, ; 1256 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i32 u0xff705398, ; 1257 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback
	i32 u0xffc00b84, ; 1258 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i32 u0xffde9dfa ; 1259 => android/accounts/Account
], align 4

@module0_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 315; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 769; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 124; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 825; uint32_t java_map_index
	} ; 5
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 769; uint32_t java_map_index
	} ; 0
], align 4

@module1_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 553; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 425; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 135; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 956; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1050; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1223; uint32_t java_map_index
	} ; 6
], align 4

@module2_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 880; uint32_t java_map_index
	} ; 1
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 880; uint32_t java_map_index
	} ; 0
], align 4

@module3_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 685; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 180; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 104; uint32_t java_map_index
	} ; 2
], align 4

@module4_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1173; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1058; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 733; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 291; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 947; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 857; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 978; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 136; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 695; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 712; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1057; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 786; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 555; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1231; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 412; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 850; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 313; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 141; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 271; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 949; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 415; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 974; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 264; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 757; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 391; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 613; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 184; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 383; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 879; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1043; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 195; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 149; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 122; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 843; uint32_t java_map_index
	} ; 40
], align 4

@module4_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1058; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 733; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 947; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 136; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1057; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 412; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1231; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 313; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 271; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 141; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 974; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 383; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 195; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 149; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 843; uint32_t java_map_index
	} ; 20
], align 4

@module5_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 502; uint32_t java_map_index
	} ; 0
], align 4

@module6_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 398; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1046; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1101; uint32_t java_map_index
	} ; 2
], align 4

@module7_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 328; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1086; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 925; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 293; uint32_t java_map_index
	} ; 3
], align 4

@module7_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1086; uint32_t java_map_index
	} ; 0
], align 4

@module8_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	} ; 0
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	} ; 0
], align 4

@module9_managed_to_java = internal dso_local constant [55 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 237; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1221; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 583; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 446; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 283; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 551; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 881; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1005; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 185; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1049; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 903; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 277; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 191; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 780; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 1011; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 204; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 564; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 402; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 936; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 468; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 340; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 832; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1138; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 763; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 674; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 596; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 472; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 931; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 1211; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 665; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 132; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 214; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 541; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 630; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 824; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 920; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 808; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1103; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1034; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 922; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 444; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 399; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 421; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 921; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	} ; 54
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 185; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1049; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 277; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 780; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 936; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 541; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 630; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 824; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1103; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 922; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 444; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 399; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 421; uint32_t java_map_index
	} ; 18
], align 4

@module10_managed_to_java = internal dso_local constant [69 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1038; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 499; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 558; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 696; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 818; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 682; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1142; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 658; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 706; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 1102; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 467; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 874; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 749; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 504; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 127; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1150; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 890; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 893; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1235; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 996; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1041; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 176; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 359; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 644; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 754; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 717; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 111; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1021; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1037; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 265; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 624; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 602; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 439; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 705; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 378; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1023; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 853; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 1217; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 475; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 1018; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 343; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 235; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 112; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 794; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 158; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 986; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 905; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1179; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1121; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1234; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 346; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1116; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 777; uint32_t java_map_index
	} ; 68
], align 4

@module10_managed_to_java_duplicates = internal dso_local constant [35 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 696; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 818; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 682; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1142; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 1102; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 749; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 127; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1150; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 890; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 893; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1235; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1041; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 176; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 359; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 754; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 717; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 111; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1021; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1037; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 265; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 602; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 439; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 1023; uint32_t java_map_index
	} ; 34
], align 4

@module11_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1252; uint32_t java_map_index
	} ; 0
], align 4

@module12_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 174; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1029; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 894; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 756; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 116; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1026; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 709; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 323; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1240; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 535; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 984; uint32_t java_map_index
	} ; 11
], align 4

@module12_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 323; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 984; uint32_t java_map_index
	} ; 1
], align 4

@module13_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1201; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 259; uint32_t java_map_index
	} ; 3
], align 4

@module13_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	} ; 0
], align 4

@module14_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1061; uint32_t java_map_index
	} ; 0
], align 4

@module15_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 242; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 527; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 681; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1155; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1045; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 734; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1186; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 352; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1134; uint32_t java_map_index
	} ; 9
], align 4

@module15_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 242; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 527; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 681; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1045; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 734; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1186; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 352; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1134; uint32_t java_map_index
	} ; 8
], align 4

@module16_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 836; uint32_t java_map_index
	} ; 0
], align 4

@module17_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1172; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1012; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1109; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 189; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1156; uint32_t java_map_index
	} ; 6
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1012; uint32_t java_map_index
	} ; 0
], align 4

@module18_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 505; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 480; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 545; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 579; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 971; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 775; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 648; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 500; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 640; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 620; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 934; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 471; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 945; uint32_t java_map_index
	} ; 16
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 505; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 480; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 934; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 945; uint32_t java_map_index
	} ; 5
], align 4

@module19_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 370; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 655; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 898; uint32_t java_map_index
	} ; 2
], align 4

@module19_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 655; uint32_t java_map_index
	} ; 0
], align 4

@module20_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 961; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 944; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 327; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1218; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 154; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1147; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 361; uint32_t java_map_index
	} ; 8
], align 4

@module21_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 992; uint32_t java_map_index
	} ; 0
], align 4

@module22_managed_to_java = internal dso_local constant [13 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1110; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 170; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1063; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 962; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1087; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1067; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1220; uint32_t java_map_index
	} ; 12
], align 4

@module22_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	} ; 5
], align 4

@module23_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 198; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1198; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 635; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1210; uint32_t java_map_index
	} ; 4
], align 4

@module23_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1198; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1210; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 635; uint32_t java_map_index
	} ; 3
], align 4

@module24_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 966; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 952; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1052; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	} ; 4
], align 4

@module24_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 966; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 952; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1052; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	} ; 4
], align 4

@module25_managed_to_java = internal dso_local constant [69 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 990; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 976; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 407; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 395; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1224; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 989; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 785; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 284; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 256; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 993; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 663; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1213; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 784; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1117; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 201; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 367; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 783; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 210; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 241; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1145; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 434; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 842; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 664; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 411; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 257; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 875; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1192; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 205; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 314; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1032; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 533; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 752; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 673; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1163; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 967; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 1022; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 268; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 980; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 96; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 895; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 872; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 742; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 447; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 1089; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 1233; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 364; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 262; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 1249; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 970; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 787; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 474; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 911; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 607; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1256; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 344; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1189; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 183; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 215; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 449; uint32_t java_map_index
	} ; 68
], align 4

@module25_managed_to_java_duplicates = internal dso_local constant [22 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 990; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 976; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 201; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1117; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 664; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 842; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 205; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 314; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1032; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 533; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 673; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1189; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 183; uint32_t java_map_index
	} ; 21
], align 4

@module26_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 858; uint32_t java_map_index
	} ; 0
], align 4

@module27_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 287; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 281; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	} ; 2
], align 4

@module27_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 287; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 281; uint32_t java_map_index
	} ; 1
], align 4

@module28_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 686; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 568; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 151; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1248; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 999; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 461; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 807; uint32_t java_map_index
	} ; 8
], align 4

@module28_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 686; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1248; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 461; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 999; uint32_t java_map_index
	} ; 4
], align 4

@module29_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 924; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 799; uint32_t java_map_index
	} ; 1
], align 4

@module30_managed_to_java = internal dso_local constant [40 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 923; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 826; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 534; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 868; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1151; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 362; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 823; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1123; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 540; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 982; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 946; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1083; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 959; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1062; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 126; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 318; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1167; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 702; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1007; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1193; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1008; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1093; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1091; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 202; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1174; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 159; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 216; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 642; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 822; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 690; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 366; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 260; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 817; uint32_t java_map_index
	} ; 39
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 534; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 868; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1151; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 362; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 946; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 366; uint32_t java_map_index
	} ; 6
], align 4

@module31_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 650; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 572; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 654; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1200; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	} ; 4
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1200; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 650; uint32_t java_map_index
	} ; 2
], align 4

@module32_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 720; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 523; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	} ; 2
], align 4

@module33_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	} ; 1
], align 4

@module33_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	} ; 0
], align 4

@module34_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1195; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 305; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 92; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1202; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 612; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	} ; 6
], align 4

@module34_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1195; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1202; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	} ; 3
], align 4

@module35_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1144; uint32_t java_map_index
	} ; 0
], align 4

@module36_managed_to_java = internal dso_local constant [529 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 656; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 735; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 1081; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 1112; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 438; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 1076; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 998; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 406; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 968; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 251; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 316; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 390; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 1149; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1214; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 488; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 957; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 953; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 629; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 737; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 478; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 1124; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 806; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 1162; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 1080; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 610; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 997; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 906; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 744; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 1113; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 795; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 234; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 145; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 454; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 451; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 239; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 252; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 660; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 531; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 614; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 296; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 258; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 1040; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 591; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000102, ; uint32_t type_token_id
		i32 1204; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000103, ; uint32_t type_token_id
		i32 326; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000105, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x02000108, ; uint32_t type_token_id
		i32 465; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 801; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 1098; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x02000110, ; uint32_t type_token_id
		i32 319; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x02000113, ; uint32_t type_token_id
		i32 719; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x02000117, ; uint32_t type_token_id
		i32 304; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x02000118, ; uint32_t type_token_id
		i32 627; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x0200011d, ; uint32_t type_token_id
		i32 448; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 495; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 501; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 1253; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 651; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 498; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 292; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 377; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 514; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 598; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 280; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 798; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x02000133, ; uint32_t type_token_id
		i32 389; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x02000135, ; uint32_t type_token_id
		i32 1164; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x02000137, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x02000139, ; uint32_t type_token_id
		i32 789; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 1118; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 767; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 161; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x0200013e, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x02000140, ; uint32_t type_token_id
		i32 554; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000141, ; uint32_t type_token_id
		i32 426; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000142, ; uint32_t type_token_id
		i32 861; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000144, ; uint32_t type_token_id
		i32 432; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000145, ; uint32_t type_token_id
		i32 334; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000146, ; uint32_t type_token_id
		i32 245; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000148, ; uint32_t type_token_id
		i32 703; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000149, ; uint32_t type_token_id
		i32 940; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x0200014a, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 704; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 603; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 804; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000151, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000152, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000154, ; uint32_t type_token_id
		i32 901; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1031; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 1182; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 118; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 715; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 552; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 1114; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 991; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 300; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x02000165, ; uint32_t type_token_id
		i32 1122; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 1075; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x0200016d, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 1028; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x02000172, ; uint32_t type_token_id
		i32 1219; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x02000175, ; uint32_t type_token_id
		i32 520; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 322; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x02000178, ; uint32_t type_token_id
		i32 886; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x0200017a, ; uint32_t type_token_id
		i32 1069; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x0200017f, ; uint32_t type_token_id
		i32 745; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x02000180, ; uint32_t type_token_id
		i32 331; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x02000181, ; uint32_t type_token_id
		i32 275; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x02000182, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x02000183, ; uint32_t type_token_id
		i32 1197; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x02000184, ; uint32_t type_token_id
		i32 1242; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x02000185, ; uint32_t type_token_id
		i32 605; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x02000186, ; uint32_t type_token_id
		i32 102; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 567; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x0200018d, ; uint32_t type_token_id
		i32 849; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 1024; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x02000191, ; uint32_t type_token_id
		i32 1073; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x02000193, ; uint32_t type_token_id
		i32 1232; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000194, ; uint32_t type_token_id
		i32 351; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x02000195, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x02000196, ; uint32_t type_token_id
		i32 218; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x02000197, ; uint32_t type_token_id
		i32 1084; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x02000198, ; uint32_t type_token_id
		i32 1170; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x02000199, ; uint32_t type_token_id
		i32 285; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 870; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 192; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x0200019e, ; uint32_t type_token_id
		i32 969; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x020001a0, ; uint32_t type_token_id
		i32 1132; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x020001a2, ; uint32_t type_token_id
		i32 1077; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x020001a4, ; uint32_t type_token_id
		i32 827; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 261; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x020001a7, ; uint32_t type_token_id
		i32 904; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x020001a8, ; uint32_t type_token_id
		i32 157; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 470; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 408; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 561; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020001ac, ; uint32_t type_token_id
		i32 524; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 386; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020001ae, ; uint32_t type_token_id
		i32 829; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020001af, ; uint32_t type_token_id
		i32 1074; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020001b1, ; uint32_t type_token_id
		i32 173; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020001b2, ; uint32_t type_token_id
		i32 1044; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020001b3, ; uint32_t type_token_id
		i32 625; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020001b4, ; uint32_t type_token_id
		i32 230; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020001b6, ; uint32_t type_token_id
		i32 927; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020001b8, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020001ba, ; uint32_t type_token_id
		i32 606; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020001bc, ; uint32_t type_token_id
		i32 1238; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020001be, ; uint32_t type_token_id
		i32 942; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020001bf, ; uint32_t type_token_id
		i32 1203; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x020001c0, ; uint32_t type_token_id
		i32 150; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 238; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 369; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x020001c5, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 770; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 353; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x020001ca, ; uint32_t type_token_id
		i32 919; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 310; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 233; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 637; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x020001d6, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 1259; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 457; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x020001da, ; uint32_t type_token_id
		i32 484; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x020001db, ; uint32_t type_token_id
		i32 910; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 190; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 812; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x020001de, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 494; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x020001e3, ; uint32_t type_token_id
		i32 538; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x020001e5, ; uint32_t type_token_id
		i32 1191; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x020001e6, ; uint32_t type_token_id
		i32 1169; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x020001e8, ; uint32_t type_token_id
		i32 994; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x020001eb, ; uint32_t type_token_id
		i32 321; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 441; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x020001ee, ; uint32_t type_token_id
		i32 803; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x020001f1, ; uint32_t type_token_id
		i32 838; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x020001f2, ; uint32_t type_token_id
		i32 710; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x020001f5, ; uint32_t type_token_id
		i32 958; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x020001f6, ; uint32_t type_token_id
		i32 1001; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 1016; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x020001fa, ; uint32_t type_token_id
		i32 487; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 1187; uint32_t java_map_index
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 u0x0200020f, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 u0x02000210, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 u0x02000211, ; uint32_t type_token_id
		i32 800; uint32_t java_map_index
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 u0x02000212, ; uint32_t type_token_id
		i32 171; uint32_t java_map_index
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 u0x02000213, ; uint32_t type_token_id
		i32 1237; uint32_t java_map_index
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 u0x02000215, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 u0x02000216, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 u0x02000218, ; uint32_t type_token_id
		i32 844; uint32_t java_map_index
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 u0x02000219, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 u0x0200021d, ; uint32_t type_token_id
		i32 1065; uint32_t java_map_index
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 u0x02000220, ; uint32_t type_token_id
		i32 1082; uint32_t java_map_index
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 u0x02000221, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 u0x02000222, ; uint32_t type_token_id
		i32 599; uint32_t java_map_index
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 u0x02000224, ; uint32_t type_token_id
		i32 469; uint32_t java_map_index
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 u0x02000226, ; uint32_t type_token_id
		i32 833; uint32_t java_map_index
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 u0x0200022a, ; uint32_t type_token_id
		i32 1178; uint32_t java_map_index
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 u0x0200022b, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 u0x0200022d, ; uint32_t type_token_id
		i32 196; uint32_t java_map_index
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 u0x02000230, ; uint32_t type_token_id
		i32 751; uint32_t java_map_index
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 u0x02000232, ; uint32_t type_token_id
		i32 1128; uint32_t java_map_index
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 u0x02000234, ; uint32_t type_token_id
		i32 1241; uint32_t java_map_index
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 u0x02000237, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 u0x02000239, ; uint32_t type_token_id
		i32 1239; uint32_t java_map_index
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 u0x0200023b, ; uint32_t type_token_id
		i32 960; uint32_t java_map_index
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 u0x0200023f, ; uint32_t type_token_id
		i32 854; uint32_t java_map_index
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 u0x02000241, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 u0x02000243, ; uint32_t type_token_id
		i32 298; uint32_t java_map_index
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 u0x02000245, ; uint32_t type_token_id
		i32 419; uint32_t java_map_index
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 u0x02000247, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 u0x02000249, ; uint32_t type_token_id
		i32 848; uint32_t java_map_index
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 u0x0200024b, ; uint32_t type_token_id
		i32 731; uint32_t java_map_index
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 u0x0200024d, ; uint32_t type_token_id
		i32 862; uint32_t java_map_index
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 u0x0200024e, ; uint32_t type_token_id
		i32 764; uint32_t java_map_index
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 u0x02000251, ; uint32_t type_token_id
		i32 943; uint32_t java_map_index
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 u0x02000253, ; uint32_t type_token_id
		i32 941; uint32_t java_map_index
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 u0x02000254, ; uint32_t type_token_id
		i32 796; uint32_t java_map_index
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 u0x0200025c, ; uint32_t type_token_id
		i32 510; uint32_t java_map_index
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 u0x02000261, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 u0x02000264, ; uint32_t type_token_id
		i32 916; uint32_t java_map_index
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 u0x02000265, ; uint32_t type_token_id
		i32 1230; uint32_t java_map_index
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 u0x02000267, ; uint32_t type_token_id
		i32 995; uint32_t java_map_index
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 u0x02000269, ; uint32_t type_token_id
		i32 557; uint32_t java_map_index
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 u0x0200026c, ; uint32_t type_token_id
		i32 774; uint32_t java_map_index
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 u0x02000270, ; uint32_t type_token_id
		i32 556; uint32_t java_map_index
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 u0x02000271, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 u0x02000272, ; uint32_t type_token_id
		i32 105; uint32_t java_map_index
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 u0x02000273, ; uint32_t type_token_id
		i32 146; uint32_t java_map_index
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 u0x02000274, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 u0x02000278, ; uint32_t type_token_id
		i32 797; uint32_t java_map_index
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 u0x0200027d, ; uint32_t type_token_id
		i32 964; uint32_t java_map_index
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 u0x0200027f, ; uint32_t type_token_id
		i32 708; uint32_t java_map_index
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 u0x02000282, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 u0x02000283, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 u0x02000284, ; uint32_t type_token_id
		i32 1180; uint32_t java_map_index
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 u0x02000285, ; uint32_t type_token_id
		i32 840; uint32_t java_map_index
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 u0x02000287, ; uint32_t type_token_id
		i32 294; uint32_t java_map_index
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 u0x02000288, ; uint32_t type_token_id
		i32 694; uint32_t java_map_index
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 u0x0200028a, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 615; uint32_t java_map_index
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 u0x0200028c, ; uint32_t type_token_id
		i32 508; uint32_t java_map_index
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 u0x02000291, ; uint32_t type_token_id
		i32 865; uint32_t java_map_index
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 u0x02000296, ; uint32_t type_token_id
		i32 645; uint32_t java_map_index
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 u0x02000297, ; uint32_t type_token_id
		i32 435; uint32_t java_map_index
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 u0x02000298, ; uint32_t type_token_id
		i32 1106; uint32_t java_map_index
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 u0x0200029a, ; uint32_t type_token_id
		i32 891; uint32_t java_map_index
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 u0x0200029b, ; uint32_t type_token_id
		i32 1166; uint32_t java_map_index
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 u0x0200029d, ; uint32_t type_token_id
		i32 182; uint32_t java_map_index
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 u0x0200029e, ; uint32_t type_token_id
		i32 929; uint32_t java_map_index
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 u0x020002a2, ; uint32_t type_token_id
		i32 1060; uint32_t java_map_index
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 491; uint32_t java_map_index
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 u0x020002a4, ; uint32_t type_token_id
		i32 678; uint32_t java_map_index
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 u0x020002a5, ; uint32_t type_token_id
		i32 341; uint32_t java_map_index
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 u0x020002a6, ; uint32_t type_token_id
		i32 597; uint32_t java_map_index
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 1006; uint32_t java_map_index
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 u0x020002c0, ; uint32_t type_token_id
		i32 1146; uint32_t java_map_index
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 u0x020002c3, ; uint32_t type_token_id
		i32 867; uint32_t java_map_index
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 u0x020002c5, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 u0x020002c7, ; uint32_t type_token_id
		i32 437; uint32_t java_map_index
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 u0x020002d0, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 1064; uint32_t java_map_index
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 u0x020002d3, ; uint32_t type_token_id
		i32 1036; uint32_t java_map_index
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 1236; uint32_t java_map_index
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 u0x020002e0, ; uint32_t type_token_id
		i32 153; uint32_t java_map_index
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 128; uint32_t java_map_index
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 698; uint32_t java_map_index
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 u0x020002ee, ; uint32_t type_token_id
		i32 347; uint32_t java_map_index
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 u0x020002ef, ; uint32_t type_token_id
		i32 1129; uint32_t java_map_index
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 u0x020002f0, ; uint32_t type_token_id
		i32 350; uint32_t java_map_index
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 u0x020002f1, ; uint32_t type_token_id
		i32 1095; uint32_t java_map_index
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 1085; uint32_t java_map_index
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 1227; uint32_t java_map_index
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 u0x020002f5, ; uint32_t type_token_id
		i32 249; uint32_t java_map_index
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 u0x020002f7, ; uint32_t type_token_id
		i32 1154; uint32_t java_map_index
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 u0x020002fa, ; uint32_t type_token_id
		i32 266; uint32_t java_map_index
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 u0x020002fb, ; uint32_t type_token_id
		i32 1148; uint32_t java_map_index
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 u0x020002fc, ; uint32_t type_token_id
		i32 852; uint32_t java_map_index
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 u0x020002fd, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 u0x020002fe, ; uint32_t type_token_id
		i32 955; uint32_t java_map_index
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 1108; uint32_t java_map_index
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 u0x02000300, ; uint32_t type_token_id
		i32 289; uint32_t java_map_index
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 u0x02000301, ; uint32_t type_token_id
		i32 983; uint32_t java_map_index
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 u0x02000302, ; uint32_t type_token_id
		i32 981; uint32_t java_map_index
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 u0x02000303, ; uint32_t type_token_id
		i32 460; uint32_t java_map_index
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 u0x02000304, ; uint32_t type_token_id
		i32 935; uint32_t java_map_index
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 u0x02000305, ; uint32_t type_token_id
		i32 482; uint32_t java_map_index
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 u0x02000306, ; uint32_t type_token_id
		i32 396; uint32_t java_map_index
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 u0x02000307, ; uint32_t type_token_id
		i32 1025; uint32_t java_map_index
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 u0x02000308, ; uint32_t type_token_id
		i32 652; uint32_t java_map_index
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 u0x02000309, ; uint32_t type_token_id
		i32 1013; uint32_t java_map_index
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 u0x0200030a, ; uint32_t type_token_id
		i32 217; uint32_t java_map_index
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 u0x0200030b, ; uint32_t type_token_id
		i32 1070; uint32_t java_map_index
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 628; uint32_t java_map_index
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 1100; uint32_t java_map_index
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 u0x02000310, ; uint32_t type_token_id
		i32 683; uint32_t java_map_index
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 u0x02000311, ; uint32_t type_token_id
		i32 726; uint32_t java_map_index
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 u0x02000312, ; uint32_t type_token_id
		i32 528; uint32_t java_map_index
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 u0x02000313, ; uint32_t type_token_id
		i32 282; uint32_t java_map_index
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 u0x02000314, ; uint32_t type_token_id
		i32 1247; uint32_t java_map_index
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 u0x02000315, ; uint32_t type_token_id
		i32 404; uint32_t java_map_index
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 u0x02000316, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 u0x02000317, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 u0x02000318, ; uint32_t type_token_id
		i32 1137; uint32_t java_map_index
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 u0x02000319, ; uint32_t type_token_id
		i32 418; uint32_t java_map_index
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 u0x0200031a, ; uint32_t type_token_id
		i32 1139; uint32_t java_map_index
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 1225; uint32_t java_map_index
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 714; uint32_t java_map_index
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 u0x0200031d, ; uint32_t type_token_id
		i32 965; uint32_t java_map_index
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 1119; uint32_t java_map_index
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 u0x02000320, ; uint32_t type_token_id
		i32 355; uint32_t java_map_index
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 u0x02000321, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 u0x02000322, ; uint32_t type_token_id
		i32 559; uint32_t java_map_index
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 u0x02000324, ; uint32_t type_token_id
		i32 1160; uint32_t java_map_index
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 u0x02000325, ; uint32_t type_token_id
		i32 565; uint32_t java_map_index
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 u0x02000326, ; uint32_t type_token_id
		i32 821; uint32_t java_map_index
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 u0x02000327, ; uint32_t type_token_id
		i32 1051; uint32_t java_map_index
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 u0x02000328, ; uint32_t type_token_id
		i32 155; uint32_t java_map_index
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 u0x0200032a, ; uint32_t type_token_id
		i32 1096; uint32_t java_map_index
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 211; uint32_t java_map_index
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 u0x0200032f, ; uint32_t type_token_id
		i32 440; uint32_t java_map_index
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 u0x02000331, ; uint32_t type_token_id
		i32 761; uint32_t java_map_index
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 u0x02000332, ; uint32_t type_token_id
		i32 225; uint32_t java_map_index
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 u0x02000333, ; uint32_t type_token_id
		i32 1171; uint32_t java_map_index
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 544; uint32_t java_map_index
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 u0x02000335, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 u0x02000338, ; uint32_t type_token_id
		i32 1161; uint32_t java_map_index
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 u0x02000339, ; uint32_t type_token_id
		i32 303; uint32_t java_map_index
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 u0x0200033a, ; uint32_t type_token_id
		i32 521; uint32_t java_map_index
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 u0x0200033b, ; uint32_t type_token_id
		i32 987; uint32_t java_map_index
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 u0x0200033f, ; uint32_t type_token_id
		i32 458; uint32_t java_map_index
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 u0x02000340, ; uint32_t type_token_id
		i32 634; uint32_t java_map_index
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 u0x02000341, ; uint32_t type_token_id
		i32 1176; uint32_t java_map_index
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 u0x02000342, ; uint32_t type_token_id
		i32 593; uint32_t java_map_index
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 u0x02000344, ; uint32_t type_token_id
		i32 577; uint32_t java_map_index
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 u0x02000346, ; uint32_t type_token_id
		i32 525; uint32_t java_map_index
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 u0x02000347, ; uint32_t type_token_id
		i32 511; uint32_t java_map_index
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 u0x02000348, ; uint32_t type_token_id
		i32 939; uint32_t java_map_index
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 u0x02000349, ; uint32_t type_token_id
		i32 410; uint32_t java_map_index
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 253; uint32_t java_map_index
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 1153; uint32_t java_map_index
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 u0x02000350, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 u0x02000352, ; uint32_t type_token_id
		i32 430; uint32_t java_map_index
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 u0x02000353, ; uint32_t type_token_id
		i32 851; uint32_t java_map_index
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 u0x02000356, ; uint32_t type_token_id
		i32 1136; uint32_t java_map_index
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 u0x02000357, ; uint32_t type_token_id
		i32 160; uint32_t java_map_index
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 u0x02000359, ; uint32_t type_token_id
		i32 576; uint32_t java_map_index
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 u0x0200035a, ; uint32_t type_token_id
		i32 772; uint32_t java_map_index
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 562; uint32_t java_map_index
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 u0x02000361, ; uint32_t type_token_id
		i32 657; uint32_t java_map_index
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 u0x02000362, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 u0x02000364, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 u0x02000365, ; uint32_t type_token_id
		i32 621; uint32_t java_map_index
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 u0x02000366, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 u0x02000368, ; uint32_t type_token_id
		i32 750; uint32_t java_map_index
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 u0x0200036a, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 u0x0200036e, ; uint32_t type_token_id
		i32 209; uint32_t java_map_index
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 u0x0200036f, ; uint32_t type_token_id
		i32 247; uint32_t java_map_index
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 u0x02000370, ; uint32_t type_token_id
		i32 530; uint32_t java_map_index
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 u0x02000371, ; uint32_t type_token_id
		i32 631; uint32_t java_map_index
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 u0x02000373, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 u0x02000374, ; uint32_t type_token_id
		i32 718; uint32_t java_map_index
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 u0x02000375, ; uint32_t type_token_id
		i32 1094; uint32_t java_map_index
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 u0x02000377, ; uint32_t type_token_id
		i32 779; uint32_t java_map_index
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 u0x02000378, ; uint32_t type_token_id
		i32 697; uint32_t java_map_index
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 u0x02000379, ; uint32_t type_token_id
		i32 414; uint32_t java_map_index
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 571; uint32_t java_map_index
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 845; uint32_t java_map_index
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 u0x02000380, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 u0x02000383, ; uint32_t type_token_id
		i32 114; uint32_t java_map_index
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 u0x02000384, ; uint32_t type_token_id
		i32 926; uint32_t java_map_index
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 u0x02000385, ; uint32_t type_token_id
		i32 1209; uint32_t java_map_index
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 u0x02000386, ; uint32_t type_token_id
		i32 1140; uint32_t java_map_index
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 u0x02000387, ; uint32_t type_token_id
		i32 782; uint32_t java_map_index
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 588; uint32_t java_map_index
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 466; uint32_t java_map_index
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 619; uint32_t java_map_index
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 u0x02000391, ; uint32_t type_token_id
		i32 675; uint32_t java_map_index
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 516; uint32_t java_map_index
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 354; uint32_t java_map_index
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 762; uint32_t java_map_index
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 u0x02000398, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 u0x02000399, ; uint32_t type_token_id
		i32 1165; uint32_t java_map_index
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 u0x020003a1, ; uint32_t type_token_id
		i32 178; uint32_t java_map_index
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 748; uint32_t java_map_index
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 193; uint32_t java_map_index
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 1135; uint32_t java_map_index
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 250; uint32_t java_map_index
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 130; uint32_t java_map_index
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 713; uint32_t java_map_index
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 152; uint32_t java_map_index
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 206; uint32_t java_map_index
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 224; uint32_t java_map_index
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 232; uint32_t java_map_index
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 771; uint32_t java_map_index
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 866; uint32_t java_map_index
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 121; uint32_t java_map_index
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 417; uint32_t java_map_index
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 u0x020003be, ; uint32_t type_token_id
		i32 1059; uint32_t java_map_index
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 1079; uint32_t java_map_index
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 973; uint32_t java_map_index
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 672; uint32_t java_map_index
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 725; uint32_t java_map_index
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 372; uint32_t java_map_index
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 671; uint32_t java_map_index
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 186; uint32_t java_map_index
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 1020; uint32_t java_map_index
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 653; uint32_t java_map_index
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 481; uint32_t java_map_index
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 1207; uint32_t java_map_index
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 1126; uint32_t java_map_index
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 622; uint32_t java_map_index
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 1033; uint32_t java_map_index
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 u0x020003d9, ; uint32_t type_token_id
		i32 1092; uint32_t java_map_index
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 u0x020003db, ; uint32_t type_token_id
		i32 179; uint32_t java_map_index
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 164; uint32_t java_map_index
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 442; uint32_t java_map_index
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 456; uint32_t java_map_index
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 286; uint32_t java_map_index
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 759; uint32_t java_map_index
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 u0x020003e5, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 1251; uint32_t java_map_index
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 1120; uint32_t java_map_index
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 1215; uint32_t java_map_index
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 575; uint32_t java_map_index
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 u0x020003f0, ; uint32_t type_token_id
		i32 223; uint32_t java_map_index
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 730; uint32_t java_map_index
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 1188; uint32_t java_map_index
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 889; uint32_t java_map_index
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 1194; uint32_t java_map_index
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 u0x020003f7, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 u0x020003fa, ; uint32_t type_token_id
		i32 462; uint32_t java_map_index
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 u0x020003fc, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 u0x020003fe, ; uint32_t type_token_id
		i32 120; uint32_t java_map_index
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 u0x02000401, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 u0x02000403, ; uint32_t type_token_id
		i32 532; uint32_t java_map_index
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 u0x02000405, ; uint32_t type_token_id
		i32 839; uint32_t java_map_index
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 u0x02000407, ; uint32_t type_token_id
		i32 609; uint32_t java_map_index
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 u0x02000408, ; uint32_t type_token_id
		i32 518; uint32_t java_map_index
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 u0x0200040a, ; uint32_t type_token_id
		i32 312; uint32_t java_map_index
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 u0x0200040c, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 u0x0200040e, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 u0x02000410, ; uint32_t type_token_id
		i32 835; uint32_t java_map_index
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 u0x02000412, ; uint32_t type_token_id
		i32 423; uint32_t java_map_index
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 u0x02000414, ; uint32_t type_token_id
		i32 1244; uint32_t java_map_index
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 u0x02000416, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 u0x02000418, ; uint32_t type_token_id
		i32 611; uint32_t java_map_index
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 u0x0200041a, ; uint32_t type_token_id
		i32 156; uint32_t java_map_index
	}, ; 481
	%struct.TypeMapModuleEntry {
		i32 u0x0200041c, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 482
	%struct.TypeMapModuleEntry {
		i32 u0x0200041e, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	}, ; 483
	%struct.TypeMapModuleEntry {
		i32 u0x02000420, ; uint32_t type_token_id
		i32 142; uint32_t java_map_index
	}, ; 484
	%struct.TypeMapModuleEntry {
		i32 u0x02000421, ; uint32_t type_token_id
		i32 203; uint32_t java_map_index
	}, ; 485
	%struct.TypeMapModuleEntry {
		i32 u0x02000422, ; uint32_t type_token_id
		i32 589; uint32_t java_map_index
	}, ; 486
	%struct.TypeMapModuleEntry {
		i32 u0x02000423, ; uint32_t type_token_id
		i32 492; uint32_t java_map_index
	}, ; 487
	%struct.TypeMapModuleEntry {
		i32 u0x02000424, ; uint32_t type_token_id
		i32 506; uint32_t java_map_index
	}, ; 488
	%struct.TypeMapModuleEntry {
		i32 u0x02000425, ; uint32_t type_token_id
		i32 1111; uint32_t java_map_index
	}, ; 489
	%struct.TypeMapModuleEntry {
		i32 u0x02000426, ; uint32_t type_token_id
		i32 336; uint32_t java_map_index
	}, ; 490
	%struct.TypeMapModuleEntry {
		i32 u0x02000427, ; uint32_t type_token_id
		i32 1071; uint32_t java_map_index
	}, ; 491
	%struct.TypeMapModuleEntry {
		i32 u0x02000428, ; uint32_t type_token_id
		i32 859; uint32_t java_map_index
	}, ; 492
	%struct.TypeMapModuleEntry {
		i32 u0x02000429, ; uint32_t type_token_id
		i32 820; uint32_t java_map_index
	}, ; 493
	%struct.TypeMapModuleEntry {
		i32 u0x0200042a, ; uint32_t type_token_id
		i32 222; uint32_t java_map_index
	}, ; 494
	%struct.TypeMapModuleEntry {
		i32 u0x0200042b, ; uint32_t type_token_id
		i32 228; uint32_t java_map_index
	}, ; 495
	%struct.TypeMapModuleEntry {
		i32 u0x0200042c, ; uint32_t type_token_id
		i32 117; uint32_t java_map_index
	}, ; 496
	%struct.TypeMapModuleEntry {
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 497
	%struct.TypeMapModuleEntry {
		i32 u0x0200042e, ; uint32_t type_token_id
		i32 790; uint32_t java_map_index
	}, ; 498
	%struct.TypeMapModuleEntry {
		i32 u0x0200042f, ; uint32_t type_token_id
		i32 485; uint32_t java_map_index
	}, ; 499
	%struct.TypeMapModuleEntry {
		i32 u0x02000430, ; uint32_t type_token_id
		i32 254; uint32_t java_map_index
	}, ; 500
	%struct.TypeMapModuleEntry {
		i32 u0x02000431, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	}, ; 501
	%struct.TypeMapModuleEntry {
		i32 u0x02000433, ; uint32_t type_token_id
		i32 231; uint32_t java_map_index
	}, ; 502
	%struct.TypeMapModuleEntry {
		i32 u0x02000434, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	}, ; 503
	%struct.TypeMapModuleEntry {
		i32 u0x02000435, ; uint32_t type_token_id
		i32 382; uint32_t java_map_index
	}, ; 504
	%struct.TypeMapModuleEntry {
		i32 u0x02000436, ; uint32_t type_token_id
		i32 403; uint32_t java_map_index
	}, ; 505
	%struct.TypeMapModuleEntry {
		i32 u0x02000437, ; uint32_t type_token_id
		i32 123; uint32_t java_map_index
	}, ; 506
	%struct.TypeMapModuleEntry {
		i32 u0x02000439, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 507
	%struct.TypeMapModuleEntry {
		i32 u0x0200043b, ; uint32_t type_token_id
		i32 1159; uint32_t java_map_index
	}, ; 508
	%struct.TypeMapModuleEntry {
		i32 u0x0200043c, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 509
	%struct.TypeMapModuleEntry {
		i32 u0x0200043e, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 510
	%struct.TypeMapModuleEntry {
		i32 u0x02000442, ; uint32_t type_token_id
		i32 691; uint32_t java_map_index
	}, ; 511
	%struct.TypeMapModuleEntry {
		i32 u0x02000444, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 512
	%struct.TypeMapModuleEntry {
		i32 u0x02000445, ; uint32_t type_token_id
		i32 167; uint32_t java_map_index
	}, ; 513
	%struct.TypeMapModuleEntry {
		i32 u0x02000446, ; uint32_t type_token_id
		i32 486; uint32_t java_map_index
	}, ; 514
	%struct.TypeMapModuleEntry {
		i32 u0x02000447, ; uint32_t type_token_id
		i32 549; uint32_t java_map_index
	}, ; 515
	%struct.TypeMapModuleEntry {
		i32 u0x02000449, ; uint32_t type_token_id
		i32 133; uint32_t java_map_index
	}, ; 516
	%struct.TypeMapModuleEntry {
		i32 u0x0200044a, ; uint32_t type_token_id
		i32 1177; uint32_t java_map_index
	}, ; 517
	%struct.TypeMapModuleEntry {
		i32 u0x0200044b, ; uint32_t type_token_id
		i32 243; uint32_t java_map_index
	}, ; 518
	%struct.TypeMapModuleEntry {
		i32 u0x0200044c, ; uint32_t type_token_id
		i32 1003; uint32_t java_map_index
	}, ; 519
	%struct.TypeMapModuleEntry {
		i32 u0x0200044e, ; uint32_t type_token_id
		i32 72; uint32_t java_map_index
	}, ; 520
	%struct.TypeMapModuleEntry {
		i32 u0x0200044f, ; uint32_t type_token_id
		i32 416; uint32_t java_map_index
	}, ; 521
	%struct.TypeMapModuleEntry {
		i32 u0x02000450, ; uint32_t type_token_id
		i32 846; uint32_t java_map_index
	}, ; 522
	%struct.TypeMapModuleEntry {
		i32 u0x02000451, ; uint32_t type_token_id
		i32 716; uint32_t java_map_index
	}, ; 523
	%struct.TypeMapModuleEntry {
		i32 u0x02000452, ; uint32_t type_token_id
		i32 1216; uint32_t java_map_index
	}, ; 524
	%struct.TypeMapModuleEntry {
		i32 u0x02000453, ; uint32_t type_token_id
		i32 1184; uint32_t java_map_index
	}, ; 525
	%struct.TypeMapModuleEntry {
		i32 u0x02000455, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 526
	%struct.TypeMapModuleEntry {
		i32 u0x02000456, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	}, ; 527
	%struct.TypeMapModuleEntry {
		i32 u0x02000466, ; uint32_t type_token_id
		i32 869; uint32_t java_map_index
	} ; 528
], align 4

@module36_managed_to_java_duplicates = internal dso_local constant [204 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 656; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 1076; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 998; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 406; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 968; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 251; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 1149; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 737; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 478; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 1124; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 806; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 610; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 906; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 744; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 296; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 258; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000fb, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 1040; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000100, ; uint32_t type_token_id
		i32 591; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000104, ; uint32_t type_token_id
		i32 326; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000106, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000107, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000111, ; uint32_t type_token_id
		i32 319; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 627; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200011b, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 1253; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 501; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000132, ; uint32_t type_token_id
		i32 798; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000134, ; uint32_t type_token_id
		i32 389; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000136, ; uint32_t type_token_id
		i32 1164; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000138, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 161; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200013f, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 991; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000162, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1122; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1075; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1028; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000173, ; uint32_t type_token_id
		i32 1219; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000177, ; uint32_t type_token_id
		i32 520; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200017d, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000187, ; uint32_t type_token_id
		i32 102; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000189, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 849; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000190, ; uint32_t type_token_id
		i32 1024; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x02000192, ; uint32_t type_token_id
		i32 1073; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200019a, ; uint32_t type_token_id
		i32 285; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200019d, ; uint32_t type_token_id
		i32 192; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x0200019f, ; uint32_t type_token_id
		i32 969; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020001a1, ; uint32_t type_token_id
		i32 1132; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020001a3, ; uint32_t type_token_id
		i32 1077; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020001a6, ; uint32_t type_token_id
		i32 261; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020001b5, ; uint32_t type_token_id
		i32 230; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 927; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020001b9, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020001bb, ; uint32_t type_token_id
		i32 606; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020001bd, ; uint32_t type_token_id
		i32 1238; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020001c7, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 919; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 233; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020001d3, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 637; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020001d7, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020001df, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 538; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 1169; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020001e9, ; uint32_t type_token_id
		i32 994; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020001ed, ; uint32_t type_token_id
		i32 441; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020001ef, ; uint32_t type_token_id
		i32 803; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020001f3, ; uint32_t type_token_id
		i32 710; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 1001; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020001fb, ; uint32_t type_token_id
		i32 487; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000214, ; uint32_t type_token_id
		i32 1237; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x02000217, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x0200021a, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x0200021b, ; uint32_t type_token_id
		i32 844; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x0200021e, ; uint32_t type_token_id
		i32 1065; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x0200022c, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x0200022e, ; uint32_t type_token_id
		i32 196; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000231, ; uint32_t type_token_id
		i32 751; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000233, ; uint32_t type_token_id
		i32 1128; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000236, ; uint32_t type_token_id
		i32 1241; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000238, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200023a, ; uint32_t type_token_id
		i32 1239; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200023d, ; uint32_t type_token_id
		i32 960; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000240, ; uint32_t type_token_id
		i32 854; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000242, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000244, ; uint32_t type_token_id
		i32 298; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000246, ; uint32_t type_token_id
		i32 419; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000248, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x0200024a, ; uint32_t type_token_id
		i32 848; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 731; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x0200024f, ; uint32_t type_token_id
		i32 764; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x02000250, ; uint32_t type_token_id
		i32 862; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x02000252, ; uint32_t type_token_id
		i32 943; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x02000259, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x02000262, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x02000266, ; uint32_t type_token_id
		i32 1230; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x02000275, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x0200027c, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x02000280, ; uint32_t type_token_id
		i32 708; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x02000281, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x02000289, ; uint32_t type_token_id
		i32 694; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x0200028d, ; uint32_t type_token_id
		i32 508; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x02000295, ; uint32_t type_token_id
		i32 615; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x02000299, ; uint32_t type_token_id
		i32 1106; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x0200029c, ; uint32_t type_token_id
		i32 1166; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x020002c6, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x020002cc, ; uint32_t type_token_id
		i32 437; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x020002d5, ; uint32_t type_token_id
		i32 1236; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x020002f2, ; uint32_t type_token_id
		i32 1095; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x02000323, ; uint32_t type_token_id
		i32 559; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x02000329, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x0200032b, ; uint32_t type_token_id
		i32 1096; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x02000330, ; uint32_t type_token_id
		i32 440; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x02000336, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x0200033c, ; uint32_t type_token_id
		i32 987; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x02000345, ; uint32_t type_token_id
		i32 577; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 458; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 253; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 1176; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x02000351, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000354, ; uint32_t type_token_id
		i32 851; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x02000358, ; uint32_t type_token_id
		i32 160; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 772; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 562; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x02000360, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x02000363, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x02000367, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x02000369, ; uint32_t type_token_id
		i32 750; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x0200036b, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x02000381, ; uint32_t type_token_id
		i32 779; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 516; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 762; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 1135; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 206; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x020003b2, ; uint32_t type_token_id
		i32 224; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x020003b6, ; uint32_t type_token_id
		i32 771; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x020003b9, ; uint32_t type_token_id
		i32 866; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 417; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 1020; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 653; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 481; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 1033; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020003d8, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020003da, ; uint32_t type_token_id
		i32 1092; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020003df, ; uint32_t type_token_id
		i32 164; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 442; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 1251; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 1120; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 575; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 1188; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x020003f6, ; uint32_t type_token_id
		i32 1194; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x020003f8, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x020003f9, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x020003fb, ; uint32_t type_token_id
		i32 462; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x020003fd, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x020003ff, ; uint32_t type_token_id
		i32 120; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x02000400, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x02000402, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x02000404, ; uint32_t type_token_id
		i32 532; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x02000406, ; uint32_t type_token_id
		i32 839; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x0200040b, ; uint32_t type_token_id
		i32 312; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x0200040d, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x0200040f, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x02000411, ; uint32_t type_token_id
		i32 835; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x02000413, ; uint32_t type_token_id
		i32 423; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x02000415, ; uint32_t type_token_id
		i32 1244; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x02000417, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x02000419, ; uint32_t type_token_id
		i32 611; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x0200041b, ; uint32_t type_token_id
		i32 156; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x0200041d, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x0200041f, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x02000438, ; uint32_t type_token_id
		i32 123; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x0200043a, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x0200043d, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x0200043f, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x02000440, ; uint32_t type_token_id
		i32 222; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x02000443, ; uint32_t type_token_id
		i32 691; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x02000448, ; uint32_t type_token_id
		i32 549; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x0200044d, ; uint32_t type_token_id
		i32 1003; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x02000454, ; uint32_t type_token_id
		i32 1184; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x02000457, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	} ; 203
], align 4

@module37_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 908; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1009; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 452; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1257; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1104; uint32_t java_map_index
	} ; 6
], align 4

@module37_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1009; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 452; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1257; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	} ; 4
], align 4

@module38_managed_to_java = internal dso_local constant [107 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000348, ; uint32_t type_token_id
		i32 177; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000349, ; uint32_t type_token_id
		i32 885; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 638; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 1141; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 1250; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 188; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 279; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000362, ; uint32_t type_token_id
		i32 912; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000363, ; uint32_t type_token_id
		i32 700; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000365, ; uint32_t type_token_id
		i32 688; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000366, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000369, ; uint32_t type_token_id
		i32 335; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 428; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 413; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 306; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000389, ; uint32_t type_token_id
		i32 1222; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 841; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 899; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 356; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 91; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 1097; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 392; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000391, ; uint32_t type_token_id
		i32 333; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 741; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 950; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 1039; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000395, ; uint32_t type_token_id
		i32 584; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 746; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 907; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000398, ; uint32_t type_token_id
		i32 1078; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 433; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 909; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 1042; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 1010; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 212; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 985; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 1125; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 227; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 1152; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 918; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 888; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 255; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 917; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 860; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 526; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 88; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 420; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 834; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 871; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 933; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 1030; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 876; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 213; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 963; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 1015; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 1014; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 143; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 172; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 878; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 489; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 659; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 147; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020003df, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 1205; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 560; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 882; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 643; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 728; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 900; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 543; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 816; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 338; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000490, ; uint32_t type_token_id
		i32 1175; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x0200055e, ; uint32_t type_token_id
		i32 529; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020005e5, ; uint32_t type_token_id
		i32 582; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020005eb, ; uint32_t type_token_id
		i32 1196; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020005f7, ; uint32_t type_token_id
		i32 473; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000602, ; uint32_t type_token_id
		i32 830; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000604, ; uint32_t type_token_id
		i32 483; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000605, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x0200060c, ; uint32_t type_token_id
		i32 345; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200060f, ; uint32_t type_token_id
		i32 740; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000610, ; uint32_t type_token_id
		i32 360; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000611, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000614, ; uint32_t type_token_id
		i32 723; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000618, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000619, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000622, ; uint32_t type_token_id
		i32 707; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000625, ; uint32_t type_token_id
		i32 445; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000628, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x0200062e, ; uint32_t type_token_id
		i32 317; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200062f, ; uint32_t type_token_id
		i32 400; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x02000630, ; uint32_t type_token_id
		i32 339; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000631, ; uint32_t type_token_id
		i32 144; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000633, ; uint32_t type_token_id
		i32 1181; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000634, ; uint32_t type_token_id
		i32 884; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000697, ; uint32_t type_token_id
		i32 175; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000699, ; uint32_t type_token_id
		i32 979; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x0200069a, ; uint32_t type_token_id
		i32 1053; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x020006a2, ; uint32_t type_token_id
		i32 739; uint32_t java_map_index
	} ; 106
], align 4

@module39_managed_to_java = internal dso_local constant [76 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 877; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 988; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 385; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 479; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1255; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000126, ; uint32_t type_token_id
		i32 887; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000127, ; uint32_t type_token_id
		i32 753; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 676; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 220; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 62; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 930; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 288; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 573; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 274; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 496; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000135, ; uint32_t type_token_id
		i32 1105; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 693; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000141, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000142, ; uint32_t type_token_id
		i32 738; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 246; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 380; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 760; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 793; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 831; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 570; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 113; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 975; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 776; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 1168; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 547; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000160, ; uint32_t type_token_id
		i32 138; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 493; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000163, ; uint32_t type_token_id
		i32 828; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1190; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 187; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 459; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 140; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 1199; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 1243; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 522; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 270; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1212; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000174, ; uint32_t type_token_id
		i32 299; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 1143; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000177, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000179, ; uint32_t type_token_id
		i32 450; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 165; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 581; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 736; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000197, ; uint32_t type_token_id
		i32 667; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000251, ; uint32_t type_token_id
		i32 464; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x02000252, ; uint32_t type_token_id
		i32 802; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000258, ; uint32_t type_token_id
		i32 618; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 766; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020002cf, ; uint32_t type_token_id
		i32 1226; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020002d5, ; uint32_t type_token_id
		i32 590; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020002db, ; uint32_t type_token_id
		i32 240; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020002dd, ; uint32_t type_token_id
		i32 913; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020002e1, ; uint32_t type_token_id
		i32 1158; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 721; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000333, ; uint32_t type_token_id
		i32 810; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 387; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000337, ; uint32_t type_token_id
		i32 397; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 623; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 546; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 199; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 951; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x02000361, ; uint32_t type_token_id
		i32 208; uint32_t java_map_index
	} ; 75
], align 4

@module39_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 479; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 753; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 496; uint32_t java_map_index
	} ; 4
], align 4

@module40_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1090; uint32_t java_map_index
	} ; 0
], align 4

@module40_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1090; uint32_t java_map_index
	} ; 0
], align 4

@module41_managed_to_java = internal dso_local constant [20 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 566; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 401; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1131; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 197; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 301; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 131; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1185; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 578; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1245; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 679; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 200; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 743; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 125; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 977; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	} ; 19
], align 4

@module41_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 197; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1185; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1245; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 679; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 578; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 200; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 125; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	} ; 9
], align 4

@module42_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 711; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 897; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 169; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	} ; 3
], align 4

@module42_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 897; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 169; uint32_t java_map_index
	} ; 1
], align 4

@module43_managed_to_java = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 119; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 647; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1246; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 163; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 792; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 539; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 507; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 476; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1254; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 689; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 687; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1133; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 244; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 632; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 948; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 563; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 379; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 357; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 633; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 509; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1127; uint32_t java_map_index
	} ; 24
], align 4

@module43_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 119; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 647; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1246; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 163; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 792; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 539; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 476; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1254; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 632; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 948; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 563; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 379; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 357; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 633; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 509; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1127; uint32_t java_map_index
	} ; 18
], align 4

@module44_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 837; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 586; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 168; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 290; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 938; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1183; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1157; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 594; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 677; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 608; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 221; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1208; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 537; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1130; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 587; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 550; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1107; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 729; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1099; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 269; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 781; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 972; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 646; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 311; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 649; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 349; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 758; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1002; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1027; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 429; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1206; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 194; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 1017; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 337; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1228; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1229; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1258; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 641; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 477; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 394; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 548; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 517; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 580; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 1035; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 617; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 381; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 747; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1115; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 684; uint32_t java_map_index
	} ; 66
], align 4

@module44_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 608; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 1107; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 972; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 649; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 758; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 429; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 1206; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1229; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 1258; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 394; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 517; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 1035; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 381; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 747; uint32_t java_map_index
	} ; 24
], align 4

@module45_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 409; uint32_t java_map_index
	} ; 0
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1260 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 695; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 174; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 1113; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 497; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 510; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 133; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 552; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1176; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1145; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 82; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 446; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000380, ; uint32_t type_token_id
		i32 393; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1180; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 636; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1166; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 539; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000177, ; uint32_t type_token_id
		i32 1122; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 860; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000271, ; uint32_t type_token_id
		i32 248; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 574; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1198; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003e5, ; uint32_t type_token_id
		i32 452; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000398, ; uint32_t type_token_id
		i32 406; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 629; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 923; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 770; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200028a, ; uint32_t type_token_id
		i32 261; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002fd, ; uint32_t type_token_id
		i32 300; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 654; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000151, ; uint32_t type_token_id
		i32 100; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1199; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1161; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000316, ; uint32_t type_token_id
		i32 324; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000da, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1067; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 791; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000611, ; uint32_t type_token_id
		i32 1003; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200020f, ; uint32_t type_token_id
		i32 204; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000195, ; uint32_t type_token_id
		i32 139; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 464; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 110; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 974; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 793; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000619, ; uint32_t type_token_id
		i32 1007; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1155; uint32_t java_name_index
	}, ; 46
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 798; uint32_t java_name_index
	}, ; 47
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 1038; uint32_t java_name_index
	}, ; 48
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 418; uint32_t java_name_index
	}, ; 49
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1211; uint32_t java_name_index
	}, ; 50
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000141, ; uint32_t type_token_id
		i32 1088; uint32_t java_name_index
	}, ; 51
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 914; uint32_t java_name_index
	}, ; 52
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000444, ; uint32_t type_token_id
		i32 512; uint32_t java_name_index
	}, ; 53
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 54
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000261, ; uint32_t type_token_id
		i32 241; uint32_t java_name_index
	}, ; 55
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1210; uint32_t java_name_index
	}, ; 56
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 746; uint32_t java_name_index
	}, ; 57
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000618, ; uint32_t type_token_id
		i32 1006; uint32_t java_name_index
	}, ; 58
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 957; uint32_t java_name_index
	}, ; 59
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 897; uint32_t java_name_index
	}, ; 60
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 943; uint32_t java_name_index
	}, ; 61
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 1080; uint32_t java_name_index
	}, ; 62
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 762; uint32_t java_name_index
	}, ; 63
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 1054; uint32_t java_name_index
	}, ; 64
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 751; uint32_t java_name_index
	}, ; 65
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1254; uint32_t java_name_index
	}, ; 66
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 882; uint32_t java_name_index
	}, ; 67
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 941; uint32_t java_name_index
	}, ; 68
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 533; uint32_t java_name_index
	}, ; 69
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 60; uint32_t java_name_index
	}, ; 70
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000317, ; uint32_t type_token_id
		i32 325; uint32_t java_name_index
	}, ; 71
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200044e, ; uint32_t type_token_id
		i32 520; uint32_t java_name_index
	}, ; 72
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 768; uint32_t java_name_index
	}, ; 73
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 909; uint32_t java_name_index
	}, ; 74
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	}, ; 75
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000282, ; uint32_t type_token_id
		i32 255; uint32_t java_name_index
	}, ; 76
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 77
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 78
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1044; uint32_t java_name_index
	}, ; 79
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 685; uint32_t java_name_index
	}, ; 80
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 1249; uint32_t java_name_index
	}, ; 81
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 443; uint32_t java_name_index
	}, ; 82
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 251; uint32_t java_name_index
	}, ; 83
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 1051; uint32_t java_name_index
	}, ; 84
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 378; uint32_t java_name_index
	}, ; 85
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 474; uint32_t java_name_index
	}, ; 86
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 896; uint32_t java_name_index
	}, ; 87
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 1023; uint32_t java_name_index
	}, ; 88
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 802; uint32_t java_name_index
	}, ; 89
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1110; uint32_t java_name_index
	}, ; 90
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 988; uint32_t java_name_index
	}, ; 91
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 947; uint32_t java_name_index
	}, ; 92
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 542; uint32_t java_name_index
	}, ; 93
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000628, ; uint32_t type_token_id
		i32 1048; uint32_t java_name_index
	}, ; 94
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 225; uint32_t java_name_index
	}, ; 95
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 855; uint32_t java_name_index
	}, ; 96
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000096, ; uint32_t type_token_id
		i32 706; uint32_t java_name_index
	}, ; 97
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001c5, ; uint32_t type_token_id
		i32 173; uint32_t java_name_index
	}, ; 98
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 658; uint32_t java_name_index
	}, ; 99
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1242; uint32_t java_name_index
	}, ; 100
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 52; uint32_t java_name_index
	}, ; 101
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000186, ; uint32_t type_token_id
		i32 130; uint32_t java_name_index
	}, ; 102
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 627; uint32_t java_name_index
	}, ; 103
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 546; uint32_t java_name_index
	}, ; 104
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000272, ; uint32_t type_token_id
		i32 249; uint32_t java_name_index
	}, ; 105
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 442; uint32_t java_name_index
	}, ; 106
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1068; uint32_t java_name_index
	}, ; 107
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000605, ; uint32_t type_token_id
		i32 989; uint32_t java_name_index
	}, ; 108
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000434, ; uint32_t type_token_id
		i32 503; uint32_t java_name_index
	}, ; 109
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 938; uint32_t java_name_index
	}, ; 110
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 686; uint32_t java_name_index
	}, ; 111
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 710; uint32_t java_name_index
	}, ; 112
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 1097; uint32_t java_name_index
	}, ; 113
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000383, ; uint32_t type_token_id
		i32 394; uint32_t java_name_index
	}, ; 114
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 181; uint32_t java_name_index
	}, ; 115
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 727; uint32_t java_name_index
	}, ; 116
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200042c, ; uint32_t type_token_id
		i32 496; uint32_t java_name_index
	}, ; 117
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000157, ; uint32_t type_token_id
		i32 105; uint32_t java_name_index
	}, ; 118
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1168; uint32_t java_name_index
	}, ; 119
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 467; uint32_t java_name_index
	}, ; 120
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 423; uint32_t java_name_index
	}, ; 121
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 586; uint32_t java_name_index
	}, ; 122
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000437, ; uint32_t type_token_id
		i32 506; uint32_t java_name_index
	}, ; 123
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 531; uint32_t java_name_index
	}, ; 124
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1159; uint32_t java_name_index
	}, ; 125
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 913; uint32_t java_name_index
	}, ; 126
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 670; uint32_t java_name_index
	}, ; 127
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 287; uint32_t java_name_index
	}, ; 128
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 373; uint32_t java_name_index
	}, ; 129
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 413; uint32_t java_name_index
	}, ; 130
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1149; uint32_t java_name_index
	}, ; 131
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 633; uint32_t java_name_index
	}, ; 132
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000449, ; uint32_t type_token_id
		i32 516; uint32_t java_name_index
	}, ; 133
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 560; uint32_t java_name_index
	}, ; 134
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 537; uint32_t java_name_index
	}, ; 135
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 555; uint32_t java_name_index
	}, ; 136
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000455, ; uint32_t type_token_id
		i32 526; uint32_t java_name_index
	}, ; 137
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000160, ; uint32_t type_token_id
		i32 1104; uint32_t java_name_index
	}, ; 138
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1217; uint32_t java_name_index
	}, ; 139
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000169, ; uint32_t type_token_id
		i32 1111; uint32_t java_name_index
	}, ; 140
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 567; uint32_t java_name_index
	}, ; 141
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000420, ; uint32_t type_token_id
		i32 484; uint32_t java_name_index
	}, ; 142
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 1034; uint32_t java_name_index
	}, ; 143
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000631, ; uint32_t type_token_id
		i32 1058; uint32_t java_name_index
	}, ; 144
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 145
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000273, ; uint32_t type_token_id
		i32 250; uint32_t java_name_index
	}, ; 146
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003de, ; uint32_t type_token_id
		i32 1042; uint32_t java_name_index
	}, ; 147
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 232; uint32_t java_name_index
	}, ; 148
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 585; uint32_t java_name_index
	}, ; 149
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001c0, ; uint32_t type_token_id
		i32 170; uint32_t java_name_index
	}, ; 150
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 886; uint32_t java_name_index
	}, ; 151
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 415; uint32_t java_name_index
	}, ; 152
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002e0, ; uint32_t type_token_id
		i32 286; uint32_t java_name_index
	}, ; 153
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 782; uint32_t java_name_index
	}, ; 154
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000328, ; uint32_t type_token_id
		i32 340; uint32_t java_name_index
	}, ; 155
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 481; uint32_t java_name_index
	}, ; 156
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a8, ; uint32_t type_token_id
		i32 152; uint32_t java_name_index
	}, ; 157
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 712; uint32_t java_name_index
	}, ; 158
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 926; uint32_t java_name_index
	}, ; 159
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 369; uint32_t java_name_index
	}, ; 160
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 86; uint32_t java_name_index
	}, ; 161
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 1052; uint32_t java_name_index
	}, ; 162
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1172; uint32_t java_name_index
	}, ; 163
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003de, ; uint32_t type_token_id
		i32 447; uint32_t java_name_index
	}, ; 164
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 1125; uint32_t java_name_index
	}, ; 165
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 74; uint32_t java_name_index
	}, ; 166
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000445, ; uint32_t type_token_id
		i32 513; uint32_t java_name_index
	}, ; 167
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1195; uint32_t java_name_index
	}, ; 168
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1165; uint32_t java_name_index
	}, ; 169
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 788; uint32_t java_name_index
	}, ; 170
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000212, ; uint32_t type_token_id
		i32 207; uint32_t java_name_index
	}, ; 171
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 1037; uint32_t java_name_index
	}, ; 172
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001b1, ; uint32_t type_token_id
		i32 160; uint32_t java_name_index
	}, ; 173
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 722; uint32_t java_name_index
	}, ; 174
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000697, ; uint32_t type_token_id
		i32 978; uint32_t java_name_index
	}, ; 175
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 679; uint32_t java_name_index
	}, ; 176
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000348, ; uint32_t type_token_id
		i32 961; uint32_t java_name_index
	}, ; 177
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003a1, ; uint32_t type_token_id
		i32 408; uint32_t java_name_index
	}, ; 178
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003db, ; uint32_t type_token_id
		i32 445; uint32_t java_name_index
	}, ; 179
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 545; uint32_t java_name_index
	}, ; 180
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 457; uint32_t java_name_index
	}, ; 181
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200029d, ; uint32_t type_token_id
		i32 270; uint32_t java_name_index
	}, ; 182
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 876; uint32_t java_name_index
	}, ; 183
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 580; uint32_t java_name_index
	}, ; 184
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 607; uint32_t java_name_index
	}, ; 185
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 433; uint32_t java_name_index
	}, ; 186
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1108; uint32_t java_name_index
	}, ; 187
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 969; uint32_t java_name_index
	}, ; 188
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 755; uint32_t java_name_index
	}, ; 189
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 186; uint32_t java_name_index
	}, ; 190
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 612; uint32_t java_name_index
	}, ; 191
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 145; uint32_t java_name_index
	}, ; 192
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 410; uint32_t java_name_index
	}, ; 193
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 1236; uint32_t java_name_index
	}, ; 194
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 584; uint32_t java_name_index
	}, ; 195
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 221; uint32_t java_name_index
	}, ; 196
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1147; uint32_t java_name_index
	}, ; 197
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 800; uint32_t java_name_index
	}, ; 198
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 1136; uint32_t java_name_index
	}, ; 199
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1156; uint32_t java_name_index
	}, ; 200
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 825; uint32_t java_name_index
	}, ; 201
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 924; uint32_t java_name_index
	}, ; 202
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000421, ; uint32_t type_token_id
		i32 485; uint32_t java_name_index
	}, ; 203
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 616; uint32_t java_name_index
	}, ; 204
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 841; uint32_t java_name_index
	}, ; 205
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 416; uint32_t java_name_index
	}, ; 206
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002d0, ; uint32_t type_token_id
		i32 282; uint32_t java_name_index
	}, ; 207
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000361, ; uint32_t type_token_id
		i32 1141; uint32_t java_name_index
	}, ; 208
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200036e, ; uint32_t type_token_id
		i32 381; uint32_t java_name_index
	}, ; 209
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 829; uint32_t java_name_index
	}, ; 210
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 343; uint32_t java_name_index
	}, ; 211
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1011; uint32_t java_name_index
	}, ; 212
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 1030; uint32_t java_name_index
	}, ; 213
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 634; uint32_t java_name_index
	}, ; 214
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 877; uint32_t java_name_index
	}, ; 215
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 927; uint32_t java_name_index
	}, ; 216
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200030a, ; uint32_t type_token_id
		i32 313; uint32_t java_name_index
	}, ; 217
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000196, ; uint32_t type_token_id
		i32 140; uint32_t java_name_index
	}, ; 218
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1201; uint32_t java_name_index
	}, ; 219
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 1079; uint32_t java_name_index
	}, ; 220
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1206; uint32_t java_name_index
	}, ; 221
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 494; uint32_t java_name_index
	}, ; 222
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003f0, ; uint32_t type_token_id
		i32 459; uint32_t java_name_index
	}, ; 223
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 417; uint32_t java_name_index
	}, ; 224
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000332, ; uint32_t type_token_id
		i32 346; uint32_t java_name_index
	}, ; 225
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000077, ; uint32_t type_token_id
		i32 638; uint32_t java_name_index
	}, ; 226
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1014; uint32_t java_name_index
	}, ; 227
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200042b, ; uint32_t type_token_id
		i32 495; uint32_t java_name_index
	}, ; 228
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 858; uint32_t java_name_index
	}, ; 229
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 163; uint32_t java_name_index
	}, ; 230
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000433, ; uint32_t type_token_id
		i32 502; uint32_t java_name_index
	}, ; 231
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 419; uint32_t java_name_index
	}, ; 232
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 179; uint32_t java_name_index
	}, ; 233
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 234
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 709; uint32_t java_name_index
	}, ; 235
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 814; uint32_t java_name_index
	}, ; 236
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 597; uint32_t java_name_index
	}, ; 237
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 171; uint32_t java_name_index
	}, ; 238
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 239
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002db, ; uint32_t type_token_id
		i32 1120; uint32_t java_name_index
	}, ; 240
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 830; uint32_t java_name_index
	}, ; 241
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 739; uint32_t java_name_index
	}, ; 242
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200044b, ; uint32_t type_token_id
		i32 518; uint32_t java_name_index
	}, ; 243
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1183; uint32_t java_name_index
	}, ; 244
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000146, ; uint32_t type_token_id
		i32 93; uint32_t java_name_index
	}, ; 245
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000153, ; uint32_t type_token_id
		i32 1091; uint32_t java_name_index
	}, ; 246
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200036f, ; uint32_t type_token_id
		i32 382; uint32_t java_name_index
	}, ; 247
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1221; uint32_t java_name_index
	}, ; 248
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002f5, ; uint32_t type_token_id
		i32 295; uint32_t java_name_index
	}, ; 249
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 412; uint32_t java_name_index
	}, ; 250
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 251
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 252
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 363; uint32_t java_name_index
	}, ; 253
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000430, ; uint32_t type_token_id
		i32 500; uint32_t java_name_index
	}, ; 254
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 1018; uint32_t java_name_index
	}, ; 255
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 819; uint32_t java_name_index
	}, ; 256
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 837; uint32_t java_name_index
	}, ; 257
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 50; uint32_t java_name_index
	}, ; 258
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 737; uint32_t java_name_index
	}, ; 259
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 932; uint32_t java_name_index
	}, ; 260
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 150; uint32_t java_name_index
	}, ; 261
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 866; uint32_t java_name_index
	}, ; 262
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 963; uint32_t java_name_index
	}, ; 263
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 572; uint32_t java_name_index
	}, ; 264
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 694; uint32_t java_name_index
	}, ; 265
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002fa, ; uint32_t type_token_id
		i32 297; uint32_t java_name_index
	}, ; 266
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 950; uint32_t java_name_index
	}, ; 267
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 853; uint32_t java_name_index
	}, ; 268
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1223; uint32_t java_name_index
	}, ; 269
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 1116; uint32_t java_name_index
	}, ; 270
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 568; uint32_t java_name_index
	}, ; 271
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 809; uint32_t java_name_index
	}, ; 272
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000182, ; uint32_t type_token_id
		i32 126; uint32_t java_name_index
	}, ; 273
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 1084; uint32_t java_name_index
	}, ; 274
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000181, ; uint32_t type_token_id
		i32 125; uint32_t java_name_index
	}, ; 275
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1243; uint32_t java_name_index
	}, ; 276
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 611; uint32_t java_name_index
	}, ; 277
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 677; uint32_t java_name_index
	}, ; 278
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 970; uint32_t java_name_index
	}, ; 279
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000130, ; uint32_t type_token_id
		i32 78; uint32_t java_name_index
	}, ; 280
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 881; uint32_t java_name_index
	}, ; 281
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000313, ; uint32_t type_token_id
		i32 321; uint32_t java_name_index
	}, ; 282
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 601; uint32_t java_name_index
	}, ; 283
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 818; uint32_t java_name_index
	}, ; 284
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000199, ; uint32_t type_token_id
		i32 143; uint32_t java_name_index
	}, ; 285
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 450; uint32_t java_name_index
	}, ; 286
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 880; uint32_t java_name_index
	}, ; 287
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 1082; uint32_t java_name_index
	}, ; 288
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000300, ; uint32_t type_token_id
		i32 303; uint32_t java_name_index
	}, ; 289
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1196; uint32_t java_name_index
	}, ; 290
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 550; uint32_t java_name_index
	}, ; 291
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 73; uint32_t java_name_index
	}, ; 292
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 595; uint32_t java_name_index
	}, ; 293
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000287, ; uint32_t type_token_id
		i32 259; uint32_t java_name_index
	}, ; 294
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 429; uint32_t java_name_index
	}, ; 295
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 49; uint32_t java_name_index
	}, ; 296
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000373, ; uint32_t type_token_id
		i32 385; uint32_t java_name_index
	}, ; 297
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 230; uint32_t java_name_index
	}, ; 298
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000174, ; uint32_t type_token_id
		i32 1119; uint32_t java_name_index
	}, ; 299
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 111; uint32_t java_name_index
	}, ; 300
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1148; uint32_t java_name_index
	}, ; 301
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 220; uint32_t java_name_index
	}, ; 302
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000339, ; uint32_t type_token_id
		i32 351; uint32_t java_name_index
	}, ; 303
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000117, ; uint32_t type_token_id
		i32 65; uint32_t java_name_index
	}, ; 304
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 945; uint32_t java_name_index
	}, ; 305
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 981; uint32_t java_name_index
	}, ; 306
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 48; uint32_t java_name_index
	}, ; 307
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 532; uint32_t java_name_index
	}, ; 308
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 527; uint32_t java_name_index
	}, ; 309
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 178; uint32_t java_name_index
	}, ; 310
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1228; uint32_t java_name_index
	}, ; 311
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 473; uint32_t java_name_index
	}, ; 312
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 566; uint32_t java_name_index
	}, ; 313
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 842; uint32_t java_name_index
	}, ; 314
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 529; uint32_t java_name_index
	}, ; 315
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 316
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200062e, ; uint32_t type_token_id
		i32 1055; uint32_t java_name_index
	}, ; 317
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 915; uint32_t java_name_index
	}, ; 318
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 63; uint32_t java_name_index
	}, ; 319
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 1226; uint32_t java_name_index
	}, ; 320
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001eb, ; uint32_t type_token_id
		i32 194; uint32_t java_name_index
	}, ; 321
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000176, ; uint32_t type_token_id
		i32 119; uint32_t java_name_index
	}, ; 322
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 730; uint32_t java_name_index
	}, ; 323
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 605; uint32_t java_name_index
	}, ; 324
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 795; uint32_t java_name_index
	}, ; 325
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 56; uint32_t java_name_index
	}, ; 326
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 779; uint32_t java_name_index
	}, ; 327
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 592; uint32_t java_name_index
	}, ; 328
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 734; uint32_t java_name_index
	}, ; 329
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 844; uint32_t java_name_index
	}, ; 330
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000180, ; uint32_t type_token_id
		i32 124; uint32_t java_name_index
	}, ; 331
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 466; uint32_t java_name_index
	}, ; 332
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000391, ; uint32_t type_token_id
		i32 992; uint32_t java_name_index
	}, ; 333
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000145, ; uint32_t type_token_id
		i32 92; uint32_t java_name_index
	}, ; 334
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000369, ; uint32_t type_token_id
		i32 975; uint32_t java_name_index
	}, ; 335
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000426, ; uint32_t type_token_id
		i32 490; uint32_t java_name_index
	}, ; 336
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1238; uint32_t java_name_index
	}, ; 337
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 1065; uint32_t java_name_index
	}, ; 338
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000630, ; uint32_t type_token_id
		i32 1057; uint32_t java_name_index
	}, ; 339
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 621; uint32_t java_name_index
	}, ; 340
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002a5, ; uint32_t type_token_id
		i32 275; uint32_t java_name_index
	}, ; 341
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 229; uint32_t java_name_index
	}, ; 342
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 708; uint32_t java_name_index
	}, ; 343
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 874; uint32_t java_name_index
	}, ; 344
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200060c, ; uint32_t type_token_id
		i32 998; uint32_t java_name_index
	}, ; 345
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 718; uint32_t java_name_index
	}, ; 346
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002ee, ; uint32_t type_token_id
		i32 289; uint32_t java_name_index
	}, ; 347
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 509; uint32_t java_name_index
	}, ; 348
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1230; uint32_t java_name_index
	}, ; 349
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002f0, ; uint32_t type_token_id
		i32 291; uint32_t java_name_index
	}, ; 350
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000194, ; uint32_t type_token_id
		i32 138; uint32_t java_name_index
	}, ; 351
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 747; uint32_t java_name_index
	}, ; 352
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 176; uint32_t java_name_index
	}, ; 353
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000394, ; uint32_t type_token_id
		i32 404; uint32_t java_name_index
	}, ; 354
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000320, ; uint32_t type_token_id
		i32 333; uint32_t java_name_index
	}, ; 355
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 987; uint32_t java_name_index
	}, ; 356
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1188; uint32_t java_name_index
	}, ; 357
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 652; uint32_t java_name_index
	}, ; 358
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 680; uint32_t java_name_index
	}, ; 359
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000610, ; uint32_t type_token_id
		i32 1001; uint32_t java_name_index
	}, ; 360
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 785; uint32_t java_name_index
	}, ; 361
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 903; uint32_t java_name_index
	}, ; 362
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 363
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 865; uint32_t java_name_index
	}, ; 364
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1219; uint32_t java_name_index
	}, ; 365
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 931; uint32_t java_name_index
	}, ; 366
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000052, ; uint32_t type_token_id
		i32 826; uint32_t java_name_index
	}, ; 367
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 644; uint32_t java_name_index
	}, ; 368
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 172; uint32_t java_name_index
	}, ; 369
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 774; uint32_t java_name_index
	}, ; 370
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 210; uint32_t java_name_index
	}, ; 371
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 431; uint32_t java_name_index
	}, ; 372
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 736; uint32_t java_name_index
	}, ; 373
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 96; uint32_t java_name_index
	}, ; 374
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 942; uint32_t java_name_index
	}, ; 375
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 688; uint32_t java_name_index
	}, ; 376
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 75; uint32_t java_name_index
	}, ; 377
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 701; uint32_t java_name_index
	}, ; 378
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1187; uint32_t java_name_index
	}, ; 379
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1092; uint32_t java_name_index
	}, ; 380
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1255; uint32_t java_name_index
	}, ; 381
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000435, ; uint32_t type_token_id
		i32 504; uint32_t java_name_index
	}, ; 382
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 581; uint32_t java_name_index
	}, ; 383
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 840; uint32_t java_name_index
	}, ; 384
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1070; uint32_t java_name_index
	}, ; 385
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 157; uint32_t java_name_index
	}, ; 386
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000334, ; uint32_t type_token_id
		i32 1132; uint32_t java_name_index
	}, ; 387
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 615; uint32_t java_name_index
	}, ; 388
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 80; uint32_t java_name_index
	}, ; 389
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 390
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 577; uint32_t java_name_index
	}, ; 391
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 991; uint32_t java_name_index
	}, ; 392
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002c5, ; uint32_t type_token_id
		i32 280; uint32_t java_name_index
	}, ; 393
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 1246; uint32_t java_name_index
	}, ; 394
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 813; uint32_t java_name_index
	}, ; 395
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000306, ; uint32_t type_token_id
		i32 309; uint32_t java_name_index
	}, ; 396
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000337, ; uint32_t type_token_id
		i32 1133; uint32_t java_name_index
	}, ; 397
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 589; uint32_t java_name_index
	}, ; 398
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 648; uint32_t java_name_index
	}, ; 399
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200062f, ; uint32_t type_token_id
		i32 1056; uint32_t java_name_index
	}, ; 400
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1144; uint32_t java_name_index
	}, ; 401
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 618; uint32_t java_name_index
	}, ; 402
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000436, ; uint32_t type_token_id
		i32 505; uint32_t java_name_index
	}, ; 403
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000315, ; uint32_t type_token_id
		i32 323; uint32_t java_name_index
	}, ; 404
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 579; uint32_t java_name_index
	}, ; 405
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 406
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 812; uint32_t java_name_index
	}, ; 407
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 154; uint32_t java_name_index
	}, ; 408
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 1259; uint32_t java_name_index
	}, ; 409
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000349, ; uint32_t type_token_id
		i32 362; uint32_t java_name_index
	}, ; 410
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 835; uint32_t java_name_index
	}, ; 411
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 564; uint32_t java_name_index
	}, ; 412
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 980; uint32_t java_name_index
	}, ; 413
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000379, ; uint32_t type_token_id
		i32 390; uint32_t java_name_index
	}, ; 414
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 570; uint32_t java_name_index
	}, ; 415
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200044f, ; uint32_t type_token_id
		i32 521; uint32_t java_name_index
	}, ; 416
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 424; uint32_t java_name_index
	}, ; 417
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000319, ; uint32_t type_token_id
		i32 327; uint32_t java_name_index
	}, ; 418
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 231; uint32_t java_name_index
	}, ; 419
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1024; uint32_t java_name_index
	}, ; 420
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 649; uint32_t java_name_index
	}, ; 421
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 188; uint32_t java_name_index
	}, ; 422
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 477; uint32_t java_name_index
	}, ; 423
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 781; uint32_t java_name_index
	}, ; 424
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 536; uint32_t java_name_index
	}, ; 425
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000141, ; uint32_t type_token_id
		i32 89; uint32_t java_name_index
	}, ; 426
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 657; uint32_t java_name_index
	}, ; 427
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 976; uint32_t java_name_index
	}, ; 428
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1234; uint32_t java_name_index
	}, ; 429
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000352, ; uint32_t type_token_id
		i32 366; uint32_t java_name_index
	}, ; 430
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 122; uint32_t java_name_index
	}, ; 431
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000144, ; uint32_t type_token_id
		i32 91; uint32_t java_name_index
	}, ; 432
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 1004; uint32_t java_name_index
	}, ; 433
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 832; uint32_t java_name_index
	}, ; 434
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000297, ; uint32_t type_token_id
		i32 266; uint32_t java_name_index
	}, ; 435
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1074; uint32_t java_name_index
	}, ; 436
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002c7, ; uint32_t type_token_id
		i32 281; uint32_t java_name_index
	}, ; 437
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 438
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 699; uint32_t java_name_index
	}, ; 439
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 344; uint32_t java_name_index
	}, ; 440
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 195; uint32_t java_name_index
	}, ; 441
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 448; uint32_t java_name_index
	}, ; 442
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 482; uint32_t java_name_index
	}, ; 443
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 647; uint32_t java_name_index
	}, ; 444
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000625, ; uint32_t type_token_id
		i32 1035; uint32_t java_name_index
	}, ; 445
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000039, ; uint32_t type_token_id
		i32 600; uint32_t java_name_index
	}, ; 446
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 861; uint32_t java_name_index
	}, ; 447
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200011d, ; uint32_t type_token_id
		i32 67; uint32_t java_name_index
	}, ; 448
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 878; uint32_t java_name_index
	}, ; 449
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000179, ; uint32_t type_token_id
		i32 1124; uint32_t java_name_index
	}, ; 450
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 451
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 954; uint32_t java_name_index
	}, ; 452
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 437; uint32_t java_name_index
	}, ; 453
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 454
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 723; uint32_t java_name_index
	}, ; 455
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 449; uint32_t java_name_index
	}, ; 456
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 183; uint32_t java_name_index
	}, ; 457
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200033f, ; uint32_t type_token_id
		i32 354; uint32_t java_name_index
	}, ; 458
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000167, ; uint32_t type_token_id
		i32 1109; uint32_t java_name_index
	}, ; 459
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000303, ; uint32_t type_token_id
		i32 306; uint32_t java_name_index
	}, ; 460
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 890; uint32_t java_name_index
	}, ; 461
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 465; uint32_t java_name_index
	}, ; 462
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 895; uint32_t java_name_index
	}, ; 463
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000251, ; uint32_t type_token_id
		i32 1138; uint32_t java_name_index
	}, ; 464
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000108, ; uint32_t type_token_id
		i32 58; uint32_t java_name_index
	}, ; 465
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 400; uint32_t java_name_index
	}, ; 466
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 666; uint32_t java_name_index
	}, ; 467
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 620; uint32_t java_name_index
	}, ; 468
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000224, ; uint32_t type_token_id
		i32 217; uint32_t java_name_index
	}, ; 469
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 153; uint32_t java_name_index
	}, ; 470
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 772; uint32_t java_name_index
	}, ; 471
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 628; uint32_t java_name_index
	}, ; 472
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020005f7, ; uint32_t type_token_id
		i32 977; uint32_t java_name_index
	}, ; 473
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 870; uint32_t java_name_index
	}, ; 474
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000095, ; uint32_t type_token_id
		i32 705; uint32_t java_name_index
	}, ; 475
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1177; uint32_t java_name_index
	}, ; 476
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 1245; uint32_t java_name_index
	}, ; 477
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 478
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1073; uint32_t java_name_index
	}, ; 479
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 758; uint32_t java_name_index
	}, ; 480
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 436; uint32_t java_name_index
	}, ; 481
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000305, ; uint32_t type_token_id
		i32 308; uint32_t java_name_index
	}, ; 482
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000604, ; uint32_t type_token_id
		i32 986; uint32_t java_name_index
	}, ; 483
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001da, ; uint32_t type_token_id
		i32 184; uint32_t java_name_index
	}, ; 484
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200042f, ; uint32_t type_token_id
		i32 499; uint32_t java_name_index
	}, ; 485
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000446, ; uint32_t type_token_id
		i32 514; uint32_t java_name_index
	}, ; 486
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 202; uint32_t java_name_index
	}, ; 487
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 488
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 1040; uint32_t java_name_index
	}, ; 489
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 901; uint32_t java_name_index
	}, ; 490
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 273; uint32_t java_name_index
	}, ; 491
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000423, ; uint32_t type_token_id
		i32 487; uint32_t java_name_index
	}, ; 492
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000161, ; uint32_t type_token_id
		i32 1105; uint32_t java_name_index
	}, ; 493
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 189; uint32_t java_name_index
	}, ; 494
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 68; uint32_t java_name_index
	}, ; 495
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000130, ; uint32_t type_token_id
		i32 1085; uint32_t java_name_index
	}, ; 496
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000283, ; uint32_t type_token_id
		i32 256; uint32_t java_name_index
	}, ; 497
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000129, ; uint32_t type_token_id
		i32 72; uint32_t java_name_index
	}, ; 498
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 655; uint32_t java_name_index
	}, ; 499
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 765; uint32_t java_name_index
	}, ; 500
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000120, ; uint32_t type_token_id
		i32 69; uint32_t java_name_index
	}, ; 501
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 588; uint32_t java_name_index
	}, ; 502
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000221, ; uint32_t type_token_id
		i32 215; uint32_t java_name_index
	}, ; 503
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 669; uint32_t java_name_index
	}, ; 504
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 757; uint32_t java_name_index
	}, ; 505
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000424, ; uint32_t type_token_id
		i32 488; uint32_t java_name_index
	}, ; 506
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1175; uint32_t java_name_index
	}, ; 507
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 263; uint32_t java_name_index
	}, ; 508
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1190; uint32_t java_name_index
	}, ; 509
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200025c, ; uint32_t type_token_id
		i32 240; uint32_t java_name_index
	}, ; 510
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000347, ; uint32_t type_token_id
		i32 360; uint32_t java_name_index
	}, ; 511
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 468; uint32_t java_name_index
	}, ; 512
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 888; uint32_t java_name_index
	}, ; 513
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 76; uint32_t java_name_index
	}, ; 514
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 165; uint32_t java_name_index
	}, ; 515
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 403; uint32_t java_name_index
	}, ; 516
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1250; uint32_t java_name_index
	}, ; 517
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000408, ; uint32_t type_token_id
		i32 472; uint32_t java_name_index
	}, ; 518
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 836; uint32_t java_name_index
	}, ; 519
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000175, ; uint32_t type_token_id
		i32 118; uint32_t java_name_index
	}, ; 520
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200033a, ; uint32_t type_token_id
		i32 352; uint32_t java_name_index
	}, ; 521
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 1115; uint32_t java_name_index
	}, ; 522
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 940; uint32_t java_name_index
	}, ; 523
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001ac, ; uint32_t type_token_id
		i32 156; uint32_t java_name_index
	}, ; 524
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000346, ; uint32_t type_token_id
		i32 359; uint32_t java_name_index
	}, ; 525
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1022; uint32_t java_name_index
	}, ; 526
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 740; uint32_t java_name_index
	}, ; 527
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000312, ; uint32_t type_token_id
		i32 320; uint32_t java_name_index
	}, ; 528
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200055e, ; uint32_t type_token_id
		i32 960; uint32_t java_name_index
	}, ; 529
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000370, ; uint32_t type_token_id
		i32 383; uint32_t java_name_index
	}, ; 530
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 531
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 469; uint32_t java_name_index
	}, ; 532
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 846; uint32_t java_name_index
	}, ; 533
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 899; uint32_t java_name_index
	}, ; 534
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 732; uint32_t java_name_index
	}, ; 535
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 115; uint32_t java_name_index
	}, ; 536
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1209; uint32_t java_name_index
	}, ; 537
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 190; uint32_t java_name_index
	}, ; 538
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1174; uint32_t java_name_index
	}, ; 539
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 906; uint32_t java_name_index
	}, ; 540
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 635; uint32_t java_name_index
	}, ; 541
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 651; uint32_t java_name_index
	}, ; 542
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 1059; uint32_t java_name_index
	}, ; 543
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000334, ; uint32_t type_token_id
		i32 348; uint32_t java_name_index
	}, ; 544
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 759; uint32_t java_name_index
	}, ; 545
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 1135; uint32_t java_name_index
	}, ; 546
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1102; uint32_t java_name_index
	}, ; 547
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 1247; uint32_t java_name_index
	}, ; 548
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 515; uint32_t java_name_index
	}, ; 549
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1215; uint32_t java_name_index
	}, ; 550
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 602; uint32_t java_name_index
	}, ; 551
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 107; uint32_t java_name_index
	}, ; 552
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 535; uint32_t java_name_index
	}, ; 553
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000140, ; uint32_t type_token_id
		i32 88; uint32_t java_name_index
	}, ; 554
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 562; uint32_t java_name_index
	}, ; 555
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000270, ; uint32_t type_token_id
		i32 247; uint32_t java_name_index
	}, ; 556
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000269, ; uint32_t type_token_id
		i32 245; uint32_t java_name_index
	}, ; 557
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 656; uint32_t java_name_index
	}, ; 558
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000322, ; uint32_t type_token_id
		i32 335; uint32_t java_name_index
	}, ; 559
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 1046; uint32_t java_name_index
	}, ; 560
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 155; uint32_t java_name_index
	}, ; 561
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 372; uint32_t java_name_index
	}, ; 562
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1186; uint32_t java_name_index
	}, ; 563
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 617; uint32_t java_name_index
	}, ; 564
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000325, ; uint32_t type_token_id
		i32 337; uint32_t java_name_index
	}, ; 565
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1143; uint32_t java_name_index
	}, ; 566
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 132; uint32_t java_name_index
	}, ; 567
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 885; uint32_t java_name_index
	}, ; 568
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1207; uint32_t java_name_index
	}, ; 569
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 1096; uint32_t java_name_index
	}, ; 570
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 391; uint32_t java_name_index
	}, ; 571
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 935; uint32_t java_name_index
	}, ; 572
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 1083; uint32_t java_name_index
	}, ; 573
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 57; uint32_t java_name_index
	}, ; 574
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 458; uint32_t java_name_index
	}, ; 575
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000359, ; uint32_t type_token_id
		i32 370; uint32_t java_name_index
	}, ; 576
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000344, ; uint32_t type_token_id
		i32 358; uint32_t java_name_index
	}, ; 577
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 1151; uint32_t java_name_index
	}, ; 578
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 760; uint32_t java_name_index
	}, ; 579
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1251; uint32_t java_name_index
	}, ; 580
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 1126; uint32_t java_name_index
	}, ; 581
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020005e5, ; uint32_t type_token_id
		i32 964; uint32_t java_name_index
	}, ; 582
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 599; uint32_t java_name_index
	}, ; 583
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000395, ; uint32_t type_token_id
		i32 996; uint32_t java_name_index
	}, ; 584
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 955; uint32_t java_name_index
	}, ; 585
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1193; uint32_t java_name_index
	}, ; 586
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1214; uint32_t java_name_index
	}, ; 587
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 399; uint32_t java_name_index
	}, ; 588
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000422, ; uint32_t type_token_id
		i32 486; uint32_t java_name_index
	}, ; 589
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002d5, ; uint32_t type_token_id
		i32 1103; uint32_t java_name_index
	}, ; 590
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 54; uint32_t java_name_index
	}, ; 591
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 342; uint32_t java_name_index
	}, ; 592
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000342, ; uint32_t type_token_id
		i32 357; uint32_t java_name_index
	}, ; 593
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1203; uint32_t java_name_index
	}, ; 594
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 852; uint32_t java_name_index
	}, ; 595
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 626; uint32_t java_name_index
	}, ; 596
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002a6, ; uint32_t type_token_id
		i32 276; uint32_t java_name_index
	}, ; 597
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 77; uint32_t java_name_index
	}, ; 598
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000222, ; uint32_t type_token_id
		i32 216; uint32_t java_name_index
	}, ; 599
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 53; uint32_t java_name_index
	}, ; 600
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 375; uint32_t java_name_index
	}, ; 601
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 697; uint32_t java_name_index
	}, ; 602
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 98; uint32_t java_name_index
	}, ; 603
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 687; uint32_t java_name_index
	}, ; 604
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000185, ; uint32_t type_token_id
		i32 129; uint32_t java_name_index
	}, ; 605
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 166; uint32_t java_name_index
	}, ; 606
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 872; uint32_t java_name_index
	}, ; 607
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1205; uint32_t java_name_index
	}, ; 608
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000407, ; uint32_t type_token_id
		i32 471; uint32_t java_name_index
	}, ; 609
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 610
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 480; uint32_t java_name_index
	}, ; 611
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 949; uint32_t java_name_index
	}, ; 612
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 578; uint32_t java_name_index
	}, ; 613
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 47; uint32_t java_name_index
	}, ; 614
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 262; uint32_t java_name_index
	}, ; 615
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 87; uint32_t java_name_index
	}, ; 616
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1253; uint32_t java_name_index
	}, ; 617
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000258, ; uint32_t type_token_id
		i32 1140; uint32_t java_name_index
	}, ; 618
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 401; uint32_t java_name_index
	}, ; 619
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 767; uint32_t java_name_index
	}, ; 620
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000365, ; uint32_t type_token_id
		i32 377; uint32_t java_name_index
	}, ; 621
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 440; uint32_t java_name_index
	}, ; 622
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 1134; uint32_t java_name_index
	}, ; 623
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 696; uint32_t java_name_index
	}, ; 624
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001b3, ; uint32_t type_token_id
		i32 162; uint32_t java_name_index
	}, ; 625
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1152; uint32_t java_name_index
	}, ; 626
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000118, ; uint32_t type_token_id
		i32 66; uint32_t java_name_index
	}, ; 627
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 315; uint32_t java_name_index
	}, ; 628
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 629
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 637; uint32_t java_name_index
	}, ; 630
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000371, ; uint32_t type_token_id
		i32 384; uint32_t java_name_index
	}, ; 631
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1184; uint32_t java_name_index
	}, ; 632
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1189; uint32_t java_name_index
	}, ; 633
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000340, ; uint32_t type_token_id
		i32 355; uint32_t java_name_index
	}, ; 634
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 803; uint32_t java_name_index
	}, ; 635
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 808; uint32_t java_name_index
	}, ; 636
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 180; uint32_t java_name_index
	}, ; 637
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 966; uint32_t java_name_index
	}, ; 638
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 783; uint32_t java_name_index
	}, ; 639
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 766; uint32_t java_name_index
	}, ; 640
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1244; uint32_t java_name_index
	}, ; 641
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 928; uint32_t java_name_index
	}, ; 642
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 1049; uint32_t java_name_index
	}, ; 643
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 681; uint32_t java_name_index
	}, ; 644
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000296, ; uint32_t type_token_id
		i32 265; uint32_t java_name_index
	}, ; 645
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000086, ; uint32_t type_token_id
		i32 1227; uint32_t java_name_index
	}, ; 646
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1170; uint32_t java_name_index
	}, ; 647
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 764; uint32_t java_name_index
	}, ; 648
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1229; uint32_t java_name_index
	}, ; 649
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 934; uint32_t java_name_index
	}, ; 650
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000124, ; uint32_t type_token_id
		i32 71; uint32_t java_name_index
	}, ; 651
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000308, ; uint32_t type_token_id
		i32 311; uint32_t java_name_index
	}, ; 652
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 435; uint32_t java_name_index
	}, ; 653
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 936; uint32_t java_name_index
	}, ; 654
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 775; uint32_t java_name_index
	}, ; 655
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 656
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000361, ; uint32_t type_token_id
		i32 374; uint32_t java_name_index
	}, ; 657
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 663; uint32_t java_name_index
	}, ; 658
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 1041; uint32_t java_name_index
	}, ; 659
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 660
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000089, ; uint32_t type_token_id
		i32 642; uint32_t java_name_index
	}, ; 661
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1157; uint32_t java_name_index
	}, ; 662
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 821; uint32_t java_name_index
	}, ; 663
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 834; uint32_t java_name_index
	}, ; 664
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 632; uint32_t java_name_index
	}, ; 665
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 769; uint32_t java_name_index
	}, ; 666
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000197, ; uint32_t type_token_id
		i32 1130; uint32_t java_name_index
	}, ; 667
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000170, ; uint32_t type_token_id
		i32 1117; uint32_t java_name_index
	}, ; 668
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 573; uint32_t java_name_index
	}, ; 669
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 698; uint32_t java_name_index
	}, ; 670
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 432; uint32_t java_name_index
	}, ; 671
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 428; uint32_t java_name_index
	}, ; 672
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 848; uint32_t java_name_index
	}, ; 673
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000064, ; uint32_t type_token_id
		i32 625; uint32_t java_name_index
	}, ; 674
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000391, ; uint32_t type_token_id
		i32 402; uint32_t java_name_index
	}, ; 675
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000129, ; uint32_t type_token_id
		i32 1078; uint32_t java_name_index
	}, ; 676
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1204; uint32_t java_name_index
	}, ; 677
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002a4, ; uint32_t type_token_id
		i32 274; uint32_t java_name_index
	}, ; 678
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1154; uint32_t java_name_index
	}, ; 679
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000364, ; uint32_t type_token_id
		i32 376; uint32_t java_name_index
	}, ; 680
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 741; uint32_t java_name_index
	}, ; 681
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 661; uint32_t java_name_index
	}, ; 682
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000310, ; uint32_t type_token_id
		i32 318; uint32_t java_name_index
	}, ; 683
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1258; uint32_t java_name_index
	}, ; 684
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 544; uint32_t java_name_index
	}, ; 685
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 883; uint32_t java_name_index
	}, ; 686
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1181; uint32_t java_name_index
	}, ; 687
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000365, ; uint32_t type_token_id
		i32 973; uint32_t java_name_index
	}, ; 688
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1179; uint32_t java_name_index
	}, ; 689
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 930; uint32_t java_name_index
	}, ; 690
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 511; uint32_t java_name_index
	}, ; 691
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 797; uint32_t java_name_index
	}, ; 692
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 1087; uint32_t java_name_index
	}, ; 693
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000288, ; uint32_t type_token_id
		i32 260; uint32_t java_name_index
	}, ; 694
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 556; uint32_t java_name_index
	}, ; 695
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 659; uint32_t java_name_index
	}, ; 696
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000378, ; uint32_t type_token_id
		i32 389; uint32_t java_name_index
	}, ; 697
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 288; uint32_t java_name_index
	}, ; 698
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 576; uint32_t java_name_index
	}, ; 699
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000363, ; uint32_t type_token_id
		i32 972; uint32_t java_name_index
	}, ; 700
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000439, ; uint32_t type_token_id
		i32 507; uint32_t java_name_index
	}, ; 701
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000032, ; uint32_t type_token_id
		i32 917; uint32_t java_name_index
	}, ; 702
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000148, ; uint32_t type_token_id
		i32 94; uint32_t java_name_index
	}, ; 703
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 97; uint32_t java_name_index
	}, ; 704
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 700; uint32_t java_name_index
	}, ; 705
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 664; uint32_t java_name_index
	}, ; 706
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000622, ; uint32_t type_token_id
		i32 1021; uint32_t java_name_index
	}, ; 707
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200027f, ; uint32_t type_token_id
		i32 254; uint32_t java_name_index
	}, ; 708
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 729; uint32_t java_name_index
	}, ; 709
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 198; uint32_t java_name_index
	}, ; 710
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1163; uint32_t java_name_index
	}, ; 711
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 557; uint32_t java_name_index
	}, ; 712
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 414; uint32_t java_name_index
	}, ; 713
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 330; uint32_t java_name_index
	}, ; 714
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000158, ; uint32_t type_token_id
		i32 106; uint32_t java_name_index
	}, ; 715
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000451, ; uint32_t type_token_id
		i32 523; uint32_t java_name_index
	}, ; 716
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 684; uint32_t java_name_index
	}, ; 717
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000374, ; uint32_t type_token_id
		i32 386; uint32_t java_name_index
	}, ; 718
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000113, ; uint32_t type_token_id
		i32 64; uint32_t java_name_index
	}, ; 719
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 939; uint32_t java_name_index
	}, ; 720
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 1129; uint32_t java_name_index
	}, ; 721
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 596; uint32_t java_name_index
	}, ; 722
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000614, ; uint32_t type_token_id
		i32 1005; uint32_t java_name_index
	}, ; 723
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 863; uint32_t java_name_index
	}, ; 724
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 430; uint32_t java_name_index
	}, ; 725
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000311, ; uint32_t type_token_id
		i32 319; uint32_t java_name_index
	}, ; 726
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 561; uint32_t java_name_index
	}, ; 727
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 1050; uint32_t java_name_index
	}, ; 728
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1218; uint32_t java_name_index
	}, ; 729
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 460; uint32_t java_name_index
	}, ; 730
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 234; uint32_t java_name_index
	}, ; 731
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 1248; uint32_t java_name_index
	}, ; 732
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 549; uint32_t java_name_index
	}, ; 733
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 744; uint32_t java_name_index
	}, ; 734
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 735
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 1128; uint32_t java_name_index
	}, ; 736
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 737
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000142, ; uint32_t type_token_id
		i32 1089; uint32_t java_name_index
	}, ; 738
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020006a2, ; uint32_t type_token_id
		i32 979; uint32_t java_name_index
	}, ; 739
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200060f, ; uint32_t type_token_id
		i32 1000; uint32_t java_name_index
	}, ; 740
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000392, ; uint32_t type_token_id
		i32 993; uint32_t java_name_index
	}, ; 741
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 859; uint32_t java_name_index
	}, ; 742
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1158; uint32_t java_name_index
	}, ; 743
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 744
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200017f, ; uint32_t type_token_id
		i32 123; uint32_t java_name_index
	}, ; 745
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000396, ; uint32_t type_token_id
		i32 997; uint32_t java_name_index
	}, ; 746
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1256; uint32_t java_name_index
	}, ; 747
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 409; uint32_t java_name_index
	}, ; 748
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 668; uint32_t java_name_index
	}, ; 749
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 379; uint32_t java_name_index
	}, ; 750
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 222; uint32_t java_name_index
	}, ; 751
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 847; uint32_t java_name_index
	}, ; 752
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000127, ; uint32_t type_token_id
		i32 1077; uint32_t java_name_index
	}, ; 753
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 682; uint32_t java_name_index
	}, ; 754
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 843; uint32_t java_name_index
	}, ; 755
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 726; uint32_t java_name_index
	}, ; 756
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 575; uint32_t java_name_index
	}, ; 757
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1231; uint32_t java_name_index
	}, ; 758
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 451; uint32_t java_name_index
	}, ; 759
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 1093; uint32_t java_name_index
	}, ; 760
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000331, ; uint32_t type_token_id
		i32 345; uint32_t java_name_index
	}, ; 761
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 405; uint32_t java_name_index
	}, ; 762
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000063, ; uint32_t type_token_id
		i32 624; uint32_t java_name_index
	}, ; 763
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 236; uint32_t java_name_index
	}, ; 764
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 421; uint32_t java_name_index
	}, ; 765
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 1071; uint32_t java_name_index
	}, ; 766
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 85; uint32_t java_name_index
	}, ; 767
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1072; uint32_t java_name_index
	}, ; 768
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 530; uint32_t java_name_index
	}, ; 769
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 175; uint32_t java_name_index
	}, ; 770
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 420; uint32_t java_name_index
	}, ; 771
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 371; uint32_t java_name_index
	}, ; 772
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 59; uint32_t java_name_index
	}, ; 773
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200026c, ; uint32_t type_token_id
		i32 246; uint32_t java_name_index
	}, ; 774
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 763; uint32_t java_name_index
	}, ; 775
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 1099; uint32_t java_name_index
	}, ; 776
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 720; uint32_t java_name_index
	}, ; 777
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 365; uint32_t java_name_index
	}, ; 778
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000377, ; uint32_t type_token_id
		i32 388; uint32_t java_name_index
	}, ; 779
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 613; uint32_t java_name_index
	}, ; 780
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 1224; uint32_t java_name_index
	}, ; 781
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000387, ; uint32_t type_token_id
		i32 398; uint32_t java_name_index
	}, ; 782
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 827; uint32_t java_name_index
	}, ; 783
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 823; uint32_t java_name_index
	}, ; 784
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 817; uint32_t java_name_index
	}, ; 785
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 559; uint32_t java_name_index
	}, ; 786
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 869; uint32_t java_name_index
	}, ; 787
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 455; uint32_t java_name_index
	}, ; 788
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000139, ; uint32_t type_token_id
		i32 83; uint32_t java_name_index
	}, ; 789
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200042e, ; uint32_t type_token_id
		i32 498; uint32_t java_name_index
	}, ; 790
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 791
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1173; uint32_t java_name_index
	}, ; 792
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000157, ; uint32_t type_token_id
		i32 1094; uint32_t java_name_index
	}, ; 793
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 711; uint32_t java_name_index
	}, ; 794
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 795
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000254, ; uint32_t type_token_id
		i32 239; uint32_t java_name_index
	}, ; 796
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000278, ; uint32_t type_token_id
		i32 252; uint32_t java_name_index
	}, ; 797
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 79; uint32_t java_name_index
	}, ; 798
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 893; uint32_t java_name_index
	}, ; 799
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000211, ; uint32_t type_token_id
		i32 206; uint32_t java_name_index
	}, ; 800
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 61; uint32_t java_name_index
	}, ; 801
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000252, ; uint32_t type_token_id
		i32 1139; uint32_t java_name_index
	}, ; 802
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 196; uint32_t java_name_index
	}, ; 803
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 99; uint32_t java_name_index
	}, ; 804
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 1036; uint32_t java_name_index
	}, ; 805
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 806
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 891; uint32_t java_name_index
	}, ; 807
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 641; uint32_t java_name_index
	}, ; 808
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000335, ; uint32_t type_token_id
		i32 349; uint32_t java_name_index
	}, ; 809
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000333, ; uint32_t type_token_id
		i32 1131; uint32_t java_name_index
	}, ; 810
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000321, ; uint32_t type_token_id
		i32 334; uint32_t java_name_index
	}, ; 811
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 187; uint32_t java_name_index
	}, ; 812
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 828; uint32_t java_name_index
	}, ; 813
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 753; uint32_t java_name_index
	}, ; 814
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 796; uint32_t java_name_index
	}, ; 815
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 1064; uint32_t java_name_index
	}, ; 816
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 933; uint32_t java_name_index
	}, ; 817
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 660; uint32_t java_name_index
	}, ; 818
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 114; uint32_t java_name_index
	}, ; 819
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000429, ; uint32_t type_token_id
		i32 493; uint32_t java_name_index
	}, ; 820
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000326, ; uint32_t type_token_id
		i32 338; uint32_t java_name_index
	}, ; 821
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 929; uint32_t java_name_index
	}, ; 822
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 904; uint32_t java_name_index
	}, ; 823
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 639; uint32_t java_name_index
	}, ; 824
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 534; uint32_t java_name_index
	}, ; 825
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 898; uint32_t java_name_index
	}, ; 826
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a4, ; uint32_t type_token_id
		i32 149; uint32_t java_name_index
	}, ; 827
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000163, ; uint32_t type_token_id
		i32 1106; uint32_t java_name_index
	}, ; 828
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001ae, ; uint32_t type_token_id
		i32 158; uint32_t java_name_index
	}, ; 829
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000602, ; uint32_t type_token_id
		i32 985; uint32_t java_name_index
	}, ; 830
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000158, ; uint32_t type_token_id
		i32 1095; uint32_t java_name_index
	}, ; 831
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 622; uint32_t java_name_index
	}, ; 832
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000226, ; uint32_t type_token_id
		i32 218; uint32_t java_name_index
	}, ; 833
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 1025; uint32_t java_name_index
	}, ; 834
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 476; uint32_t java_name_index
	}, ; 835
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 749; uint32_t java_name_index
	}, ; 836
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1192; uint32_t java_name_index
	}, ; 837
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001f1, ; uint32_t type_token_id
		i32 197; uint32_t java_name_index
	}, ; 838
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 470; uint32_t java_name_index
	}, ; 839
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000285, ; uint32_t type_token_id
		i32 258; uint32_t java_name_index
	}, ; 840
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 983; uint32_t java_name_index
	}, ; 841
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 833; uint32_t java_name_index
	}, ; 842
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 587; uint32_t java_name_index
	}, ; 843
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000218, ; uint32_t type_token_id
		i32 211; uint32_t java_name_index
	}, ; 844
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 392; uint32_t java_name_index
	}, ; 845
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000450, ; uint32_t type_token_id
		i32 522; uint32_t java_name_index
	}, ; 846
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 692; uint32_t java_name_index
	}, ; 847
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 233; uint32_t java_name_index
	}, ; 848
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 134; uint32_t java_name_index
	}, ; 849
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 565; uint32_t java_name_index
	}, ; 850
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 367; uint32_t java_name_index
	}, ; 851
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002fc, ; uint32_t type_token_id
		i32 299; uint32_t java_name_index
	}, ; 852
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000093, ; uint32_t type_token_id
		i32 703; uint32_t java_name_index
	}, ; 853
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200023f, ; uint32_t type_token_id
		i32 228; uint32_t java_name_index
	}, ; 854
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 101; uint32_t java_name_index
	}, ; 855
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1162; uint32_t java_name_index
	}, ; 856
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 553; uint32_t java_name_index
	}, ; 857
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 879; uint32_t java_name_index
	}, ; 858
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000428, ; uint32_t type_token_id
		i32 492; uint32_t java_name_index
	}, ; 859
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 1020; uint32_t java_name_index
	}, ; 860
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000142, ; uint32_t type_token_id
		i32 90; uint32_t java_name_index
	}, ; 861
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 235; uint32_t java_name_index
	}, ; 862
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 603; uint32_t java_name_index
	}, ; 863
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 946; uint32_t java_name_index
	}, ; 864
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000291, ; uint32_t type_token_id
		i32 264; uint32_t java_name_index
	}, ; 865
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 422; uint32_t java_name_index
	}, ; 866
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 279; uint32_t java_name_index
	}, ; 867
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 900; uint32_t java_name_index
	}, ; 868
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000466, ; uint32_t type_token_id
		i32 528; uint32_t java_name_index
	}, ; 869
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 144; uint32_t java_name_index
	}, ; 870
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 1026; uint32_t java_name_index
	}, ; 871
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000089, ; uint32_t type_token_id
		i32 857; uint32_t java_name_index
	}, ; 872
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 693; uint32_t java_name_index
	}, ; 873
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000032, ; uint32_t type_token_id
		i32 667; uint32_t java_name_index
	}, ; 874
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 838; uint32_t java_name_index
	}, ; 875
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 1029; uint32_t java_name_index
	}, ; 876
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1066; uint32_t java_name_index
	}, ; 877
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 1039; uint32_t java_name_index
	}, ; 878
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 582; uint32_t java_name_index
	}, ; 879
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 543; uint32_t java_name_index
	}, ; 880
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 604; uint32_t java_name_index
	}, ; 881
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 1047; uint32_t java_name_index
	}, ; 882
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1167; uint32_t java_name_index
	}, ; 883
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000634, ; uint32_t type_token_id
		i32 1061; uint32_t java_name_index
	}, ; 884
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000349, ; uint32_t type_token_id
		i32 962; uint32_t java_name_index
	}, ; 885
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000178, ; uint32_t type_token_id
		i32 120; uint32_t java_name_index
	}, ; 886
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000126, ; uint32_t type_token_id
		i32 1076; uint32_t java_name_index
	}, ; 887
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 1017; uint32_t java_name_index
	}, ; 888
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 462; uint32_t java_name_index
	}, ; 889
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 672; uint32_t java_name_index
	}, ; 890
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200029a, ; uint32_t type_token_id
		i32 268; uint32_t java_name_index
	}, ; 891
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1194; uint32_t java_name_index
	}, ; 892
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 673; uint32_t java_name_index
	}, ; 893
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 725; uint32_t java_name_index
	}, ; 894
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 856; uint32_t java_name_index
	}, ; 895
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 483; uint32_t java_name_index
	}, ; 896
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1164; uint32_t java_name_index
	}, ; 897
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 776; uint32_t java_name_index
	}, ; 898
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 984; uint32_t java_name_index
	}, ; 899
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 1053; uint32_t java_name_index
	}, ; 900
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000154, ; uint32_t type_token_id
		i32 102; uint32_t java_name_index
	}, ; 901
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1213; uint32_t java_name_index
	}, ; 902
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 610; uint32_t java_name_index
	}, ; 903
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a7, ; uint32_t type_token_id
		i32 151; uint32_t java_name_index
	}, ; 904
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 714; uint32_t java_name_index
	}, ; 905
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 906
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000397, ; uint32_t type_token_id
		i32 999; uint32_t java_name_index
	}, ; 907
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 952; uint32_t java_name_index
	}, ; 908
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1008; uint32_t java_name_index
	}, ; 909
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001db, ; uint32_t type_token_id
		i32 185; uint32_t java_name_index
	}, ; 910
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 871; uint32_t java_name_index
	}, ; 911
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000362, ; uint32_t type_token_id
		i32 971; uint32_t java_name_index
	}, ; 912
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002dd, ; uint32_t type_token_id
		i32 1123; uint32_t java_name_index
	}, ; 913
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 683; uint32_t java_name_index
	}, ; 914
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 1101; uint32_t java_name_index
	}, ; 915
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000264, ; uint32_t type_token_id
		i32 242; uint32_t java_name_index
	}, ; 916
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 1019; uint32_t java_name_index
	}, ; 917
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 1016; uint32_t java_name_index
	}, ; 918
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 177; uint32_t java_name_index
	}, ; 919
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 640; uint32_t java_name_index
	}, ; 920
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 650; uint32_t java_name_index
	}, ; 921
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 646; uint32_t java_name_index
	}, ; 922
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 894; uint32_t java_name_index
	}, ; 923
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 892; uint32_t java_name_index
	}, ; 924
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 594; uint32_t java_name_index
	}, ; 925
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000384, ; uint32_t type_token_id
		i32 395; uint32_t java_name_index
	}, ; 926
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 164; uint32_t java_name_index
	}, ; 927
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 316; uint32_t java_name_index
	}, ; 928
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200029e, ; uint32_t type_token_id
		i32 271; uint32_t java_name_index
	}, ; 929
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 1081; uint32_t java_name_index
	}, ; 930
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 630; uint32_t java_name_index
	}, ; 931
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 212; uint32_t java_name_index
	}, ; 932
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 1027; uint32_t java_name_index
	}, ; 933
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 771; uint32_t java_name_index
	}, ; 934
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000304, ; uint32_t type_token_id
		i32 307; uint32_t java_name_index
	}, ; 935
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 619; uint32_t java_name_index
	}, ; 936
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 131; uint32_t java_name_index
	}, ; 937
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1197; uint32_t java_name_index
	}, ; 938
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000348, ; uint32_t type_token_id
		i32 361; uint32_t java_name_index
	}, ; 939
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000149, ; uint32_t type_token_id
		i32 95; uint32_t java_name_index
	}, ; 940
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000253, ; uint32_t type_token_id
		i32 238; uint32_t java_name_index
	}, ; 941
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001be, ; uint32_t type_token_id
		i32 168; uint32_t java_name_index
	}, ; 942
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 237; uint32_t java_name_index
	}, ; 943
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 778; uint32_t java_name_index
	}, ; 944
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 773; uint32_t java_name_index
	}, ; 945
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 908; uint32_t java_name_index
	}, ; 946
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 551; uint32_t java_name_index
	}, ; 947
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1185; uint32_t java_name_index
	}, ; 948
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 569; uint32_t java_name_index
	}, ; 949
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000393, ; uint32_t type_token_id
		i32 994; uint32_t java_name_index
	}, ; 950
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 1137; uint32_t java_name_index
	}, ; 951
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 806; uint32_t java_name_index
	}, ; 952
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 953
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1222; uint32_t java_name_index
	}, ; 954
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002fe, ; uint32_t type_token_id
		i32 301; uint32_t java_name_index
	}, ; 955
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 538; uint32_t java_name_index
	}, ; 956
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 957
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001f5, ; uint32_t type_token_id
		i32 199; uint32_t java_name_index
	}, ; 958
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 911; uint32_t java_name_index
	}, ; 959
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 227; uint32_t java_name_index
	}, ; 960
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 777; uint32_t java_name_index
	}, ; 961
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 790; uint32_t java_name_index
	}, ; 962
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 1031; uint32_t java_name_index
	}, ; 963
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200027d, ; uint32_t type_token_id
		i32 253; uint32_t java_name_index
	}, ; 964
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200031d, ; uint32_t type_token_id
		i32 331; uint32_t java_name_index
	}, ; 965
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 805; uint32_t java_name_index
	}, ; 966
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000081, ; uint32_t type_token_id
		i32 850; uint32_t java_name_index
	}, ; 967
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 968
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 146; uint32_t java_name_index
	}, ; 969
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 868; uint32_t java_name_index
	}, ; 970
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 761; uint32_t java_name_index
	}, ; 971
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1225; uint32_t java_name_index
	}, ; 972
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 427; uint32_t java_name_index
	}, ; 973
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 571; uint32_t java_name_index
	}, ; 974
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 1098; uint32_t java_name_index
	}, ; 975
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 811; uint32_t java_name_index
	}, ; 976
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1160; uint32_t java_name_index
	}, ; 977
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 554; uint32_t java_name_index
	}, ; 978
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000699, ; uint32_t type_token_id
		i32 1062; uint32_t java_name_index
	}, ; 979
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000086, ; uint32_t type_token_id
		i32 854; uint32_t java_name_index
	}, ; 980
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000302, ; uint32_t type_token_id
		i32 305; uint32_t java_name_index
	}, ; 981
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 907; uint32_t java_name_index
	}, ; 982
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000301, ; uint32_t type_token_id
		i32 304; uint32_t java_name_index
	}, ; 983
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 733; uint32_t java_name_index
	}, ; 984
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1012; uint32_t java_name_index
	}, ; 985
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 713; uint32_t java_name_index
	}, ; 986
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200033b, ; uint32_t type_token_id
		i32 353; uint32_t java_name_index
	}, ; 987
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1069; uint32_t java_name_index
	}, ; 988
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 816; uint32_t java_name_index
	}, ; 989
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 810; uint32_t java_name_index
	}, ; 990
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 109; uint32_t java_name_index
	}, ; 991
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 786; uint32_t java_name_index
	}, ; 992
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 820; uint32_t java_name_index
	}, ; 993
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 193; uint32_t java_name_index
	}, ; 994
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000267, ; uint32_t type_token_id
		i32 244; uint32_t java_name_index
	}, ; 995
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 675; uint32_t java_name_index
	}, ; 996
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000df, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 997
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 998
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 889; uint32_t java_name_index
	}, ; 999
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 678; uint32_t java_name_index
	}, ; 1000
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 200; uint32_t java_name_index
	}, ; 1001
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1232; uint32_t java_name_index
	}, ; 1002
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200044c, ; uint32_t type_token_id
		i32 519; uint32_t java_name_index
	}, ; 1003
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 380; uint32_t java_name_index
	}, ; 1004
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 606; uint32_t java_name_index
	}, ; 1005
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 277; uint32_t java_name_index
	}, ; 1006
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 918; uint32_t java_name_index
	}, ; 1007
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 920; uint32_t java_name_index
	}, ; 1008
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 953; uint32_t java_name_index
	}, ; 1009
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1010; uint32_t java_name_index
	}, ; 1010
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000052, ; uint32_t type_token_id
		i32 614; uint32_t java_name_index
	}, ; 1011
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 752; uint32_t java_name_index
	}, ; 1012
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000309, ; uint32_t type_token_id
		i32 312; uint32_t java_name_index
	}, ; 1013
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 1033; uint32_t java_name_index
	}, ; 1014
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 1032; uint32_t java_name_index
	}, ; 1015
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 201; uint32_t java_name_index
	}, ; 1016
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 1237; uint32_t java_name_index
	}, ; 1017
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 707; uint32_t java_name_index
	}, ; 1018
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 475; uint32_t java_name_index
	}, ; 1019
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 434; uint32_t java_name_index
	}, ; 1020
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 689; uint32_t java_name_index
	}, ; 1021
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 851; uint32_t java_name_index
	}, ; 1022
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 702; uint32_t java_name_index
	}, ; 1023
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 135; uint32_t java_name_index
	}, ; 1024
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000307, ; uint32_t type_token_id
		i32 310; uint32_t java_name_index
	}, ; 1025
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 728; uint32_t java_name_index
	}, ; 1026
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1233; uint32_t java_name_index
	}, ; 1027
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 116; uint32_t java_name_index
	}, ; 1028
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 724; uint32_t java_name_index
	}, ; 1029
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 1028; uint32_t java_name_index
	}, ; 1030
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000155, ; uint32_t type_token_id
		i32 103; uint32_t java_name_index
	}, ; 1031
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 845; uint32_t java_name_index
	}, ; 1032
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 441; uint32_t java_name_index
	}, ; 1033
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 645; uint32_t java_name_index
	}, ; 1034
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1252; uint32_t java_name_index
	}, ; 1035
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002d3, ; uint32_t type_token_id
		i32 284; uint32_t java_name_index
	}, ; 1036
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 690; uint32_t java_name_index
	}, ; 1037
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 653; uint32_t java_name_index
	}, ; 1038
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000394, ; uint32_t type_token_id
		i32 995; uint32_t java_name_index
	}, ; 1039
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 51; uint32_t java_name_index
	}, ; 1040
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 676; uint32_t java_name_index
	}, ; 1041
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 1009; uint32_t java_name_index
	}, ; 1042
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 583; uint32_t java_name_index
	}, ; 1043
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001b2, ; uint32_t type_token_id
		i32 161; uint32_t java_name_index
	}, ; 1044
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 743; uint32_t java_name_index
	}, ; 1045
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 590; uint32_t java_name_index
	}, ; 1046
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 608; uint32_t java_name_index
	}, ; 1047
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 479; uint32_t java_name_index
	}, ; 1048
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 609; uint32_t java_name_index
	}, ; 1049
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 540; uint32_t java_name_index
	}, ; 1050
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000327, ; uint32_t type_token_id
		i32 339; uint32_t java_name_index
	}, ; 1051
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 807; uint32_t java_name_index
	}, ; 1052
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200069a, ; uint32_t type_token_id
		i32 1063; uint32_t java_name_index
	}, ; 1053
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003df, ; uint32_t type_token_id
		i32 1043; uint32_t java_name_index
	}, ; 1054
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000210, ; uint32_t type_token_id
		i32 205; uint32_t java_name_index
	}, ; 1055
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000431, ; uint32_t type_token_id
		i32 501; uint32_t java_name_index
	}, ; 1056
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 558; uint32_t java_name_index
	}, ; 1057
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 548; uint32_t java_name_index
	}, ; 1058
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003be, ; uint32_t type_token_id
		i32 425; uint32_t java_name_index
	}, ; 1059
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002a2, ; uint32_t type_token_id
		i32 272; uint32_t java_name_index
	}, ; 1060
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 738; uint32_t java_name_index
	}, ; 1061
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 912; uint32_t java_name_index
	}, ; 1062
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 789; uint32_t java_name_index
	}, ; 1063
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 283; uint32_t java_name_index
	}, ; 1064
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200021d, ; uint32_t type_token_id
		i32 213; uint32_t java_name_index
	}, ; 1065
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 884; uint32_t java_name_index
	}, ; 1066
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 794; uint32_t java_name_index
	}, ; 1067
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 691; uint32_t java_name_index
	}, ; 1068
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200017a, ; uint32_t type_token_id
		i32 121; uint32_t java_name_index
	}, ; 1069
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200030b, ; uint32_t type_token_id
		i32 314; uint32_t java_name_index
	}, ; 1070
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000427, ; uint32_t type_token_id
		i32 491; uint32_t java_name_index
	}, ; 1071
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1169; uint32_t java_name_index
	}, ; 1072
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000191, ; uint32_t type_token_id
		i32 136; uint32_t java_name_index
	}, ; 1073
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001af, ; uint32_t type_token_id
		i32 159; uint32_t java_name_index
	}, ; 1074
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 113; uint32_t java_name_index
	}, ; 1075
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 1076
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a2, ; uint32_t type_token_id
		i32 148; uint32_t java_name_index
	}, ; 1077
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000398, ; uint32_t type_token_id
		i32 1002; uint32_t java_name_index
	}, ; 1078
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 426; uint32_t java_name_index
	}, ; 1079
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 1080
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	}, ; 1081
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000220, ; uint32_t type_token_id
		i32 214; uint32_t java_name_index
	}, ; 1082
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 910; uint32_t java_name_index
	}, ; 1083
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000197, ; uint32_t type_token_id
		i32 141; uint32_t java_name_index
	}, ; 1084
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 293; uint32_t java_name_index
	}, ; 1085
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 593; uint32_t java_name_index
	}, ; 1086
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 792; uint32_t java_name_index
	}, ; 1087
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000215, ; uint32_t type_token_id
		i32 209; uint32_t java_name_index
	}, ; 1088
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 862; uint32_t java_name_index
	}, ; 1089
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1142; uint32_t java_name_index
	}, ; 1090
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 922; uint32_t java_name_index
	}, ; 1091
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 444; uint32_t java_name_index
	}, ; 1092
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 921; uint32_t java_name_index
	}, ; 1093
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000375, ; uint32_t type_token_id
		i32 387; uint32_t java_name_index
	}, ; 1094
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002f1, ; uint32_t type_token_id
		i32 292; uint32_t java_name_index
	}, ; 1095
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200032a, ; uint32_t type_token_id
		i32 341; uint32_t java_name_index
	}, ; 1096
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 990; uint32_t java_name_index
	}, ; 1097
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 62; uint32_t java_name_index
	}, ; 1098
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1220; uint32_t java_name_index
	}, ; 1099
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 317; uint32_t java_name_index
	}, ; 1100
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 591; uint32_t java_name_index
	}, ; 1101
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 665; uint32_t java_name_index
	}, ; 1102
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 643; uint32_t java_name_index
	}, ; 1103
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 958; uint32_t java_name_index
	}, ; 1104
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000135, ; uint32_t type_token_id
		i32 1086; uint32_t java_name_index
	}, ; 1105
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000298, ; uint32_t type_token_id
		i32 267; uint32_t java_name_index
	}, ; 1106
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1216; uint32_t java_name_index
	}, ; 1107
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 302; uint32_t java_name_index
	}, ; 1108
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 754; uint32_t java_name_index
	}, ; 1109
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 787; uint32_t java_name_index
	}, ; 1110
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000425, ; uint32_t type_token_id
		i32 489; uint32_t java_name_index
	}, ; 1111
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 1112
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 1113
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 108; uint32_t java_name_index
	}, ; 1114
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1257; uint32_t java_name_index
	}, ; 1115
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 719; uint32_t java_name_index
	}, ; 1116
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 824; uint32_t java_name_index
	}, ; 1117
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 84; uint32_t java_name_index
	}, ; 1118
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 332; uint32_t java_name_index
	}, ; 1119
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 454; uint32_t java_name_index
	}, ; 1120
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 716; uint32_t java_name_index
	}, ; 1121
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 112; uint32_t java_name_index
	}, ; 1122
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 905; uint32_t java_name_index
	}, ; 1123
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 1124
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1013; uint32_t java_name_index
	}, ; 1125
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 439; uint32_t java_name_index
	}, ; 1126
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1191; uint32_t java_name_index
	}, ; 1127
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 223; uint32_t java_name_index
	}, ; 1128
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002ef, ; uint32_t type_token_id
		i32 290; uint32_t java_name_index
	}, ; 1129
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1212; uint32_t java_name_index
	}, ; 1130
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1146; uint32_t java_name_index
	}, ; 1131
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001a0, ; uint32_t type_token_id
		i32 147; uint32_t java_name_index
	}, ; 1132
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1182; uint32_t java_name_index
	}, ; 1133
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 748; uint32_t java_name_index
	}, ; 1134
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 411; uint32_t java_name_index
	}, ; 1135
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000356, ; uint32_t type_token_id
		i32 368; uint32_t java_name_index
	}, ; 1136
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000318, ; uint32_t type_token_id
		i32 326; uint32_t java_name_index
	}, ; 1137
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 623; uint32_t java_name_index
	}, ; 1138
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200031a, ; uint32_t type_token_id
		i32 328; uint32_t java_name_index
	}, ; 1139
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000386, ; uint32_t type_token_id
		i32 397; uint32_t java_name_index
	}, ; 1140
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 967; uint32_t java_name_index
	}, ; 1141
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 662; uint32_t java_name_index
	}, ; 1142
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000176, ; uint32_t type_token_id
		i32 1121; uint32_t java_name_index
	}, ; 1143
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 951; uint32_t java_name_index
	}, ; 1144
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 831; uint32_t java_name_index
	}, ; 1145
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002c0, ; uint32_t type_token_id
		i32 278; uint32_t java_name_index
	}, ; 1146
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 784; uint32_t java_name_index
	}, ; 1147
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002fb, ; uint32_t type_token_id
		i32 298; uint32_t java_name_index
	}, ; 1148
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 1149
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 671; uint32_t java_name_index
	}, ; 1150
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 902; uint32_t java_name_index
	}, ; 1151
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 1015; uint32_t java_name_index
	}, ; 1152
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 364; uint32_t java_name_index
	}, ; 1153
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002f7, ; uint32_t type_token_id
		i32 296; uint32_t java_name_index
	}, ; 1154
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 742; uint32_t java_name_index
	}, ; 1155
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 756; uint32_t java_name_index
	}, ; 1156
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1202; uint32_t java_name_index
	}, ; 1157
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002e1, ; uint32_t type_token_id
		i32 1127; uint32_t java_name_index
	}, ; 1158
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200043b, ; uint32_t type_token_id
		i32 508; uint32_t java_name_index
	}, ; 1159
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000324, ; uint32_t type_token_id
		i32 336; uint32_t java_name_index
	}, ; 1160
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000338, ; uint32_t type_token_id
		i32 350; uint32_t java_name_index
	}, ; 1161
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 1162
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000080, ; uint32_t type_token_id
		i32 849; uint32_t java_name_index
	}, ; 1163
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 81; uint32_t java_name_index
	}, ; 1164
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000399, ; uint32_t type_token_id
		i32 407; uint32_t java_name_index
	}, ; 1165
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 269; uint32_t java_name_index
	}, ; 1166
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 916; uint32_t java_name_index
	}, ; 1167
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 1100; uint32_t java_name_index
	}, ; 1168
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 192; uint32_t java_name_index
	}, ; 1169
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000198, ; uint32_t type_token_id
		i32 142; uint32_t java_name_index
	}, ; 1170
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000333, ; uint32_t type_token_id
		i32 347; uint32_t java_name_index
	}, ; 1171
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 750; uint32_t java_name_index
	}, ; 1172
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 547; uint32_t java_name_index
	}, ; 1173
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 925; uint32_t java_name_index
	}, ; 1174
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000490, ; uint32_t type_token_id
		i32 959; uint32_t java_name_index
	}, ; 1175
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000341, ; uint32_t type_token_id
		i32 356; uint32_t java_name_index
	}, ; 1176
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200044a, ; uint32_t type_token_id
		i32 517; uint32_t java_name_index
	}, ; 1177
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200022a, ; uint32_t type_token_id
		i32 219; uint32_t java_name_index
	}, ; 1178
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 715; uint32_t java_name_index
	}, ; 1179
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000284, ; uint32_t type_token_id
		i32 257; uint32_t java_name_index
	}, ; 1180
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000633, ; uint32_t type_token_id
		i32 1060; uint32_t java_name_index
	}, ; 1181
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 104; uint32_t java_name_index
	}, ; 1182
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1200; uint32_t java_name_index
	}, ; 1183
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000453, ; uint32_t type_token_id
		i32 525; uint32_t java_name_index
	}, ; 1184
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1150; uint32_t java_name_index
	}, ; 1185
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 745; uint32_t java_name_index
	}, ; 1186
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 203; uint32_t java_name_index
	}, ; 1187
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 461; uint32_t java_name_index
	}, ; 1188
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 875; uint32_t java_name_index
	}, ; 1189
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1107; uint32_t java_name_index
	}, ; 1190
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001e5, ; uint32_t type_token_id
		i32 191; uint32_t java_name_index
	}, ; 1191
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 839; uint32_t java_name_index
	}, ; 1192
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 919; uint32_t java_name_index
	}, ; 1193
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 463; uint32_t java_name_index
	}, ; 1194
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 944; uint32_t java_name_index
	}, ; 1195
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x020005eb, ; uint32_t type_token_id
		i32 965; uint32_t java_name_index
	}, ; 1196
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000183, ; uint32_t type_token_id
		i32 127; uint32_t java_name_index
	}, ; 1197
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 801; uint32_t java_name_index
	}, ; 1198
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 1112; uint32_t java_name_index
	}, ; 1199
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 937; uint32_t java_name_index
	}, ; 1200
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 735; uint32_t java_name_index
	}, ; 1201
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 948; uint32_t java_name_index
	}, ; 1202
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001bf, ; uint32_t type_token_id
		i32 169; uint32_t java_name_index
	}, ; 1203
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000102, ; uint32_t type_token_id
		i32 55; uint32_t java_name_index
	}, ; 1204
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1045; uint32_t java_name_index
	}, ; 1205
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1235; uint32_t java_name_index
	}, ; 1206
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 438; uint32_t java_name_index
	}, ; 1207
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1208; uint32_t java_name_index
	}, ; 1208
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000385, ; uint32_t type_token_id
		i32 396; uint32_t java_name_index
	}, ; 1209
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 804; uint32_t java_name_index
	}, ; 1210
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 631; uint32_t java_name_index
	}, ; 1211
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1118; uint32_t java_name_index
	}, ; 1212
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 822; uint32_t java_name_index
	}, ; 1213
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 1214
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 456; uint32_t java_name_index
	}, ; 1215
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000452, ; uint32_t type_token_id
		i32 524; uint32_t java_name_index
	}, ; 1216
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000094, ; uint32_t type_token_id
		i32 704; uint32_t java_name_index
	}, ; 1217
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 780; uint32_t java_name_index
	}, ; 1218
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 117; uint32_t java_name_index
	}, ; 1219
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 799; uint32_t java_name_index
	}, ; 1220
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 598; uint32_t java_name_index
	}, ; 1221
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x02000389, ; uint32_t type_token_id
		i32 982; uint32_t java_name_index
	}, ; 1222
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 541; uint32_t java_name_index
	}, ; 1223
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 815; uint32_t java_name_index
	}, ; 1224
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 329; uint32_t java_name_index
	}, ; 1225
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x020002cf, ; uint32_t type_token_id
		i32 1090; uint32_t java_name_index
	}, ; 1226
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 294; uint32_t java_name_index
	}, ; 1227
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1239; uint32_t java_name_index
	}, ; 1228
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1240; uint32_t java_name_index
	}, ; 1229
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 243; uint32_t java_name_index
	}, ; 1230
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 563; uint32_t java_name_index
	}, ; 1231
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000193, ; uint32_t type_token_id
		i32 137; uint32_t java_name_index
	}, ; 1232
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000093, ; uint32_t type_token_id
		i32 864; uint32_t java_name_index
	}, ; 1233
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 717; uint32_t java_name_index
	}, ; 1234
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 674; uint32_t java_name_index
	}, ; 1235
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 285; uint32_t java_name_index
	}, ; 1236
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 208; uint32_t java_name_index
	}, ; 1237
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 167; uint32_t java_name_index
	}, ; 1238
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 226; uint32_t java_name_index
	}, ; 1239
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 731; uint32_t java_name_index
	}, ; 1240
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 224; uint32_t java_name_index
	}, ; 1241
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000184, ; uint32_t type_token_id
		i32 128; uint32_t java_name_index
	}, ; 1242
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 1114; uint32_t java_name_index
	}, ; 1243
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 478; uint32_t java_name_index
	}, ; 1244
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1153; uint32_t java_name_index
	}, ; 1245
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1171; uint32_t java_name_index
	}, ; 1246
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000314, ; uint32_t type_token_id
		i32 322; uint32_t java_name_index
	}, ; 1247
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 887; uint32_t java_name_index
	}, ; 1248
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 867; uint32_t java_name_index
	}, ; 1249
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 968; uint32_t java_name_index
	}, ; 1250
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 453; uint32_t java_name_index
	}, ; 1251
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 721; uint32_t java_name_index
	}, ; 1252
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 70; uint32_t java_name_index
	}, ; 1253
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1178; uint32_t java_name_index
	}, ; 1254
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1075; uint32_t java_name_index
	}, ; 1255
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 873; uint32_t java_name_index
	}, ; 1256
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 956; uint32_t java_name_index
	}, ; 1257
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1241; uint32_t java_name_index
	}, ; 1258
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 182; uint32_t java_name_index
	} ; 1259
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1260 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072, ; 1072
	ptr @.str.1073, ; 1073
	ptr @.str.1074, ; 1074
	ptr @.str.1075, ; 1075
	ptr @.str.1076, ; 1076
	ptr @.str.1077, ; 1077
	ptr @.str.1078, ; 1078
	ptr @.str.1079, ; 1079
	ptr @.str.1080, ; 1080
	ptr @.str.1081, ; 1081
	ptr @.str.1082, ; 1082
	ptr @.str.1083, ; 1083
	ptr @.str.1084, ; 1084
	ptr @.str.1085, ; 1085
	ptr @.str.1086, ; 1086
	ptr @.str.1087, ; 1087
	ptr @.str.1088, ; 1088
	ptr @.str.1089, ; 1089
	ptr @.str.1090, ; 1090
	ptr @.str.1091, ; 1091
	ptr @.str.1092, ; 1092
	ptr @.str.1093, ; 1093
	ptr @.str.1094, ; 1094
	ptr @.str.1095, ; 1095
	ptr @.str.1096, ; 1096
	ptr @.str.1097, ; 1097
	ptr @.str.1098, ; 1098
	ptr @.str.1099, ; 1099
	ptr @.str.1100, ; 1100
	ptr @.str.1101, ; 1101
	ptr @.str.1102, ; 1102
	ptr @.str.1103, ; 1103
	ptr @.str.1104, ; 1104
	ptr @.str.1105, ; 1105
	ptr @.str.1106, ; 1106
	ptr @.str.1107, ; 1107
	ptr @.str.1108, ; 1108
	ptr @.str.1109, ; 1109
	ptr @.str.1110, ; 1110
	ptr @.str.1111, ; 1111
	ptr @.str.1112, ; 1112
	ptr @.str.1113, ; 1113
	ptr @.str.1114, ; 1114
	ptr @.str.1115, ; 1115
	ptr @.str.1116, ; 1116
	ptr @.str.1117, ; 1117
	ptr @.str.1118, ; 1118
	ptr @.str.1119, ; 1119
	ptr @.str.1120, ; 1120
	ptr @.str.1121, ; 1121
	ptr @.str.1122, ; 1122
	ptr @.str.1123, ; 1123
	ptr @.str.1124, ; 1124
	ptr @.str.1125, ; 1125
	ptr @.str.1126, ; 1126
	ptr @.str.1127, ; 1127
	ptr @.str.1128, ; 1128
	ptr @.str.1129, ; 1129
	ptr @.str.1130, ; 1130
	ptr @.str.1131, ; 1131
	ptr @.str.1132, ; 1132
	ptr @.str.1133, ; 1133
	ptr @.str.1134, ; 1134
	ptr @.str.1135, ; 1135
	ptr @.str.1136, ; 1136
	ptr @.str.1137, ; 1137
	ptr @.str.1138, ; 1138
	ptr @.str.1139, ; 1139
	ptr @.str.1140, ; 1140
	ptr @.str.1141, ; 1141
	ptr @.str.1142, ; 1142
	ptr @.str.1143, ; 1143
	ptr @.str.1144, ; 1144
	ptr @.str.1145, ; 1145
	ptr @.str.1146, ; 1146
	ptr @.str.1147, ; 1147
	ptr @.str.1148, ; 1148
	ptr @.str.1149, ; 1149
	ptr @.str.1150, ; 1150
	ptr @.str.1151, ; 1151
	ptr @.str.1152, ; 1152
	ptr @.str.1153, ; 1153
	ptr @.str.1154, ; 1154
	ptr @.str.1155, ; 1155
	ptr @.str.1156, ; 1156
	ptr @.str.1157, ; 1157
	ptr @.str.1158, ; 1158
	ptr @.str.1159, ; 1159
	ptr @.str.1160, ; 1160
	ptr @.str.1161, ; 1161
	ptr @.str.1162, ; 1162
	ptr @.str.1163, ; 1163
	ptr @.str.1164, ; 1164
	ptr @.str.1165, ; 1165
	ptr @.str.1166, ; 1166
	ptr @.str.1167, ; 1167
	ptr @.str.1168, ; 1168
	ptr @.str.1169, ; 1169
	ptr @.str.1170, ; 1170
	ptr @.str.1171, ; 1171
	ptr @.str.1172, ; 1172
	ptr @.str.1173, ; 1173
	ptr @.str.1174, ; 1174
	ptr @.str.1175, ; 1175
	ptr @.str.1176, ; 1176
	ptr @.str.1177, ; 1177
	ptr @.str.1178, ; 1178
	ptr @.str.1179, ; 1179
	ptr @.str.1180, ; 1180
	ptr @.str.1181, ; 1181
	ptr @.str.1182, ; 1182
	ptr @.str.1183, ; 1183
	ptr @.str.1184, ; 1184
	ptr @.str.1185, ; 1185
	ptr @.str.1186, ; 1186
	ptr @.str.1187, ; 1187
	ptr @.str.1188, ; 1188
	ptr @.str.1189, ; 1189
	ptr @.str.1190, ; 1190
	ptr @.str.1191, ; 1191
	ptr @.str.1192, ; 1192
	ptr @.str.1193, ; 1193
	ptr @.str.1194, ; 1194
	ptr @.str.1195, ; 1195
	ptr @.str.1196, ; 1196
	ptr @.str.1197, ; 1197
	ptr @.str.1198, ; 1198
	ptr @.str.1199, ; 1199
	ptr @.str.1200, ; 1200
	ptr @.str.1201, ; 1201
	ptr @.str.1202, ; 1202
	ptr @.str.1203, ; 1203
	ptr @.str.1204, ; 1204
	ptr @.str.1205, ; 1205
	ptr @.str.1206, ; 1206
	ptr @.str.1207, ; 1207
	ptr @.str.1208, ; 1208
	ptr @.str.1209, ; 1209
	ptr @.str.1210, ; 1210
	ptr @.str.1211, ; 1211
	ptr @.str.1212, ; 1212
	ptr @.str.1213, ; 1213
	ptr @.str.1214, ; 1214
	ptr @.str.1215, ; 1215
	ptr @.str.1216, ; 1216
	ptr @.str.1217, ; 1217
	ptr @.str.1218, ; 1218
	ptr @.str.1219, ; 1219
	ptr @.str.1220, ; 1220
	ptr @.str.1221, ; 1221
	ptr @.str.1222, ; 1222
	ptr @.str.1223, ; 1223
	ptr @.str.1224, ; 1224
	ptr @.str.1225, ; 1225
	ptr @.str.1226, ; 1226
	ptr @.str.1227, ; 1227
	ptr @.str.1228, ; 1228
	ptr @.str.1229, ; 1229
	ptr @.str.1230, ; 1230
	ptr @.str.1231, ; 1231
	ptr @.str.1232, ; 1232
	ptr @.str.1233, ; 1233
	ptr @.str.1234, ; 1234
	ptr @.str.1235, ; 1235
	ptr @.str.1236, ; 1236
	ptr @.str.1237, ; 1237
	ptr @.str.1238, ; 1238
	ptr @.str.1239, ; 1239
	ptr @.str.1240, ; 1240
	ptr @.str.1241, ; 1241
	ptr @.str.1242, ; 1242
	ptr @.str.1243, ; 1243
	ptr @.str.1244, ; 1244
	ptr @.str.1245, ; 1245
	ptr @.str.1246, ; 1246
	ptr @.str.1247, ; 1247
	ptr @.str.1248, ; 1248
	ptr @.str.1249, ; 1249
	ptr @.str.1250, ; 1250
	ptr @.str.1251, ; 1251
	ptr @.str.1252, ; 1252
	ptr @.str.1253, ; 1253
	ptr @.str.1254, ; 1254
	ptr @.str.1255, ; 1255
	ptr @.str.1256, ; 1256
	ptr @.str.1257, ; 1257
	ptr @.str.1258, ; 1258
	ptr @.str.1259 ; 1259
], align 4

; Strings
@.str.0 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"org/json/JSONArray\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"org/json/JSONObject\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"javax/crypto/Cipher\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"javax/crypto/Mac\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"android/window/BackEvent\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"android/window/InputTransferToken\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"android/window/TrustedPresentationThresholds\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"android/webkit/RenderProcessGoneDetail\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"android/webkit/WebMessage\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"android/webkit/WebResourceResponse\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"android/service/notification/StatusBarNotification\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"android/provider/DocumentsContract\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"android/provider/MediaStore\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Audio\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Audio$Media\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"android/provider/MediaStore$Images\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"android/provider/MediaStore$Images$Media\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Video\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Video$Media\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.55 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.64 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.71 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.116 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.119 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.120 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.122 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.123 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.128 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.130 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.132 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.135 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.137 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.138 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.139 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.141 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.142 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.146 = private unnamed_addr constant [35 x i8] c"android/text/method/MovementMethod\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.148 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.149 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.150 = private unnamed_addr constant [45 x i8] c"android/security/identity/IdentityCredential\00", align 1
@.str.151 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.155 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"android/os/Binder\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.161 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.162 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 1
@.str.163 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.166 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.167 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.169 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"android/os/PersistableBundle\00", align 1
@.str.172 = private unnamed_addr constant [22 x i8] c"android/os/UserHandle\00", align 1
@.str.173 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.174 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.175 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.176 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.177 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.178 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.179 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.180 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.181 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.182 = private unnamed_addr constant [25 x i8] c"android/accounts/Account\00", align 1
@.str.183 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.185 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.186 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.187 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.188 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.189 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.190 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.191 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.192 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.193 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.194 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.195 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.196 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.197 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.198 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.199 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.200 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.201 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.202 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.203 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.205 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.206 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.207 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.208 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.209 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.210 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.211 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.212 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.213 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.214 = private unnamed_addr constant [27 x i8] c"android/view/Choreographer\00", align 1
@.str.215 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.216 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.219 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.220 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.221 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.222 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.223 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.225 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.226 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.227 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.228 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.229 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.230 = private unnamed_addr constant [41 x i8] c"android/view/SurfaceControlInputReceiver\00", align 1
@.str.231 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.232 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.233 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.234 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.235 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.236 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.238 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.239 = private unnamed_addr constant [34 x i8] c"android/view/KeyboardShortcutInfo\00", align 1
@.str.240 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.241 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.242 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.243 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.244 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.245 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.246 = private unnamed_addr constant [28 x i8] c"android/view/SurfaceControl\00", align 1
@.str.247 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.248 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.249 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.250 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.251 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.252 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.253 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.254 = private unnamed_addr constant [27 x i8] c"android/view/ViewStructure\00", align 1
@.str.255 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.256 = private unnamed_addr constant [31 x i8] c"android/view/WindowInsets$Type\00", align 1
@.str.257 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.258 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.259 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.260 = private unnamed_addr constant [50 x i8] c"android/view/contentcapture/ContentCaptureSession\00", align 1
@.str.261 = private unnamed_addr constant [33 x i8] c"android/view/autofill/AutofillId\00", align 1
@.str.262 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.263 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.264 = private unnamed_addr constant [67 x i8] c"mono/android/view/animation/Animation_AnimationListenerImplementor\00", align 1
@.str.265 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.266 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.267 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.268 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.269 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.270 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.271 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.272 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.273 = private unnamed_addr constant [48 x i8] c"android/view/accessibility/AccessibilityManager\00", align 1
@.str.274 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.275 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.276 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.277 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.278 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.279 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.280 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.281 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.283 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.284 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.285 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.286 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.287 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.288 = private unnamed_addr constant [32 x i8] c"android/net/ConnectivityManager\00", align 1
@.str.289 = private unnamed_addr constant [20 x i8] c"android/net/Network\00", align 1
@.str.290 = private unnamed_addr constant [32 x i8] c"android/net/NetworkCapabilities\00", align 1
@.str.291 = private unnamed_addr constant [24 x i8] c"android/net/NetworkInfo\00", align 1
@.str.292 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.293 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.294 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.295 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.296 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.297 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.298 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.299 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.300 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.301 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.302 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.303 = private unnamed_addr constant [23 x i8] c"android/graphics/Color\00", align 1
@.str.304 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.305 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.306 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.307 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.308 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.309 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.310 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.311 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 1
@.str.312 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.313 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.314 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.315 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.316 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.317 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.318 = private unnamed_addr constant [25 x i8] c"android/graphics/Path$Op\00", align 1
@.str.319 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.320 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.321 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.322 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.323 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.324 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.325 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.326 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.327 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.328 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.329 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.330 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.331 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.332 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.333 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.334 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.335 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.336 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.337 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 1
@.str.338 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.339 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.340 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.341 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 1
@.str.342 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.343 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.344 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.345 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.346 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.347 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.348 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.349 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.350 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.351 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.352 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.353 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.354 = private unnamed_addr constant [32 x i8] c"android/content/ContentProvider\00", align 1
@.str.355 = private unnamed_addr constant [30 x i8] c"android/content/ContentValues\00", align 1
@.str.356 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.357 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.358 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.359 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.360 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.361 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.362 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.363 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.364 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.365 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.366 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.367 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.368 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.369 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.370 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.371 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.372 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.373 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.374 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.375 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.376 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.377 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.378 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.379 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.380 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.381 = private unnamed_addr constant [40 x i8] c"android/content/res/AssetFileDescriptor\00", align 1
@.str.382 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.383 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.384 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.385 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.386 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.387 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.388 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.389 = private unnamed_addr constant [32 x i8] c"android/content/pm/ActivityInfo\00", align 1
@.str.390 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.391 = private unnamed_addr constant [33 x i8] c"android/content/pm/ComponentInfo\00", align 1
@.str.392 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.393 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.394 = private unnamed_addr constant [31 x i8] c"android/content/pm/ResolveInfo\00", align 1
@.str.395 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.396 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.397 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.398 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.399 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.400 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.401 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.402 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.403 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.404 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.405 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.406 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.407 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.408 = private unnamed_addr constant [25 x i8] c"android/app/Notification\00", align 1
@.str.409 = private unnamed_addr constant [32 x i8] c"android/app/NotificationManager\00", align 1
@.str.410 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.411 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.412 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.413 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.414 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.415 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.416 = private unnamed_addr constant [20 x i8] c"android/app/Service\00", align 1
@.str.417 = private unnamed_addr constant [21 x i8] c"java/text/DateFormat\00", align 1
@.str.418 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.419 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.420 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.421 = private unnamed_addr constant [27 x i8] c"java/text/SimpleDateFormat\00", align 1
@.str.422 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.423 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.424 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.425 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.426 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.427 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.428 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.429 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.430 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.431 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.432 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.433 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.434 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.435 = private unnamed_addr constant [18 x i8] c"java/security/Key\00", align 1
@.str.436 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.437 = private unnamed_addr constant [25 x i8] c"java/security/PrivateKey\00", align 1
@.str.438 = private unnamed_addr constant [25 x i8] c"java/security/KeyFactory\00", align 1
@.str.439 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.440 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.441 = private unnamed_addr constant [24 x i8] c"java/security/Signature\00", align 1
@.str.442 = private unnamed_addr constant [27 x i8] c"java/security/SignatureSpi\00", align 1
@.str.443 = private unnamed_addr constant [34 x i8] c"java/security/spec/EncodedKeySpec\00", align 1
@.str.444 = private unnamed_addr constant [27 x i8] c"java/security/spec/KeySpec\00", align 1
@.str.445 = private unnamed_addr constant [39 x i8] c"java/security/spec/PKCS8EncodedKeySpec\00", align 1
@.str.446 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.447 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.448 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.449 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.450 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.451 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.452 = private unnamed_addr constant [30 x i8] c"java/io/FileNotFoundException\00", align 1
@.str.453 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.454 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.455 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.456 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.457 = private unnamed_addr constant [21 x i8] c"java/io/Serializable\00", align 1
@.str.458 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.459 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.460 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.461 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.462 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.463 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.464 = private unnamed_addr constant [15 x i8] c"java/util/List\00", align 1
@.str.465 = private unnamed_addr constant [21 x i8] c"java/util/Comparator\00", align 1
@.str.466 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.467 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.468 = private unnamed_addr constant [23 x i8] c"java/util/ListIterator\00", align 1
@.str.469 = private unnamed_addr constant [30 x i8] c"java/util/SequencedCollection\00", align 1
@.str.470 = private unnamed_addr constant [22 x i8] c"java/util/Spliterator\00", align 1
@.str.471 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.472 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.473 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.474 = private unnamed_addr constant [28 x i8] c"java/util/function/Function\00", align 1
@.str.475 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.476 = private unnamed_addr constant [31 x i8] c"java/util/function/IntFunction\00", align 1
@.str.477 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.478 = private unnamed_addr constant [36 x i8] c"java/util/function/ToDoubleFunction\00", align 1
@.str.479 = private unnamed_addr constant [33 x i8] c"java/util/function/ToIntFunction\00", align 1
@.str.480 = private unnamed_addr constant [34 x i8] c"java/util/function/ToLongFunction\00", align 1
@.str.481 = private unnamed_addr constant [33 x i8] c"java/util/function/UnaryOperator\00", align 1
@.str.482 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.483 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.484 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.485 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 1
@.str.486 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.487 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.488 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.489 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.490 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 1
@.str.491 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.492 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.493 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.494 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.495 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.496 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.497 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.498 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.499 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.500 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.501 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.502 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.503 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.504 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.505 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.506 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.507 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.508 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.509 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.510 = private unnamed_addr constant [24 x i8] c"java/lang/AutoCloseable\00", align 1
@.str.511 = private unnamed_addr constant [19 x i8] c"java/lang/Iterable\00", align 1
@.str.512 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.513 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.514 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.515 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.516 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 1
@.str.517 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 1
@.str.518 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.519 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.520 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 1
@.str.521 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.522 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.523 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.524 = private unnamed_addr constant [15 x i8] c"java/lang/Void\00", align 1
@.str.525 = private unnamed_addr constant [24 x i8] c"java/lang/ref/Reference\00", align 1
@.str.526 = private unnamed_addr constant [28 x i8] c"java/lang/ref/WeakReference\00", align 1
@.str.527 = private unnamed_addr constant [32 x i8] c"java/lang/annotation/Annotation\00", align 1
@.str.528 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.529 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.530 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.531 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.532 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.533 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.534 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1
@.str.535 = private unnamed_addr constant [84 x i8] c"crc64fddc838597f4fd38/AndroidInAppMessagesManager_InternalInAppMessageEventsHandler\00", align 1
@.str.536 = private unnamed_addr constant [85 x i8] c"crc64fddc838597f4fd38/AndroidNotificationsManager_InternalNotificationsEventsHandler\00", align 1
@.str.537 = private unnamed_addr constant [68 x i8] c"crc64fddc838597f4fd38/AndroidUserManager_InternalUserChangedHandler\00", align 1
@.str.538 = private unnamed_addr constant [81 x i8] c"crc64fddc838597f4fd38/AndroidPushSubscription_InternalSubscriptionChangedHandler\00", align 1
@.str.539 = private unnamed_addr constant [40 x i8] c"crc64fddc838597f4fd38/AndroidConsumer_1\00", align 1
@.str.540 = private unnamed_addr constant [42 x i8] c"crc64fddc838597f4fd38/AndroidVoidConsumer\00", align 1
@.str.541 = private unnamed_addr constant [42 x i8] c"crc64fddc838597f4fd38/AndroidBoolConsumer\00", align 1
@.str.542 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.543 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.544 = private unnamed_addr constant [38 x i8] c"crc64159f3caeb1269279/MauiDrawingView\00", align 1
@.str.545 = private unnamed_addr constant [32 x i8] c"crc64159f3caeb1269279/MauiPopup\00", align 1
@.str.546 = private unnamed_addr constant [44 x i8] c"crc64159f3caeb1269279/MauiSemanticOrderView\00", align 1
@.str.547 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.548 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.549 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.550 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.551 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.552 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.553 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.554 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.555 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.556 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.557 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.558 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.559 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.560 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.561 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.562 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.563 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.564 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.565 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.566 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.567 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.568 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.569 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.570 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.571 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.572 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.573 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.574 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.575 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.576 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.577 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.578 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.579 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.580 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.581 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.582 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.583 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.584 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.585 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.586 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.587 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.588 = private unnamed_addr constant [35 x i8] c"com/onesignal/location/BuildConfig\00", align 1
@.str.589 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.590 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.591 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.592 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.593 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.594 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.595 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.596 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.597 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.598 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.599 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.600 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.601 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.602 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.603 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.604 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.605 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.606 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.607 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.608 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.609 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.610 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.611 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.612 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.613 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.614 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.615 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.616 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.617 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.618 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.619 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.620 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.621 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.622 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.623 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.624 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.625 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.626 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.627 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.628 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.629 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.630 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.631 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.632 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.633 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.634 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.635 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.636 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.637 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.638 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.639 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.640 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.641 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.642 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.643 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.644 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.645 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.646 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.647 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.648 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.649 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.650 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.651 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.652 = private unnamed_addr constant [23 x i8] c"com/onesignal/Continue\00", align 1
@.str.653 = private unnamed_addr constant [29 x i8] c"com/onesignal/ContinueResult\00", align 1
@.str.654 = private unnamed_addr constant [25 x i8] c"com/onesignal/IOneSignal\00", align 1
@.str.655 = private unnamed_addr constant [38 x i8] c"com/onesignal/IOneSignal$DefaultImpls\00", align 1
@.str.656 = private unnamed_addr constant [24 x i8] c"com/onesignal/OneSignal\00", align 1
@.str.657 = private unnamed_addr constant [32 x i8] c"com/onesignal/user/IUserManager\00", align 1
@.str.658 = private unnamed_addr constant [52 x i8] c"com/onesignal/user/subscriptions/IEmailSubscription\00", align 1
@.str.659 = private unnamed_addr constant [51 x i8] c"com/onesignal/user/subscriptions/IPushSubscription\00", align 1
@.str.660 = private unnamed_addr constant [59 x i8] c"com/onesignal/user/subscriptions/IPushSubscriptionObserver\00", align 1
@.str.661 = private unnamed_addr constant [50 x i8] c"com/onesignal/user/subscriptions/ISmsSubscription\00", align 1
@.str.662 = private unnamed_addr constant [47 x i8] c"com/onesignal/user/subscriptions/ISubscription\00", align 1
@.str.663 = private unnamed_addr constant [62 x i8] c"com/onesignal/user/subscriptions/PushSubscriptionChangedState\00", align 1
@.str.664 = private unnamed_addr constant [55 x i8] c"com/onesignal/user/subscriptions/PushSubscriptionState\00", align 1
@.str.665 = private unnamed_addr constant [44 x i8] c"com/onesignal/user/state/IUserStateObserver\00", align 1
@.str.666 = private unnamed_addr constant [42 x i8] c"com/onesignal/user/state/UserChangedState\00", align 1
@.str.667 = private unnamed_addr constant [35 x i8] c"com/onesignal/user/state/UserState\00", align 1
@.str.668 = private unnamed_addr constant [38 x i8] c"com/onesignal/session/ISessionManager\00", align 1
@.str.669 = private unnamed_addr constant [50 x i8] c"com/onesignal/notifications/BackgroundImageLayout\00", align 1
@.str.670 = private unnamed_addr constant [42 x i8] c"com/onesignal/notifications/IActionButton\00", align 1
@.str.671 = private unnamed_addr constant [60 x i8] c"com/onesignal/notifications/IDisplayableMutableNotification\00", align 1
@.str.672 = private unnamed_addr constant [53 x i8] c"com/onesignal/notifications/IDisplayableNotification\00", align 1
@.str.673 = private unnamed_addr constant [49 x i8] c"com/onesignal/notifications/IMutableNotification\00", align 1
@.str.674 = private unnamed_addr constant [42 x i8] c"com/onesignal/notifications/INotification\00", align 1
@.str.675 = private unnamed_addr constant [55 x i8] c"com/onesignal/notifications/INotification$DefaultImpls\00", align 1
@.str.676 = private unnamed_addr constant [52 x i8] c"com/onesignal/notifications/INotificationClickEvent\00", align 1
@.str.677 = private unnamed_addr constant [55 x i8] c"com/onesignal/notifications/INotificationClickListener\00", align 1
@.str.678 = private unnamed_addr constant [71 x i8] c"mono/com/onesignal/notifications/INotificationClickListenerImplementor\00", align 1
@.str.679 = private unnamed_addr constant [53 x i8] c"com/onesignal/notifications/INotificationClickResult\00", align 1
@.str.680 = private unnamed_addr constant [59 x i8] c"com/onesignal/notifications/INotificationLifecycleListener\00", align 1
@.str.681 = private unnamed_addr constant [75 x i8] c"mono/com/onesignal/notifications/INotificationLifecycleListenerImplementor\00", align 1
@.str.682 = private unnamed_addr constant [55 x i8] c"com/onesignal/notifications/INotificationReceivedEvent\00", align 1
@.str.683 = private unnamed_addr constant [58 x i8] c"com/onesignal/notifications/INotificationServiceExtension\00", align 1
@.str.684 = private unnamed_addr constant [50 x i8] c"com/onesignal/notifications/INotificationsManager\00", align 1
@.str.685 = private unnamed_addr constant [58 x i8] c"com/onesignal/notifications/INotificationWillDisplayEvent\00", align 1
@.str.686 = private unnamed_addr constant [48 x i8] c"com/onesignal/notifications/IPermissionObserver\00", align 1
@.str.687 = private unnamed_addr constant [40 x i8] c"com/onesignal/location/ILocationManager\00", align 1
@.str.688 = private unnamed_addr constant [42 x i8] c"com/onesignal/inAppMessages/IInAppMessage\00", align 1
@.str.689 = private unnamed_addr constant [52 x i8] c"com/onesignal/inAppMessages/IInAppMessageClickEvent\00", align 1
@.str.690 = private unnamed_addr constant [55 x i8] c"com/onesignal/inAppMessages/IInAppMessageClickListener\00", align 1
@.str.691 = private unnamed_addr constant [71 x i8] c"mono/com/onesignal/inAppMessages/IInAppMessageClickListenerImplementor\00", align 1
@.str.692 = private unnamed_addr constant [53 x i8] c"com/onesignal/inAppMessages/IInAppMessageClickResult\00", align 1
@.str.693 = private unnamed_addr constant [57 x i8] c"com/onesignal/inAppMessages/IInAppMessageDidDismissEvent\00", align 1
@.str.694 = private unnamed_addr constant [57 x i8] c"com/onesignal/inAppMessages/IInAppMessageDidDisplayEvent\00", align 1
@.str.695 = private unnamed_addr constant [59 x i8] c"com/onesignal/inAppMessages/IInAppMessageLifecycleListener\00", align 1
@.str.696 = private unnamed_addr constant [75 x i8] c"mono/com/onesignal/inAppMessages/IInAppMessageLifecycleListenerImplementor\00", align 1
@.str.697 = private unnamed_addr constant [50 x i8] c"com/onesignal/inAppMessages/IInAppMessagesManager\00", align 1
@.str.698 = private unnamed_addr constant [58 x i8] c"com/onesignal/inAppMessages/IInAppMessageWillDismissEvent\00", align 1
@.str.699 = private unnamed_addr constant [58 x i8] c"com/onesignal/inAppMessages/IInAppMessageWillDisplayEvent\00", align 1
@.str.700 = private unnamed_addr constant [54 x i8] c"com/onesignal/inAppMessages/InAppMessageActionUrlType\00", align 1
@.str.701 = private unnamed_addr constant [64 x i8] c"com/onesignal/inAppMessages/InAppMessageActionUrlType$Companion\00", align 1
@.str.702 = private unnamed_addr constant [34 x i8] c"com/onesignal/debug/IDebugManager\00", align 1
@.str.703 = private unnamed_addr constant [29 x i8] c"com/onesignal/debug/LogLevel\00", align 1
@.str.704 = private unnamed_addr constant [39 x i8] c"com/onesignal/debug/LogLevel$Companion\00", align 1
@.str.705 = private unnamed_addr constant [34 x i8] c"com/onesignal/common/AndroidUtils\00", align 1
@.str.706 = private unnamed_addr constant [45 x i8] c"com/onesignal/common/AndroidUtils$SchemaType\00", align 1
@.str.707 = private unnamed_addr constant [55 x i8] c"com/onesignal/common/AndroidUtils$SchemaType$Companion\00", align 1
@.str.708 = private unnamed_addr constant [47 x i8] c"com/onesignal/common/AndroidUtils$WhenMappings\00", align 1
@.str.709 = private unnamed_addr constant [31 x i8] c"com/onesignal/common/DateUtils\00", align 1
@.str.710 = private unnamed_addr constant [33 x i8] c"com/onesignal/common/DeviceUtils\00", align 1
@.str.711 = private unnamed_addr constant [31 x i8] c"com/onesignal/common/IDManager\00", align 1
@.str.712 = private unnamed_addr constant [44 x i8] c"com/onesignal/common/JSONObjectExtensionsKt\00", align 1
@.str.713 = private unnamed_addr constant [31 x i8] c"com/onesignal/common/JSONUtils\00", align 1
@.str.714 = private unnamed_addr constant [34 x i8] c"com/onesignal/common/NetworkUtils\00", align 1
@.str.715 = private unnamed_addr constant [53 x i8] c"com/onesignal/common/NetworkUtils$ResponseStatusType\00", align 1
@.str.716 = private unnamed_addr constant [36 x i8] c"com/onesignal/common/OneSignalUtils\00", align 1
@.str.717 = private unnamed_addr constant [38 x i8] c"com/onesignal/common/OneSignalWrapper\00", align 1
@.str.718 = private unnamed_addr constant [46 x i8] c"com/onesignal/common/RootToolsInternalMethods\00", align 1
@.str.719 = private unnamed_addr constant [31 x i8] c"com/onesignal/common/TimeUtils\00", align 1
@.str.720 = private unnamed_addr constant [31 x i8] c"com/onesignal/common/ViewUtils\00", align 1
@.str.721 = private unnamed_addr constant [59 x i8] c"com/google/android/gms/auth/api/signin/GoogleSignInAccount\00", align 1
@.str.722 = private unnamed_addr constant [45 x i8] c"androidx/browser/customtabs/CustomTabsClient\00", align 1
@.str.723 = private unnamed_addr constant [68 x i8] c"androidx/browser/customtabs/CustomTabsClient_CustomTabsCallbackImpl\00", align 1
@.str.724 = private unnamed_addr constant [54 x i8] c"crc64396a3fe5f8138e3f/CustomTabsServiceConnectionImpl\00", align 1
@.str.725 = private unnamed_addr constant [39 x i8] c"crc64396a3fe5f8138e3f/KeepAliveService\00", align 1
@.str.726 = private unnamed_addr constant [55 x i8] c"androidx/browser/customtabs/CustomTabColorSchemeParams\00", align 1
@.str.727 = private unnamed_addr constant [47 x i8] c"androidx/browser/customtabs/CustomTabsCallback\00", align 1
@.str.728 = private unnamed_addr constant [45 x i8] c"androidx/browser/customtabs/CustomTabsIntent\00", align 1
@.str.729 = private unnamed_addr constant [53 x i8] c"androidx/browser/customtabs/CustomTabsIntent$Builder\00", align 1
@.str.730 = private unnamed_addr constant [56 x i8] c"androidx/browser/customtabs/CustomTabsServiceConnection\00", align 1
@.str.731 = private unnamed_addr constant [46 x i8] c"androidx/browser/customtabs/CustomTabsSession\00", align 1
@.str.732 = private unnamed_addr constant [61 x i8] c"androidx/browser/customtabs/CustomTabsSession$PendingSession\00", align 1
@.str.733 = private unnamed_addr constant [54 x i8] c"androidx/browser/customtabs/EngagementSignalsCallback\00", align 1
@.str.734 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.735 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.736 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.737 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.738 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.739 = private unnamed_addr constant [46 x i8] c"kotlinx/serialization/DeserializationStrategy\00", align 1
@.str.740 = private unnamed_addr constant [34 x i8] c"kotlinx/serialization/KSerializer\00", align 1
@.str.741 = private unnamed_addr constant [44 x i8] c"kotlinx/serialization/SerializationStrategy\00", align 1
@.str.742 = private unnamed_addr constant [58 x i8] c"kotlinx/serialization/encoding/CompositeDecoder$Companion\00", align 1
@.str.743 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeDecoder\00", align 1
@.str.744 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeEncoder\00", align 1
@.str.745 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Decoder\00", align 1
@.str.746 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Encoder\00", align 1
@.str.747 = private unnamed_addr constant [51 x i8] c"kotlinx/serialization/descriptors/SerialDescriptor\00", align 1
@.str.748 = private unnamed_addr constant [45 x i8] c"kotlinx/serialization/descriptors/SerialKind\00", align 1
@.str.749 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.750 = private unnamed_addr constant [36 x i8] c"androidx/biometric/BiometricManager\00", align 1
@.str.751 = private unnamed_addr constant [35 x i8] c"androidx/biometric/BiometricPrompt\00", align 1
@.str.752 = private unnamed_addr constant [58 x i8] c"androidx/biometric/BiometricPrompt$AuthenticationCallback\00", align 1
@.str.753 = private unnamed_addr constant [56 x i8] c"androidx/biometric/BiometricPrompt$AuthenticationResult\00", align 1
@.str.754 = private unnamed_addr constant [48 x i8] c"androidx/biometric/BiometricPrompt$CryptoObject\00", align 1
@.str.755 = private unnamed_addr constant [46 x i8] c"androidx/biometric/BiometricPrompt$PromptInfo\00", align 1
@.str.756 = private unnamed_addr constant [54 x i8] c"androidx/biometric/BiometricPrompt$PromptInfo$Builder\00", align 1
@.str.757 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.758 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.759 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.760 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.761 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.762 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.763 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.764 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.765 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.766 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.767 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.768 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.769 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.770 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.771 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.772 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.773 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.774 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.775 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.776 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.777 = private unnamed_addr constant [55 x i8] c"crc6468b6408a11370c2f/WebAuthenticatorCallbackActivity\00", align 1
@.str.778 = private unnamed_addr constant [59 x i8] c"crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity\00", align 1
@.str.779 = private unnamed_addr constant [39 x i8] c"microsoft/maui/essentials/fileProvider\00", align 1
@.str.780 = private unnamed_addr constant [52 x i8] c"crc64e53d2f592022988e/ConnectivityBroadcastReceiver\00", align 1
@.str.781 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.782 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 1
@.str.783 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.784 = private unnamed_addr constant [47 x i8] c"crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver\00", align 1
@.str.785 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.786 = private unnamed_addr constant [35 x i8] c"crc64f9cf19485bf7e9d8/AuthCallback\00", align 1
@.str.787 = private unnamed_addr constant [34 x i8] c"androidx/activity/BackEventCompat\00", align 1
@.str.788 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.789 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.790 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.791 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.792 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.793 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.794 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.795 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.796 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.797 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.798 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.799 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.800 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.801 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.802 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.803 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.804 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.805 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/CoroutineScope\00", align 1
@.str.806 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.807 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.808 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.809 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.810 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.811 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.812 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.813 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.814 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.815 = private unnamed_addr constant [34 x i8] c"androidx/core/graphics/ColorUtils\00", align 1
@.str.816 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.817 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.818 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.819 = private unnamed_addr constant [35 x i8] c"androidx/core/content/FileProvider\00", align 1
@.str.820 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.821 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.822 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.823 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.824 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.825 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.826 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.827 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.828 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.829 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.830 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.831 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.832 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.833 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.834 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.835 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.836 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.837 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.838 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.839 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.840 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.841 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.842 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.843 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.844 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.845 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.846 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.847 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.848 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.849 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.850 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.851 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.852 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.853 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.854 = private unnamed_addr constant [39 x i8] c"androidx/core/view/ViewStructureCompat\00", align 1
@.str.855 = private unnamed_addr constant [32 x i8] c"androidx/core/view/WindowCompat\00", align 1
@.str.856 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.857 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.858 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.859 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.860 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.861 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.862 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.863 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.864 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.865 = private unnamed_addr constant [62 x i8] c"androidx/core/view/contentcapture/ContentCaptureSessionCompat\00", align 1
@.str.866 = private unnamed_addr constant [45 x i8] c"androidx/core/view/autofill/AutofillIdCompat\00", align 1
@.str.867 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.868 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.869 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.870 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.871 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.872 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.873 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.874 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.875 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.876 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.877 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.878 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.879 = private unnamed_addr constant [40 x i8] c"com/onesignal/inAppMessages/BuildConfig\00", align 1
@.str.880 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.881 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.882 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 1
@.str.883 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.884 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.885 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.886 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.887 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.888 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.889 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.890 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.891 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.892 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1
@.str.893 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.894 = private unnamed_addr constant [53 x i8] c"com/onesignal/notifications/receivers/BootUpReceiver\00", align 1
@.str.895 = private unnamed_addr constant [59 x i8] c"com/onesignal/notifications/receivers/FCMBroadcastReceiver\00", align 1
@.str.896 = private unnamed_addr constant [69 x i8] c"com/onesignal/notifications/receivers/FCMBroadcastReceiver$Companion\00", align 1
@.str.897 = private unnamed_addr constant [66 x i8] c"com/onesignal/notifications/receivers/NotificationDismissReceiver\00", align 1
@.str.898 = private unnamed_addr constant [54 x i8] c"com/onesignal/notifications/receivers/UpgradeReceiver\00", align 1
@.str.899 = private unnamed_addr constant [65 x i8] c"com/onesignal/notifications/internal/INotificationActivityOpener\00", align 1
@.str.900 = private unnamed_addr constant [78 x i8] c"com/onesignal/notifications/internal/lifecycle/INotificationLifecycleCallback\00", align 1
@.str.901 = private unnamed_addr constant [82 x i8] c"com/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler\00", align 1
@.str.902 = private unnamed_addr constant [77 x i8] c"com/onesignal/notifications/internal/lifecycle/INotificationLifecycleService\00", align 1
@.str.903 = private unnamed_addr constant [68 x i8] c"com/onesignal/notifications/internal/display/INotificationDisplayer\00", align 1
@.str.904 = private unnamed_addr constant [66 x i8] c"com/onesignal/notifications/internal/common/NotificationConstants\00", align 1
@.str.905 = private unnamed_addr constant [70 x i8] c"com/onesignal/notifications/internal/common/NotificationGenerationJob\00", align 1
@.str.906 = private unnamed_addr constant [63 x i8] c"com/onesignal/notifications/internal/common/NotificationHelper\00", align 1
@.str.907 = private unnamed_addr constant [64 x i8] c"com/onesignal/notifications/internal/common/OSWorkManagerHelper\00", align 1
@.str.908 = private unnamed_addr constant [71 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/Badger\00", align 1
@.str.909 = private unnamed_addr constant [87 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadgeException\00", align 1
@.str.910 = private unnamed_addr constant [79 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadger\00", align 1
@.str.911 = private unnamed_addr constant [85 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/util/BroadcastHelper\00", align 1
@.str.912 = private unnamed_addr constant [81 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/util/CloseHelper\00", align 1
@.str.913 = private unnamed_addr constant [83 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/AdwHomeBadger\00", align 1
@.str.914 = private unnamed_addr constant [84 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/ApexHomeBadger\00", align 1
@.str.915 = private unnamed_addr constant [84 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/AsusHomeBadger\00", align 1
@.str.916 = private unnamed_addr constant [83 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/DefaultBadger\00", align 1
@.str.917 = private unnamed_addr constant [92 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/EverythingMeHomeBadger\00", align 1
@.str.918 = private unnamed_addr constant [86 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/HuaweiHomeBadger\00", align 1
@.str.919 = private unnamed_addr constant [82 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/LGHomeBadger\00", align 1
@.str.920 = private unnamed_addr constant [86 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/NewHtcHomeBadger\00", align 1
@.str.921 = private unnamed_addr constant [84 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/NovaHomeBadger\00", align 1
@.str.922 = private unnamed_addr constant [83 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/OPPOHomeBader\00", align 1
@.str.923 = private unnamed_addr constant [87 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/SamsungHomeBadger\00", align 1
@.str.924 = private unnamed_addr constant [84 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/SonyHomeBadger\00", align 1
@.str.925 = private unnamed_addr constant [84 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/VivoHomeBadger\00", align 1
@.str.926 = private unnamed_addr constant [86 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/XiaomiHomeBadger\00", align 1
@.str.927 = private unnamed_addr constant [83 x i8] c"com/onesignal/notifications/internal/badges/impl/shortcutbadger/impl/ZukHomeBadger\00", align 1
@.str.928 = private unnamed_addr constant [60 x i8] c"com/onesignal/notifications/bridges/OneSignalHmsEventBridge\00", align 1
@.str.929 = private unnamed_addr constant [66 x i8] c"com/onesignal/notifications/activities/NotificationOpenedActivity\00", align 1
@.str.930 = private unnamed_addr constant [83 x i8] c"com/onesignal/notifications/activities/NotificationOpenedActivityAndroid22AndOlder\00", align 1
@.str.931 = private unnamed_addr constant [70 x i8] c"com/onesignal/notifications/activities/NotificationOpenedActivityBase\00", align 1
@.str.932 = private unnamed_addr constant [69 x i8] c"com/onesignal/notifications/activities/NotificationOpenedActivityHMS\00", align 1
@.str.933 = private unnamed_addr constant [40 x i8] c"com/onesignal/notifications/BuildConfig\00", align 1
@.str.934 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.935 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.936 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.937 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.938 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.939 = private unnamed_addr constant [56 x i8] c"crc6490284b47efd0c513/WebAuthenticationCallbackActivity\00", align 1
@.str.940 = private unnamed_addr constant [35 x i8] c"crc64739e6ff015bad190/MainActivity\00", align 1
@.str.941 = private unnamed_addr constant [38 x i8] c"crc64739e6ff015bad190/MainApplication\00", align 1
@.str.942 = private unnamed_addr constant [73 x i8] c"com/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable\00", align 1
@.str.943 = private unnamed_addr constant [40 x i8] c"com/google/android/gms/common/api/Scope\00", align 1
@.str.944 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.945 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.946 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.947 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.948 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.949 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.950 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.951 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.952 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.953 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.954 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.955 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.956 = private unnamed_addr constant [77 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback\00", align 1
@.str.957 = private unnamed_addr constant [97 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener\00", align 1
@.str.958 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.959 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.960 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.961 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.962 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.963 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.964 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.965 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.966 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.967 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.968 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.969 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.970 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.971 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.972 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.973 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.974 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.975 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.976 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.977 = private unnamed_addr constant [59 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment\00", align 1
@.str.978 = private unnamed_addr constant [81 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog\00", align 1
@.str.979 = private unnamed_addr constant [90 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack\00", align 1
@.str.980 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.981 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.982 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.983 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.984 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.985 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.986 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.987 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.988 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.989 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.990 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.991 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.992 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.993 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.994 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.995 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.996 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.997 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.998 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.999 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.1000 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.1001 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.1002 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.1003 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.1004 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.1005 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.1006 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.1007 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.1008 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.1009 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.1010 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.1011 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.1012 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.1013 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.1014 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.1015 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.1016 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.1017 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.1018 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.1019 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.1020 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.1021 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 1
@.str.1022 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.1023 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.1024 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.1025 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.1026 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.1027 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.1028 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.1029 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.1030 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.1031 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.1032 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.1033 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.1034 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.1035 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.1036 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.1037 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.1038 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.1039 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.1040 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.1041 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.1042 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.1043 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.1044 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.1045 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.1046 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.1047 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.1048 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.1049 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.1050 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.1051 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.1052 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.1053 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.1054 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.1055 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.1056 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.1057 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.1058 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.1059 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.1060 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.1061 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.1062 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.1063 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.1064 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.1065 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1
@.str.1066 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.1067 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.1068 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.1069 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.1070 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.1071 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.1072 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/HybridJavaScriptInterface\00", align 1
@.str.1073 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.1074 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformShadowDrawable\00", align 1
@.str.1075 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.1076 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 1
@.str.1077 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.1078 = private unnamed_addr constant [38 x i8] c"com/microsoft/maui/PlatformDispatcher\00", align 1
@.str.1079 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 1
@.str.1080 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.1081 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 1
@.str.1082 = private unnamed_addr constant [34 x i8] c"com/microsoft/maui/PlatformLogger\00", align 1
@.str.1083 = private unnamed_addr constant [49 x i8] c"com/microsoft/maui/PlatformMauiAppCompatActivity\00", align 1
@.str.1084 = private unnamed_addr constant [37 x i8] c"com/microsoft/maui/PlatformPaintType\00", align 1
@.str.1085 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.1086 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.1087 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.1088 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.1089 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.1090 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 1
@.str.1091 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.1092 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.1093 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.1094 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.1095 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.1096 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.1097 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebView\00", align 1
@.str.1098 = private unnamed_addr constant [46 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebViewClient\00", align 1
@.str.1099 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiLayerDrawable\00", align 1
@.str.1100 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.1101 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 1
@.str.1102 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.1103 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.1104 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.1105 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.1106 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.1107 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.1108 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.1109 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeableImageView\00", align 1
@.str.1110 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.1111 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.1112 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.1113 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.1114 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.1115 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.1116 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.1117 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.1118 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.1119 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.1120 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.1121 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.1122 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.1123 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.1124 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.1125 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.1126 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.1127 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.1128 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.1129 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.1130 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.1131 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.1132 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.1133 = private unnamed_addr constant [76 x i8] c"crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface\00", align 1
@.str.1134 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.1135 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.1136 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.1137 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.1138 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.1139 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.1140 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.1141 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.1142 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.1143 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.1144 = private unnamed_addr constant [37 x i8] c"androidx/fragment/app/DialogFragment\00", align 1
@.str.1145 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.1146 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.1147 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.1148 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.1149 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.1150 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.1151 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.1152 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.1153 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.1154 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.1155 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.1156 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.1157 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.1158 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.1159 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.1160 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.1161 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.1162 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.1163 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.1164 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.1165 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.1166 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.1167 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.1168 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.1169 = private unnamed_addr constant [33 x i8] c"kotlin/reflect/KAnnotatedElement\00", align 1
@.str.1170 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KCallable\00", align 1
@.str.1171 = private unnamed_addr constant [22 x i8] c"kotlin/reflect/KClass\00", align 1
@.str.1172 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KClassifier\00", align 1
@.str.1173 = private unnamed_addr constant [37 x i8] c"kotlin/reflect/KDeclarationContainer\00", align 1
@.str.1174 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KFunction\00", align 1
@.str.1175 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KParameter$Kind\00", align 1
@.str.1176 = private unnamed_addr constant [26 x i8] c"kotlin/reflect/KParameter\00", align 1
@.str.1177 = private unnamed_addr constant [21 x i8] c"kotlin/reflect/KType\00", align 1
@.str.1178 = private unnamed_addr constant [30 x i8] c"kotlin/reflect/KTypeParameter\00", align 1
@.str.1179 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KTypeProjection\00", align 1
@.str.1180 = private unnamed_addr constant [41 x i8] c"kotlin/reflect/KTypeProjection$Companion\00", align 1
@.str.1181 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KVariance\00", align 1
@.str.1182 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KVisibility\00", align 1
@.str.1183 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.1184 = private unnamed_addr constant [42 x i8] c"kotlin/jvm/internal/markers/KMappedMarker\00", align 1
@.str.1185 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.1186 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.1187 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.1188 = private unnamed_addr constant [25 x i8] c"kotlin/enums/EnumEntries\00", align 1
@.str.1189 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.1190 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.1191 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.1192 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.1193 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.1194 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.1195 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.1196 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.1197 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.1198 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.1199 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.1200 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.1201 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.1202 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.1203 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.1204 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.1205 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.1206 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.1207 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.1208 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.1209 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.1210 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.1211 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.1212 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.1213 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.1214 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.1215 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.1216 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.1217 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.1218 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.1219 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.1220 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.1221 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.1222 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.1223 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.1224 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.1225 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.1226 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.1227 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.1228 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.1229 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.1230 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.1231 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.1232 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.1233 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.1234 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.1235 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.1236 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.1237 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.1238 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.1239 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.1240 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.1241 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.1242 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.1243 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.1244 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.1245 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.1246 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.1247 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.1248 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.1249 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.1250 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.1251 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.1252 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.1253 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.1254 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.1255 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.1256 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.1257 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.1258 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.1259 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [28 x i8] c"OneSignalSDK.DotNet.Android\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [27 x i8] c"CommunityToolkit.Maui.Core\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [45 x i8] c"OneSignalSDK.DotNet.Android.Location.Binding\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [41 x i8] c"OneSignalSDK.DotNet.Android.Core.Binding\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.GooglePlayServices.Base\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [25 x i8] c"Xamarin.AndroidX.Browser\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [39 x i8] c"Xamarin.KotlinX.Serialization.Core.Jvm\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.Biometric\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [22 x i8] c"Plugin.Maui.Biometric\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [50 x i8] c"OneSignalSDK.DotNet.Android.InAppMessages.Binding\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [45 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel.Android\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [50 x i8] c"OneSignalSDK.DotNet.Android.Notifications.Binding\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.AndroidX.Lifecycle.Common.Jvm\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [15 x i8] c"ScheduleListUI\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.GooglePlayServices.Basement\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Collection.Jvm\00", align 1
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.37_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.38_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1
@.TypeMapModule.39_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.40_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.41_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.42_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.43_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.44_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.45_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 1

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
