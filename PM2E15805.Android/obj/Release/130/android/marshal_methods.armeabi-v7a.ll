; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [126 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 56
	i32 39852199, ; 1: Plugin.Permissions => 0x26018a7 => 41
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 50
	i32 166922606, ; 3: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 12
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 29
	i32 212497893, ; 5: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 51
	i32 318968648, ; 6: Xamarin.AndroidX.Activity.dll => 0x13031348 => 47
	i32 319314094, ; 7: Xamarin.Forms.Maps => 0x130858ae => 52
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 8
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 24
	i32 347068432, ; 10: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 45
	i32 442521989, ; 11: Xamarin.Essentials => 0x1a605985 => 49
	i32 450948140, ; 12: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 22
	i32 465846621, ; 13: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 14: System.dll => 0x1bff388e => 7
	i32 514659665, ; 15: Xamarin.Android.Support.Compat => 0x1ead1551 => 12
	i32 627609679, ; 16: Xamarin.AndroidX.CustomView => 0x2568904f => 20
	i32 679820142, ; 17: Plugin.Connectivity.Abstractions => 0x28853b6e => 36
	i32 692692150, ; 18: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 11
	i32 748832960, ; 19: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 43
	i32 809851609, ; 20: System.Drawing.Common.dll => 0x30455ad9 => 33
	i32 928116545, ; 21: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 56
	i32 957807352, ; 22: Plugin.CurrentActivity => 0x3916faf8 => 38
	i32 967690846, ; 23: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 24
	i32 974778368, ; 24: FormsViewGroup.dll => 0x3a19f000 => 35
	i32 1012816738, ; 25: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 48
	i32 1035644815, ; 26: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 15
	i32 1042160112, ; 27: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 54
	i32 1052210849, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 26
	i32 1083482990, ; 29: PM2E15805.dll => 0x4094a36e => 62
	i32 1098259244, ; 30: System => 0x41761b2c => 7
	i32 1104002344, ; 31: Plugin.Media => 0x41cdbd28 => 40
	i32 1137654822, ; 32: Plugin.Permissions.dll => 0x43cf3c26 => 41
	i32 1282958517, ; 33: Plugin.Geolocator => 0x4c7864b5 => 39
	i32 1292207520, ; 34: SQLitePCLRaw.core.dll => 0x4d0585a0 => 44
	i32 1293217323, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 21
	i32 1365406463, ; 36: System.ServiceModel.Internals.dll => 0x516272ff => 32
	i32 1376866003, ; 37: Xamarin.AndroidX.SavedState => 0x52114ed3 => 48
	i32 1406073936, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 17
	i32 1411638395, ; 39: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1460219004, ; 40: Xamarin.Forms.Xaml => 0x57092c7c => 55
	i32 1469204771, ; 41: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 14
	i32 1530663695, ; 42: Xamarin.Forms.Maps.dll => 0x5b3c130f => 52
	i32 1539454339, ; 43: PM2E15805.Android.dll => 0x5bc23583 => 61
	i32 1574652163, ; 44: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 13
	i32 1592978981, ; 45: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1622152042, ; 46: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 27
	i32 1636350590, ; 47: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 19
	i32 1639515021, ; 48: System.Net.Http.dll => 0x61b9038d => 0
	i32 1658251792, ; 49: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 31
	i32 1711441057, ; 50: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 45
	i32 1729485958, ; 51: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 16
	i32 1766324549, ; 52: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 29
	i32 1776026572, ; 53: System.Core.dll => 0x69dc03cc => 6
	i32 1788241197, ; 54: Xamarin.AndroidX.Fragment => 0x6a96652d => 22
	i32 1808609942, ; 55: Xamarin.AndroidX.Loader => 0x6bcd3296 => 27
	i32 1813201214, ; 56: Xamarin.Google.Android.Material => 0x6c13413e => 31
	i32 1867746548, ; 57: Xamarin.Essentials.dll => 0x6f538cf4 => 49
	i32 1878053835, ; 58: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 55
	i32 1881862856, ; 59: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 51
	i32 1908813208, ; 60: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 58
	i32 2011961780, ; 61: System.Buffers.dll => 0x77ec19b4 => 5
	i32 2019465201, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 26
	i32 2048185678, ; 63: Plugin.Media.dll => 0x7a14d54e => 40
	i32 2055257422, ; 64: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 25
	i32 2097448633, ; 65: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 23
	i32 2103459038, ; 66: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 46
	i32 2126786730, ; 67: Xamarin.Forms.Platform.Android => 0x7ec430aa => 53
	i32 2129483829, ; 68: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 57
	i32 2166116741, ; 69: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 13
	i32 2201231467, ; 70: System.Net.Http => 0x8334206b => 0
	i32 2279755925, ; 71: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 28
	i32 2364664480, ; 72: PM2E15805.Android => 0x8cf1eaa0 => 61
	i32 2465273461, ; 73: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 43
	i32 2475788418, ; 74: Java.Interop.dll => 0x93918882 => 2
	i32 2620871830, ; 75: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 19
	i32 2732626843, ; 76: Xamarin.AndroidX.Activity => 0xa2e0939b => 47
	i32 2737747696, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 14
	i32 2766581644, ; 78: Xamarin.Forms.Core => 0xa4e6af8c => 50
	i32 2778768386, ; 79: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 30
	i32 2806986428, ; 80: Plugin.CurrentActivity.dll => 0xa74f36bc => 38
	i32 2810250172, ; 81: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 17
	i32 2819470561, ; 82: System.Xml.dll => 0xa80db4e1 => 10
	i32 2847418871, ; 83: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 57
	i32 2853208004, ; 84: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 30
	i32 2905242038, ; 85: mscorlib.dll => 0xad2a79b6 => 4
	i32 2978675010, ; 86: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 21
	i32 3017076677, ; 87: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 59
	i32 3044182254, ; 88: FormsViewGroup => 0xb57288ee => 35
	i32 3058099980, ; 89: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 60
	i32 3111772706, ; 90: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3126016514, ; 91: Plugin.Geolocator.dll => 0xba533a02 => 39
	i32 3230466174, ; 92: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 58
	i32 3247949154, ; 93: Mono.Security => 0xc197c562 => 34
	i32 3258312781, ; 94: Xamarin.AndroidX.CardView => 0xc235e84d => 16
	i32 3286872994, ; 95: SQLite-net.dll => 0xc3e9b3a2 => 42
	i32 3317135071, ; 96: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 20
	i32 3342024700, ; 97: Plugin.Connectivity.Abstractions.dll => 0xc7333ffc => 36
	i32 3353484488, ; 98: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 23
	i32 3360279109, ; 99: SQLitePCLRaw.core => 0xc849ca45 => 44
	i32 3362522851, ; 100: Xamarin.AndroidX.Core => 0xc86c06e3 => 18
	i32 3366046733, ; 101: Plugin.Connectivity.dll => 0xc8a1cc0d => 37
	i32 3366347497, ; 102: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 103: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 28
	i32 3395150330, ; 104: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 105: System.ServiceModel.Internals => 0xcaf21dfe => 32
	i32 3429136800, ; 106: System.Xml => 0xcc6479a0 => 10
	i32 3439690031, ; 107: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 11
	i32 3476120550, ; 108: Mono.Android => 0xcf3163e6 => 3
	i32 3536029504, ; 109: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 53
	i32 3632359727, ; 110: Xamarin.Forms.Platform => 0xd881692f => 54
	i32 3641597786, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 25
	i32 3672681054, ; 112: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3689375977, ; 113: System.Drawing.Common => 0xdbe768e9 => 33
	i32 3754567612, ; 114: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 46
	i32 3829621856, ; 115: System.Numerics.dll => 0xe4436460 => 8
	i32 3876362041, ; 116: SQLite-net => 0xe70c9739 => 42
	i32 3896760992, ; 117: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 18
	i32 3914259587, ; 118: Plugin.Connectivity => 0xe94edc83 => 37
	i32 3955647286, ; 119: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 15
	i32 3970018735, ; 120: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 60
	i32 4031362342, ; 121: PM2E15805 => 0xf049b526 => 62
	i32 4105002889, ; 122: Mono.Security.dll => 0xf4ad5f89 => 34
	i32 4151237749, ; 123: System.Core => 0xf76edc75 => 6
	i32 4260525087, ; 124: System.Buffers => 0xfdf2741f => 5
	i32 4278134329 ; 125: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 59
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [126 x i32] [
	i32 56, i32 41, i32 50, i32 12, i32 29, i32 51, i32 47, i32 52, ; 0..7
	i32 8, i32 24, i32 45, i32 49, i32 22, i32 4, i32 7, i32 12, ; 8..15
	i32 20, i32 36, i32 11, i32 43, i32 33, i32 56, i32 38, i32 24, ; 16..23
	i32 35, i32 48, i32 15, i32 54, i32 26, i32 62, i32 7, i32 40, ; 24..31
	i32 41, i32 39, i32 44, i32 21, i32 32, i32 48, i32 17, i32 9, ; 32..39
	i32 55, i32 14, i32 52, i32 61, i32 13, i32 1, i32 27, i32 19, ; 40..47
	i32 0, i32 31, i32 45, i32 16, i32 29, i32 6, i32 22, i32 27, ; 48..55
	i32 31, i32 49, i32 55, i32 51, i32 58, i32 5, i32 26, i32 40, ; 56..63
	i32 25, i32 23, i32 46, i32 53, i32 57, i32 13, i32 0, i32 28, ; 64..71
	i32 61, i32 43, i32 2, i32 19, i32 47, i32 14, i32 50, i32 30, ; 72..79
	i32 38, i32 17, i32 10, i32 57, i32 30, i32 4, i32 21, i32 59, ; 80..87
	i32 35, i32 60, i32 1, i32 39, i32 58, i32 34, i32 16, i32 42, ; 88..95
	i32 20, i32 36, i32 23, i32 44, i32 18, i32 37, i32 2, i32 28, ; 96..103
	i32 9, i32 32, i32 10, i32 11, i32 3, i32 53, i32 54, i32 25, ; 104..111
	i32 3, i32 33, i32 46, i32 8, i32 42, i32 18, i32 37, i32 15, ; 112..119
	i32 60, i32 62, i32 34, i32 6, i32 5, i32 59 ; 120..125
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
