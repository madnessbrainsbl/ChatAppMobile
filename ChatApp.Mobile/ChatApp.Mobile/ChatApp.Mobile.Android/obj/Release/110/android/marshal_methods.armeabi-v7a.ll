; ModuleID = 'obj\Release\110\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\110\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [144 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 66
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 25
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 61
	i32 122350210, ; 3: System.Threading.Channels.dll => 0x74aea82 => 37
	i32 164065134, ; 4: Unity.Abstractions => 0x9c76f6e => 40
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 58
	i32 221063263, ; 6: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 9
	i32 318968648, ; 7: Xamarin.AndroidX.Activity.dll => 0x13031348 => 42
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 1
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 52
	i32 348048101, ; 10: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 10
	i32 442521989, ; 11: Xamarin.Essentials => 0x1a605985 => 60
	i32 450948140, ; 12: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 50
	i32 458494020, ; 13: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 14
	i32 465846621, ; 14: mscorlib => 0x1bc4415d => 24
	i32 469710990, ; 15: System.dll => 0x1bff388e => 32
	i32 482390631, ; 16: ChatApp.Mobile.Android.dll => 0x1cc0b267 => 0
	i32 501000162, ; 17: Prism.dll => 0x1ddca7e2 => 26
	i32 513247710, ; 18: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 22
	i32 539058512, ; 19: Microsoft.Extensions.Logging => 0x20216150 => 20
	i32 548916678, ; 20: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 16
	i32 627609679, ; 21: Xamarin.AndroidX.CustomView => 0x2568904f => 48
	i32 662205335, ; 22: System.Text.Encodings.Web.dll => 0x27787397 => 35
	i32 690569205, ; 23: System.Xml.Linq.dll => 0x29293ff5 => 39
	i32 789151979, ; 24: Microsoft.Extensions.Options => 0x2f0980eb => 21
	i32 809851609, ; 25: System.Drawing.Common.dll => 0x30455ad9 => 68
	i32 827672425, ; 26: ChatApp.Mobile.Android => 0x31554769 => 0
	i32 832711436, ; 27: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 15
	i32 928116545, ; 28: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 66
	i32 955402788, ; 29: Newtonsoft.Json => 0x38f24a24 => 25
	i32 967690846, ; 30: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 52
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 32: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 57
	i32 1028951442, ; 33: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 17
	i32 1035644815, ; 34: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 44
	i32 1042160112, ; 35: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 63
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 54
	i32 1058641855, ; 37: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 10
	i32 1098259244, ; 38: System => 0x41761b2c => 32
	i32 1218518409, ; 39: Prism.Unity.Forms.dll => 0x48a11d89 => 28
	i32 1233093933, ; 40: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 12
	i32 1293217323, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 49
	i32 1365406463, ; 42: System.ServiceModel.Internals.dll => 0x516272ff => 69
	i32 1376866003, ; 43: Xamarin.AndroidX.SavedState => 0x52114ed3 => 57
	i32 1406073936, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 46
	i32 1411638395, ; 45: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 34
	i32 1414043276, ; 46: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 8
	i32 1440999970, ; 47: Unity.Container => 0x55e3ea22 => 41
	i32 1460219004, ; 48: Xamarin.Forms.Xaml => 0x57092c7c => 64
	i32 1469204771, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 43
	i32 1470490898, ; 50: Microsoft.Extensions.Primitives => 0x57a5e912 => 22
	i32 1592978981, ; 51: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 52: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 55
	i32 1639515021, ; 53: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 54: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 65
	i32 1729485958, ; 55: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 45
	i32 1746115085, ; 56: System.IO.Pipelines.dll => 0x68139a0d => 33
	i32 1766324549, ; 57: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 58
	i32 1770582343, ; 58: Microsoft.Extensions.Logging.dll => 0x6988f147 => 20
	i32 1776026572, ; 59: System.Core.dll => 0x69dc03cc => 30
	i32 1788241197, ; 60: Xamarin.AndroidX.Fragment => 0x6a96652d => 50
	i32 1796167890, ; 61: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 16
	i32 1808609942, ; 62: Xamarin.AndroidX.Loader => 0x6bcd3296 => 55
	i32 1813201214, ; 63: Xamarin.Google.Android.Material => 0x6c13413e => 65
	i32 1819327070, ; 64: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 11
	i32 1828688058, ; 65: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 19
	i32 1849271627, ; 66: Prism.Forms.dll => 0x6e39a54b => 27
	i32 1867746548, ; 67: Xamarin.Essentials.dll => 0x6f538cf4 => 60
	i32 1878053835, ; 68: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 64
	i32 1945717188, ; 69: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 12
	i32 1967334205, ; 70: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 14
	i32 2011961780, ; 71: System.Buffers.dll => 0x77ec19b4 => 29
	i32 2019465201, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 54
	i32 2028864565, ; 73: Essential.Interfaces.dll => 0x78ee0435 => 5
	i32 2055257422, ; 74: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 53
	i32 2065833063, ; 75: Unity.Container.dll => 0x7b221c67 => 41
	i32 2066202781, ; 76: Prism => 0x7b27c09d => 26
	i32 2097448633, ; 77: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 51
	i32 2126786730, ; 78: Xamarin.Forms.Platform.Android => 0x7ec430aa => 62
	i32 2181898931, ; 79: Microsoft.Extensions.Options.dll => 0x820d22b3 => 21
	i32 2192057212, ; 80: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 19
	i32 2201231467, ; 81: System.Net.Http => 0x8334206b => 2
	i32 2279755925, ; 82: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 56
	i32 2319144366, ; 83: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 13
	i32 2358734788, ; 84: ChatApp.Mobile.dll => 0x8c976fc4 => 4
	i32 2475788418, ; 85: Java.Interop.dll => 0x93918882 => 7
	i32 2570120770, ; 86: System.Text.Encodings.Web => 0x9930ee42 => 35
	i32 2732626843, ; 87: Xamarin.AndroidX.Activity => 0xa2e0939b => 42
	i32 2735172069, ; 88: System.Threading.Channels => 0xa30769e5 => 37
	i32 2737747696, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 43
	i32 2766581644, ; 90: Xamarin.Forms.Core => 0xa4e6af8c => 61
	i32 2778768386, ; 91: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 59
	i32 2810250172, ; 92: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 46
	i32 2819470561, ; 93: System.Xml.dll => 0xa80db4e1 => 38
	i32 2850549256, ; 94: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 11
	i32 2853208004, ; 95: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 59
	i32 2875347124, ; 96: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 9
	i32 2905242038, ; 97: mscorlib.dll => 0xad2a79b6 => 24
	i32 2923486322, ; 98: Prism.Unity.Forms => 0xae40dc72 => 28
	i32 2978675010, ; 99: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 49
	i32 3044182254, ; 100: FormsViewGroup => 0xb57288ee => 6
	i32 3111772706, ; 101: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 102: System.Threading.Tasks.Extensions => 0xba4127cb => 71
	i32 3204380047, ; 103: System.Data.dll => 0xbefef58f => 67
	i32 3245827072, ; 104: ChatApp.Mobile => 0xc1776400 => 4
	i32 3247949154, ; 105: Mono.Security => 0xc197c562 => 70
	i32 3258312781, ; 106: Xamarin.AndroidX.CardView => 0xc235e84d => 45
	i32 3265893370, ; 107: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 71
	i32 3317135071, ; 108: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 48
	i32 3317144872, ; 109: System.Data => 0xc5b79d28 => 67
	i32 3353484488, ; 110: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 51
	i32 3358260929, ; 111: System.Text.Json => 0xc82afec1 => 36
	i32 3362522851, ; 112: Xamarin.AndroidX.Core => 0xc86c06e3 => 47
	i32 3366347497, ; 113: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 114: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 56
	i32 3395150330, ; 115: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 34
	i32 3404865022, ; 116: System.ServiceModel.Internals => 0xcaf21dfe => 69
	i32 3428513518, ; 117: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 18
	i32 3429136800, ; 118: System.Xml => 0xcc6479a0 => 38
	i32 3466904072, ; 119: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 13
	i32 3476120550, ; 120: Mono.Android => 0xcf3163e6 => 23
	i32 3485117614, ; 121: System.Text.Json.dll => 0xcfbaacae => 36
	i32 3509114376, ; 122: System.Xml.Linq => 0xd128d608 => 39
	i32 3536029504, ; 123: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 62
	i32 3632359727, ; 124: Xamarin.Forms.Platform => 0xd881692f => 63
	i32 3641597786, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 53
	i32 3672681054, ; 126: Mono.Android.dll => 0xdae8aa5e => 23
	i32 3689375977, ; 127: System.Drawing.Common => 0xdbe768e9 => 68
	i32 3691870036, ; 128: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 15
	i32 3733882439, ; 129: Unity.Abstractions.dll => 0xde8e8647 => 40
	i32 3748608112, ; 130: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 31
	i32 3787005001, ; 131: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 8
	i32 3829621856, ; 132: System.Numerics.dll => 0xe4436460 => 1
	i32 3841636137, ; 133: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 17
	i32 3896760992, ; 134: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 47
	i32 3955647286, ; 135: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 44
	i32 4023392905, ; 136: System.IO.Pipelines => 0xefd01a89 => 33
	i32 4085261167, ; 137: Prism.Forms => 0xf380236f => 27
	i32 4105002889, ; 138: Mono.Security.dll => 0xf4ad5f89 => 70
	i32 4126470640, ; 139: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 18
	i32 4151237749, ; 140: System.Core => 0xf76edc75 => 30
	i32 4213026141, ; 141: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 31
	i32 4260525087, ; 142: System.Buffers => 0xfdf2741f => 29
	i32 4293553716 ; 143: Essential.Interfaces => 0xffea6e34 => 5
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [144 x i32] [
	i32 66, i32 25, i32 61, i32 37, i32 40, i32 58, i32 9, i32 42, ; 0..7
	i32 1, i32 52, i32 10, i32 60, i32 50, i32 14, i32 24, i32 32, ; 8..15
	i32 0, i32 26, i32 22, i32 20, i32 16, i32 48, i32 35, i32 39, ; 16..23
	i32 21, i32 68, i32 0, i32 15, i32 66, i32 25, i32 52, i32 6, ; 24..31
	i32 57, i32 17, i32 44, i32 63, i32 54, i32 10, i32 32, i32 28, ; 32..39
	i32 12, i32 49, i32 69, i32 57, i32 46, i32 34, i32 8, i32 41, ; 40..47
	i32 64, i32 43, i32 22, i32 3, i32 55, i32 2, i32 65, i32 45, ; 48..55
	i32 33, i32 58, i32 20, i32 30, i32 50, i32 16, i32 55, i32 65, ; 56..63
	i32 11, i32 19, i32 27, i32 60, i32 64, i32 12, i32 14, i32 29, ; 64..71
	i32 54, i32 5, i32 53, i32 41, i32 26, i32 51, i32 62, i32 21, ; 72..79
	i32 19, i32 2, i32 56, i32 13, i32 4, i32 7, i32 35, i32 42, ; 80..87
	i32 37, i32 43, i32 61, i32 59, i32 46, i32 38, i32 11, i32 59, ; 88..95
	i32 9, i32 24, i32 28, i32 49, i32 6, i32 3, i32 71, i32 67, ; 96..103
	i32 4, i32 70, i32 45, i32 71, i32 48, i32 67, i32 51, i32 36, ; 104..111
	i32 47, i32 7, i32 56, i32 34, i32 69, i32 18, i32 38, i32 13, ; 112..119
	i32 23, i32 36, i32 39, i32 62, i32 63, i32 53, i32 23, i32 68, ; 120..127
	i32 15, i32 40, i32 31, i32 8, i32 1, i32 17, i32 47, i32 44, ; 128..135
	i32 33, i32 27, i32 70, i32 18, i32 30, i32 31, i32 29, i32 5 ; 144..143
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
