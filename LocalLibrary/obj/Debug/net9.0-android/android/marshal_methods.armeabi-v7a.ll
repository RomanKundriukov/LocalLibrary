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

@assembly_image_cache = dso_local local_unnamed_addr global [307 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [921 x i32] [
	i32 u0x0027eb9e, ; 0: System.Net.NetworkInformation.dll => 68
	i32 u0x00345a11, ; 1: lib_System.Net.Requests.dll.so => 72
	i32 u0x005332a8, ; 2: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 224
	i32 u0x009b21bb, ; 3: System.Net.NameResolution.dll => 67
	i32 u0x00c8cc5d, ; 4: lib_Xamarin.AndroidX.Loader.dll.so => 235
	i32 u0x00e0bbf7, ; 5: lib_System.Xml.XmlSerializer.dll.so => 162
	i32 u0x00efe298, ; 6: System.Runtime.Intrinsics.dll => 108
	i32 u0x0119bc86, ; 7: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 177
	i32 u0x01f2c4e1, ; 8: Xamarin.AndroidX.Lifecycle.Runtime => 230
	i32 u0x0211b5dc, ; 9: Xamarin.Google.Guava.ListenableFuture.dll => 264
	i32 u0x02139ac3, ; 10: System.IO.FileSystem.DriveInfo => 48
	i32 u0x025a8054, ; 11: System.Net.WebSockets.dll => 80
	i32 u0x02664405, ; 12: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 301
	i32 u0x028aa24d, ; 13: System.Threading.Thread => 145
	i32 u0x03358480, ; 14: lib_Microsoft.Maui.dll.so => 186
	i32 u0x03f75868, ; 15: System.Diagnostics.StackTrace => 30
	i32 u0x03fe76a9, ; 16: zh-Hant\Microsoft.Maui.Controls.resources => 305
	i32 u0x0410f24b, ; 17: System.Security.Cryptography.Primitives => 124
	i32 u0x044bb714, ; 18: Microsoft.Maui.Graphics.dll => 188
	i32 u0x04e7b0a1, ; 19: System.Runtime.CompilerServices.VisualC.dll => 102
	i32 u0x056606a6, ; 20: lib_System.Collections.NonGeneric.dll.so => 10
	i32 u0x060d4943, ; 21: Xamarin.AndroidX.SlidingPaneLayout => 248
	i32 u0x065dd880, ; 22: lib_System.Linq.Queryable.dll.so => 60
	i32 u0x06e4e181, ; 23: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 264
	i32 u0x06ee56d3, ; 24: lib_System.Net.Mail.dll.so => 66
	i32 u0x06ffddbc, ; 25: System.Runtime.InteropServices => 107
	i32 u0x072f9521, ; 26: Xamarin.AndroidX.SlidingPaneLayout.dll => 248
	i32 u0x074aea82, ; 27: System.Threading.Channels.dll => 139
	i32 u0x0772c6a7, ; 28: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i32 u0x080736a1, ; 29: Xamarin.Kotlin.StdLib.Jdk7.dll => 268
	i32 u0x0881c32f, ; 30: System.Net.WebHeaderCollection => 77
	i32 u0x08f064cf, ; 31: System.Security.Cryptography.Primitives.dll => 124
	i32 u0x097ed3c0, ; 32: System.ComponentModel.Annotations => 13
	i32 u0x098905a2, ; 33: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 206
	i32 u0x09d975c3, ; 34: Xamarin.AndroidX.Collection.dll => 204
	i32 u0x0a0c2bd0, ; 35: lib_Xamarin.AndroidX.Activity.dll.so => 193
	i32 u0x0a81994f, ; 36: System.ServiceProcess => 132
	i32 u0x0ade3a75, ; 37: Xamarin.AndroidX.SwipeRefreshLayout.dll => 250
	i32 u0x0ae43932, ; 38: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 251
	i32 u0x0aee6a3d, ; 39: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 302
	i32 u0x0aeedc53, ; 40: lib_Xamarin.Google.Android.Material.dll.so => 260
	i32 u0x0afca281, ; 41: System.ValueTuple.dll => 151
	i32 u0x0b0de1c3, ; 42: lib_System.Xml.XPath.XDocument.dll.so => 159
	i32 u0x0b63b1e1, ; 43: lib_System.Net.Http.Json.dll.so => 63
	i32 u0x0b721a36, ; 44: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 292
	i32 u0x0ba65f85, ; 45: vi/Microsoft.Maui.Controls.resources.dll => 302
	i32 u0x0ba8e231, ; 46: lib_System.Net.ServicePoint.dll.so => 74
	i32 u0x0bbb5a2f, ; 47: LocalLibrary.dll => 0
	i32 u0x0be195c3, ; 48: zh-HK/Microsoft.Maui.Controls.resources.dll => 303
	i32 u0x0c38ff48, ; 49: System.ComponentModel => 18
	i32 u0x0c7b2e71, ; 50: Xamarin.AndroidX.Browser.dll => 202
	i32 u0x0cfa66a6, ; 51: lib_System.IO.Compression.FileSystem.dll.so => 44
	i32 u0x0d1f8edb, ; 52: System.Diagnostics.Debug => 26
	i32 u0x0d73bff4, ; 53: lib_Microsoft.Extensions.Logging.Debug.dll.so => 180
	i32 u0x0db8d509, ; 54: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 224
	i32 u0x0dc10265, ; 55: Microsoft.CSharp.dll => 1
	i32 u0x0dc2f416, ; 56: lib_Xamarin.AndroidX.CustomView.dll.so => 213
	i32 u0x0dcb05c4, ; 57: System.Linq.Parallel => 59
	i32 u0x0dd133ce, ; 58: System.Globalization => 42
	i32 u0x0e762ada, ; 59: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 290
	i32 u0x0eb2f8c5, ; 60: System.Reflection.Emit.Lightweight => 91
	i32 u0x0ec71be0, ; 61: lib_System.Security.SecureString.dll.so => 129
	i32 u0x0ecfdca9, ; 62: lib_Xamarin.Android.Glide.dll.so => 189
	i32 u0x0f99119d, ; 63: Xamarin.AndroidX.ConstraintLayout.dll => 207
	i32 u0x107abf20, ; 64: System.Threading.Timer.dll => 147
	i32 u0x109c6ab8, ; 65: Xamarin.AndroidX.Lifecycle.LiveData.dll => 226
	i32 u0x10b7d2b7, ; 66: Xamarin.AndroidX.Interpolator => 223
	i32 u0x10bf9929, ; 67: cs/Microsoft.Maui.Controls.resources.dll => 274
	i32 u0x10c1d9f6, ; 68: lib_System.Data.DataSetExtensions.dll.so => 23
	i32 u0x113d3381, ; 69: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 297
	i32 u0x1159791e, ; 70: System.IO.Pipes.AccessControl.dll => 54
	i32 u0x11d123fd, ; 71: System.Net.Ping.dll => 69
	i32 u0x12ef55d8, ; 72: vi\Microsoft.Maui.Controls.resources => 302
	i32 u0x13031348, ; 73: Xamarin.AndroidX.Activity.dll => 193
	i32 u0x132b30dd, ; 74: System.Numerics => 83
	i32 u0x1331a702, ; 75: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 262
	i32 u0x136bf828, ; 76: lib_System.Runtime.dll.so => 116
	i32 u0x14095832, ; 77: ja/Microsoft.Maui.Controls.resources.dll => 287
	i32 u0x146817a2, ; 78: Xamarin.AndroidX.Lifecycle.Common => 225
	i32 u0x14eaf2a7, ; 79: lib_System.ComponentModel.Annotations.dll.so => 13
	i32 u0x153e1455, ; 80: it/Microsoft.Maui.Controls.resources.dll => 286
	i32 u0x15766b7b, ; 81: System.ServiceModel.Web => 131
	i32 u0x15c177ae, ; 82: lib_Microsoft.Extensions.Configuration.dll.so => 174
	i32 u0x15e184df, ; 83: lib_System.Runtime.Loader.dll.so => 109
	i32 u0x15ebe147, ; 84: System.IO.Pipes => 55
	i32 u0x1658bf94, ; 85: System.Transactions.Local => 149
	i32 u0x16646418, ; 86: System.Net.ServicePoint.dll => 74
	i32 u0x16a510e1, ; 87: System.Threading.Thread.dll => 145
	i32 u0x16fe439a, ; 88: System.Memory.dll => 62
	i32 u0x1766c1f7, ; 89: System.Threading.ThreadPool.dll => 146
	i32 u0x1778984a, ; 90: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 244
	i32 u0x17969339, ; 91: _Microsoft.Android.Resource.Designer => 306
	i32 u0x180c08d0, ; 92: WindowsBase => 165
	i32 u0x198cd3eb, ; 93: lib_System.Security.Cryptography.Encoding.dll.so => 122
	i32 u0x19f6996b, ; 94: sv/Microsoft.Maui.Controls.resources.dll => 298
	i32 u0x1a4e3ec4, ; 95: Xamarin.AndroidX.ConstraintLayout.Core => 208
	i32 u0x1a61054f, ; 96: System.Collections => 12
	i32 u0x1ae0ec2c, ; 97: Xamarin.AndroidX.Fragment.dll => 221
	i32 u0x1ae969b2, ; 98: System.Security.Cryptography.X509Certificates => 125
	i32 u0x1b317bfd, ; 99: System.Web.HttpUtility.dll => 152
	i32 u0x1b46a9fd, ; 100: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 231
	i32 u0x1b5932ea, ; 101: lib_Mono.Android.Runtime.dll.so => 170
	i32 u0x1b611806, ; 102: System.Runtime.Serialization.Primitives.dll => 113
	i32 u0x1bc4415d, ; 103: mscorlib => 166
	i32 u0x1bc6ffe7, ; 104: lib_Java.Interop.dll.so => 168
	i32 u0x1bcdaf18, ; 105: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 236
	i32 u0x1bff388e, ; 106: System.dll => 164
	i32 u0x1c690cb9, ; 107: Xamarin.AndroidX.Interpolator.dll => 223
	i32 u0x1c78d08a, ; 108: lib_System.Private.Uri.dll.so => 86
	i32 u0x1d05f80c, ; 109: Xamarin.AndroidX.LocalBroadcastManager.dll => 236
	i32 u0x1d48410e, ; 110: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 248
	i32 u0x1d4d8185, ; 111: lib_System.Runtime.Serialization.dll.so => 115
	i32 u0x1dbae811, ; 112: System.ObjectModel => 84
	i32 u0x1dd2dc50, ; 113: id/Microsoft.Maui.Controls.resources.dll => 285
	i32 u0x1e092f31, ; 114: fi/Microsoft.Maui.Controls.resources.dll => 279
	i32 u0x1e9789de, ; 115: Microsoft.Extensions.Primitives.dll => 182
	i32 u0x1f1dceb7, ; 116: lib_System.Security.Cryptography.Primitives.dll.so => 124
	i32 u0x1f443e2d, ; 117: lib_System.AppContext.dll.so => 6
	i32 u0x1f6088c2, ; 118: System.Transactions.dll => 150
	i32 u0x1f704948, ; 119: Xamarin.Kotlin.StdLib.Jdk7 => 268
	i32 u0x1f9b4faa, ; 120: System.Linq.Queryable => 60
	i32 u0x20216150, ; 121: Microsoft.Extensions.Logging => 178
	i32 u0x20303736, ; 122: System.IO.FileSystem.dll => 51
	i32 u0x2080b118, ; 123: System.Runtime.Extensions => 103
	i32 u0x20924146, ; 124: System.Runtime.Serialization.Xml => 114
	i32 u0x20bbb280, ; 125: System.Globalization.Calendars => 40
	i32 u0x213954e7, ; 126: Jsr305Binding => 261
	i32 u0x21f36ef8, ; 127: Xamarin.AndroidX.Window.Extensions.Core.Core => 259
	i32 u0x22697083, ; 128: System.Security.Cryptography.Cng => 120
	i32 u0x234b6fb2, ; 129: pt-BR/Microsoft.Maui.Controls.resources.dll => 293
	i32 u0x236793de, ; 130: lib_GoogleGson.dll.so => 173
	i32 u0x2386616a, ; 131: lib_System.ServiceModel.Web.dll.so => 131
	i32 u0x2397454a, ; 132: lib_System.Collections.Specialized.dll.so => 11
	i32 u0x23d83352, ; 133: System.IO.IsolatedStorage.dll => 52
	i32 u0x23eaab34, ; 134: lib_System.Core.dll.so => 21
	i32 u0x24154ecb, ; 135: System.IO.Compression.FileSystem => 44
	i32 u0x2459aaf0, ; 136: lib_System.Net.Sockets.dll.so => 75
	i32 u0x2493d7b9, ; 137: System.Security.Cryptography.Algorithms => 119
	i32 u0x2568904f, ; 138: Xamarin.AndroidX.CustomView => 213
	i32 u0x256d7863, ; 139: nl\Microsoft.Maui.Controls.resources => 291
	i32 u0x26233b86, ; 140: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 219
	i32 u0x26249f17, ; 141: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 214
	i32 u0x262968a7, ; 142: lib_System.Reflection.Extensions.dll.so => 93
	i32 u0x262d781c, ; 143: lib-de-Microsoft.Maui.Controls.resources.dll.so => 276
	i32 u0x2660a755, ; 144: System.Net => 81
	i32 u0x27787397, ; 145: System.Text.Encodings.Web.dll => 136
	i32 u0x278c7790, ; 146: Xamarin.AndroidX.VersionedParcelable => 255
	i32 u0x27b53050, ; 147: lib_System.Data.Common.dll.so => 22
	i32 u0x27b6d01f, ; 148: Xamarin.AndroidX.Arch.Core.Common.dll => 200
	i32 u0x2814a96c, ; 149: System.Collections.Concurrent => 8
	i32 u0x282acf5e, ; 150: lib_System.IO.FileSystem.dll.so => 51
	i32 u0x28607aa1, ; 151: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 293
	i32 u0x28bdabca, ; 152: System.Net.Security => 73
	i32 u0x2904cf94, ; 153: ca/Microsoft.Maui.Controls.resources.dll => 273
	i32 u0x29293ff5, ; 154: System.Xml.Linq.dll => 155
	i32 u0x29352520, ; 155: Xamarin.KotlinX.Coroutines.Android.dll => 270
	i32 u0x29423679, ; 156: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 212
	i32 u0x295a9e3d, ; 157: System.Windows => 154
	i32 u0x296c7566, ; 158: lib_System.Xml.dll.so => 163
	i32 u0x29af2b3b, ; 159: System.Reflection.Emit => 92
	i32 u0x29bd7e5b, ; 160: Xamarin.Jetbrains.Annotations => 265
	i32 u0x29be9df3, ; 161: System.IO.Compression.ZipFile => 45
	i32 u0x2a1e8ecb, ; 162: ko/Microsoft.Maui.Controls.resources.dll => 288
	i32 u0x2a4afd4a, ; 163: de/Microsoft.Maui.Controls.resources.dll => 276
	i32 u0x2af22123, ; 164: Xamarin.Kotlin.StdLib.Jdk8 => 269
	i32 u0x2b15ed29, ; 165: System.Runtime.Loader.dll => 109
	i32 u0x2ba1ca8c, ; 166: lib_System.Security.dll.so => 130
	i32 u0x2bd14e96, ; 167: System.Security.SecureString.dll => 129
	i32 u0x2cd6293c, ; 168: System.Diagnostics.Contracts.dll => 25
	i32 u0x2d052d0c, ; 169: Xamarin.Android.Glide.Annotations.dll => 190
	i32 u0x2d322560, ; 170: lib_System.Xml.XmlDocument.dll.so => 161
	i32 u0x2d445acd, ; 171: System.Net.Requests => 72
	i32 u0x2d745423, ; 172: System.IO.Pipes.dll => 55
	i32 u0x2e394f87, ; 173: System.IO.Compression => 46
	i32 u0x2e54ea9e, ; 174: sk\Microsoft.Maui.Controls.resources => 297
	i32 u0x2eec5558, ; 175: lib_System.Reflection.dll.so => 97
	i32 u0x2f0980eb, ; 176: Microsoft.Extensions.Options => 181
	i32 u0x2f0fe5eb, ; 177: lib_System.Reflection.DispatchProxy.dll.so => 89
	i32 u0x2f1c1e69, ; 178: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 214
	i32 u0x2ff6fb9f, ; 179: System.Data.Common => 22
	i32 u0x302809e9, ; 180: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 228
	i32 u0x30a0e95c, ; 181: lib_System.Threading.Thread.dll.so => 145
	i32 u0x311247b5, ; 182: System.Private.Uri.dll => 86
	i32 u0x317d5b75, ; 183: System.IO.Compression.Brotli => 43
	i32 u0x31a103c6, ; 184: System.Xml.XPath.dll => 160
	i32 u0x31b69d60, ; 185: System.Net.Quic => 71
	i32 u0x3246f6cd, ; 186: Xamarin.AndroidX.Print => 241
	i32 u0x3312831d, ; 187: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 216
	i32 u0x340ac0b8, ; 188: Microsoft.VisualBasic => 3
	i32 u0x34505120, ; 189: System.Globalization.dll => 42
	i32 u0x3463c971, ; 190: System.Net.Http.Json => 63
	i32 u0x34a66c56, ; 191: lib_System.IO.Pipes.dll.so => 55
	i32 u0x34d965f1, ; 192: lib_LocalLibrary.dll.so => 0
	i32 u0x352e5794, ; 193: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 263
	i32 u0x35e25008, ; 194: System.ComponentModel.Primitives.dll => 16
	i32 u0x3612ff2c, ; 195: lib_System.IO.dll.so => 57
	i32 u0x364e69a3, ; 196: System.IO.MemoryMappedFiles.dll => 53
	i32 u0x36e9595b, ; 197: lib_System.Transactions.dll.so => 150
	i32 u0x370eff4f, ; 198: lib_System.Globalization.Extensions.dll.so => 41
	i32 u0x373f6a31, ; 199: tr/Microsoft.Maui.Controls.resources.dll => 300
	i32 u0x3751ef41, ; 200: Xamarin.Google.Guava.ListenableFuture => 264
	i32 u0x3787b992, ; 201: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i32 u0x382704bd, ; 202: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 219
	i32 u0x38c136f7, ; 203: System.Runtime.InteropServices.JavaScript.dll => 105
	i32 u0x3904308f, ; 204: Xamarin.Kotlin.StdLib.Jdk8.dll => 269
	i32 u0x39481653, ; 205: lib_mscorlib.dll.so => 166
	i32 u0x399f1f06, ; 206: Xamarin.Google.Crypto.Tink.Android => 262
	i32 u0x39adca5e, ; 207: Xamarin.AndroidX.Lifecycle.Common.dll => 225
	i32 u0x3a20ecf3, ; 208: System.Diagnostics.Tracing => 34
	i32 u0x3a2aaa1d, ; 209: System.Xml.XDocument => 158
	i32 u0x3a8b0a79, ; 210: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 270
	i32 u0x3acd0267, ; 211: System.Private.DataContractSerialization.dll => 85
	i32 u0x3ad7b407, ; 212: System.Diagnostics.Tools => 32
	i32 u0x3b008d80, ; 213: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 217
	i32 u0x3b2c715c, ; 214: System.Collections.dll => 12
	i32 u0x3b458447, ; 215: lib_System.Threading.Tasks.Dataflow.dll.so => 141
	i32 u0x3b45fb35, ; 216: System.IO.FileSystem => 51
	i32 u0x3bb6bd33, ; 217: System.IO.UnmanagedMemoryStream.dll => 56
	i32 u0x3c5e5b62, ; 218: Xamarin.AndroidX.SavedState.dll => 245
	i32 u0x3cbffa41, ; 219: System.Drawing => 36
	i32 u0x3d548d92, ; 220: Microsoft.Extensions.DependencyInjection.Abstractions => 177
	i32 u0x3d5a6611, ; 221: da/Microsoft.Maui.Controls.resources.dll => 275
	i32 u0x3d7be038, ; 222: Xamarin.Google.ErrorProne.Annotations.dll => 263
	i32 u0x3dbaaf8f, ; 223: Xamarin.AndroidX.AppCompat => 198
	i32 u0x3dc84a49, ; 224: System.Drawing.Primitives.dll => 35
	i32 u0x3df150e9, ; 225: lib_Xamarin.AndroidX.Interpolator.dll.so => 223
	i32 u0x3e444eb4, ; 226: System.Linq.Expressions.dll => 58
	i32 u0x3e5c42fd, ; 227: lib_System.Reflection.TypeExtensions.dll.so => 96
	i32 u0x3eb776a1, ; 228: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 232
	i32 u0x3ebd41f6, ; 229: lib_System.Collections.dll.so => 12
	i32 u0x3ecd3024, ; 230: lib_System.Resources.Reader.dll.so => 98
	i32 u0x3eea4db8, ; 231: lib_Microsoft.Extensions.Primitives.dll.so => 182
	i32 u0x3f3e1e33, ; 232: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 229
	i32 u0x3f9dcf8c, ; 233: GoogleGson => 173
	i32 u0x408b17f4, ; 234: System.ComponentModel.TypeConverter => 17
	i32 u0x409e66d8, ; 235: Xamarin.Kotlin.StdLib => 266
	i32 u0x41761b2c, ; 236: System => 164
	i32 u0x4232ae7b, ; 237: lib_System.Reflection.Emit.dll.so => 92
	i32 u0x42a75631, ; 238: ko\Microsoft.Maui.Controls.resources => 288
	i32 u0x42be2972, ; 239: lib_System.Text.Encodings.Web.dll.so => 136
	i32 u0x42c091c1, ; 240: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 192
	i32 u0x42da3e50, ; 241: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 231
	i32 u0x43362f15, ; 242: Microsoft.Extensions.Logging.Debug => 180
	i32 u0x4393e151, ; 243: lib-th-Microsoft.Maui.Controls.resources.dll.so => 299
	i32 u0x441f18e1, ; 244: lib_System.Security.Cryptography.OpenSsl.dll.so => 123
	i32 u0x444e5c8e, ; 245: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i32 u0x44549c93, ; 246: lib_System.Net.WebProxy.dll.so => 78
	i32 u0x4474042c, ; 247: lib_System.Numerics.Vectors.dll.so => 82
	i32 u0x447dc2e6, ; 248: Xamarin.AndroidX.Window => 258
	i32 u0x44845810, ; 249: lib_System.Net.Http.dll.so => 64
	i32 u0x44c3958b, ; 250: lib_System.Private.DataContractSerialization.dll.so => 85
	i32 u0x45a64089, ; 251: pt\Microsoft.Maui.Controls.resources => 294
	i32 u0x45bde382, ; 252: lib_System.Windows.dll.so => 154
	i32 u0x45c677b2, ; 253: System.Web.dll => 153
	i32 u0x460b48eb, ; 254: Xamarin.AndroidX.VectorDrawable.Animated => 254
	i32 u0x463a8801, ; 255: Xamarin.AndroidX.Navigation.Runtime.dll => 239
	i32 u0x466ae52b, ; 256: lib_System.Threading.Overlapped.dll.so => 140
	i32 u0x47a87de7, ; 257: lib_System.Resources.Writer.dll.so => 100
	i32 u0x47b79c15, ; 258: pl/Microsoft.Maui.Controls.resources.dll => 292
	i32 u0x47c7b4fa, ; 259: Xamarin.AndroidX.Arch.Core.Common => 200
	i32 u0x480a69ad, ; 260: System.Diagnostics.Process => 29
	i32 u0x48aa6be3, ; 261: System.IO.IsolatedStorage => 52
	i32 u0x48bf92c4, ; 262: lib_Xamarin.AndroidX.Collection.dll.so => 204
	i32 u0x49654709, ; 263: lib_System.Threading.Timer.dll.so => 147
	i32 u0x499b8219, ; 264: nb/Microsoft.Maui.Controls.resources.dll => 290
	i32 u0x4a0189ae, ; 265: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 282
	i32 u0x4a18f6f7, ; 266: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 259
	i32 u0x4aaf6f7c, ; 267: Microsoft.Win32.Registry => 5
	i32 u0x4ae97402, ; 268: lib_Microsoft.Maui.Graphics.dll.so => 188
	i32 u0x4b2913cb, ; 269: cs\Microsoft.Maui.Controls.resources => 274
	i32 u0x4b5eebe5, ; 270: Xamarin.AndroidX.Startup.StartupRuntime.dll => 249
	i32 u0x4b863c7a, ; 271: lib_System.Private.Xml.Linq.dll.so => 87
	i32 u0x4b8a64a7, ; 272: Xamarin.AndroidX.VectorDrawable => 253
	i32 u0x4bb12d98, ; 273: lib_System.Runtime.Serialization.Xml.dll.so => 114
	i32 u0x4be46b58, ; 274: Xamarin.AndroidX.Collection.Ktx => 205
	i32 u0x4c071bea, ; 275: Xamarin.KotlinX.Coroutines.Android => 270
	i32 u0x4c3393c5, ; 276: Xamarin.AndroidX.Annotation.Jvm => 197
	i32 u0x4d14ee2b, ; 277: Xamarin.AndroidX.DrawerLayout.dll => 216
	i32 u0x4de0ce3b, ; 278: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 242
	i32 u0x4e08a30b, ; 279: System.Private.DataContractSerialization => 85
	i32 u0x4e98c997, ; 280: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 259
	i32 u0x4ed70c83, ; 281: Xamarin.AndroidX.Window.dll => 258
	i32 u0x4eed2679, ; 282: System.Linq => 61
	i32 u0x4f97822f, ; 283: System.Runtime.Serialization.Json.dll => 112
	i32 u0x50255dd9, ; 284: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 283
	i32 u0x50acdfd7, ; 285: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 273
	i32 u0x514d38cd, ; 286: System.IO => 57
	i32 u0x51d86049, ; 287: zh-Hans\Microsoft.Maui.Controls.resources => 304
	i32 u0x52114ed3, ; 288: Xamarin.AndroidX.SavedState => 245
	i32 u0x523dc4c1, ; 289: System.Resources.ResourceManager => 99
	i32 u0x52f8d494, ; 290: lib_Microsoft.Maui.Controls.Compatibility.dll.so => 183
	i32 u0x533678bd, ; 291: lib_System.Private.CoreLib.dll.so => 172
	i32 u0x53701274, ; 292: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i32 u0x53936ab4, ; 293: System.Configuration.dll => 19
	i32 u0x53cefc50, ; 294: Xamarin.AndroidX.CoordinatorLayout => 209
	i32 u0x53f80ba6, ; 295: System.Runtime.Serialization.Formatters.dll => 111
	i32 u0x5423e47b, ; 296: System.Runtime.CompilerServices.Unsafe => 101
	i32 u0x54246761, ; 297: lib_System.Diagnostics.Tools.dll.so => 32
	i32 u0x5498bac9, ; 298: lib_Microsoft.VisualBasic.dll.so => 3
	i32 u0x54ca50cb, ; 299: System.Runtime.CompilerServices.VisualC => 102
	i32 u0x55465605, ; 300: ar\Microsoft.Maui.Controls.resources => 272
	i32 u0x557217fe, ; 301: lib_System.Numerics.dll.so => 83
	i32 u0x557b5293, ; 302: System.Runtime.Handles => 104
	i32 u0x558bc221, ; 303: Xamarin.Google.Crypto.Tink.Android.dll => 262
	i32 u0x55d10363, ; 304: System.Net.Quic.dll => 71
	i32 u0x55dfaca3, ; 305: lib_Microsoft.Win32.Primitives.dll.so => 4
	i32 u0x568cd628, ; 306: System.Formats.Asn1.dll => 38
	i32 u0x569fcb36, ; 307: System.Diagnostics.Tools.dll => 32
	i32 u0x56c018af, ; 308: lib_System.IO.UnmanagedMemoryStream.dll.so => 56
	i32 u0x56e36530, ; 309: System.Runtime.Extensions.dll => 103
	i32 u0x56e7a7ad, ; 310: System.Net.Security.dll => 73
	i32 u0x57152abe, ; 311: es\Microsoft.Maui.Controls.resources => 278
	i32 u0x5718a9ef, ; 312: System.Collections.Immutable.dll => 9
	i32 u0x57201017, ; 313: System.Security.Cryptography.OpenSsl => 123
	i32 u0x57261233, ; 314: System.IO.Compression.dll => 46
	i32 u0x57924923, ; 315: Xamarin.AndroidX.AppCompat.AppCompatResources => 199
	i32 u0x57a5e912, ; 316: Microsoft.Extensions.Primitives => 182
	i32 u0x5833866d, ; 317: System.Collections.Immutable => 9
	i32 u0x583e844f, ; 318: System.IO.Compression.Brotli.dll => 43
	i32 u0x58a57897, ; 319: Microsoft.Win32.Primitives => 4
	i32 u0x58cffa99, ; 320: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 246
	i32 u0x58fd6613, ; 321: hi/Microsoft.Maui.Controls.resources.dll => 282
	i32 u0x596b5b3a, ; 322: lib_System.Drawing.Primitives.dll.so => 35
	i32 u0x5a48cf6c, ; 323: el/Microsoft.Maui.Controls.resources.dll => 277
	i32 u0x5a68340f, ; 324: lib_Xamarin.Kotlin.StdLib.Jdk7.dll.so => 268
	i32 u0x5b9331b6, ; 325: System.Diagnostics.TextWriterTraceListener => 31
	i32 u0x5be451c7, ; 326: lib_Xamarin.AndroidX.Browser.dll.so => 202
	i32 u0x5bf8ca0f, ; 327: System.Text.RegularExpressions.dll => 138
	i32 u0x5bfdbb43, ; 328: System.Reflection.Emit.dll => 92
	i32 u0x5c680b40, ; 329: System.Reflection.Extensions.dll => 93
	i32 u0x5c7be408, ; 330: sk/Microsoft.Maui.Controls.resources.dll => 297
	i32 u0x5d552ab7, ; 331: System.IO.FileSystem.Primitives => 49
	i32 u0x5d5a6c40, ; 332: System.Threading.Tasks.Dataflow.dll => 141
	i32 u0x5dccd455, ; 333: System.Runtime.Serialization.Json => 112
	i32 u0x5e2d7514, ; 334: System.Threading.Overlapped => 140
	i32 u0x5e2e3abe, ; 335: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i32 u0x5e5114e2, ; 336: Xamarin.AndroidX.DocumentFile.dll => 215
	i32 u0x5e7321d2, ; 337: lib_System.ComponentModel.Primitives.dll.so => 16
	i32 u0x5ef2ee25, ; 338: System.Runtime.Serialization.dll => 115
	i32 u0x5f3ec4dd, ; 339: Xamarin.Google.ErrorProne.Annotations => 263
	i32 u0x5f6f0b5b, ; 340: System.Xml.Serialization => 157
	i32 u0x5fa7b851, ; 341: System.Net.WebClient => 76
	i32 u0x5ffcb88d, ; 342: LocalLibrary => 0
	i32 u0x6078995d, ; 343: System.Net.WebSockets.Client.dll => 79
	i32 u0x60892624, ; 344: lib_System.Formats.Tar.dll.so => 39
	i32 u0x60b0136a, ; 345: Xamarin.AndroidX.Loader.dll => 235
	i32 u0x60b33958, ; 346: System.Dynamic.Runtime => 37
	i32 u0x60d97228, ; 347: Xamarin.AndroidX.ViewPager2 => 257
	i32 u0x60ec189c, ; 348: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 201
	i32 u0x6176eff7, ; 349: Xamarin.AndroidX.Emoji2.ViewsHelper => 219
	i32 u0x6188ba7e, ; 350: Xamarin.AndroidX.CursorAdapter => 212
	i32 u0x61b9038d, ; 351: System.Net.Http.dll => 64
	i32 u0x61c036ca, ; 352: System.Text.RegularExpressions => 138
	i32 u0x61d59e0e, ; 353: System.ComponentModel.EventBasedAsync.dll => 15
	i32 u0x62021776, ; 354: lib_System.IO.Compression.dll.so => 46
	i32 u0x620a8774, ; 355: lib_System.Xml.ReaderWriter.dll.so => 156
	i32 u0x625755ef, ; 356: lib_WindowsBase.dll.so => 165
	i32 u0x62c6282e, ; 357: System.Runtime => 116
	i32 u0x62cec1a2, ; 358: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 271
	i32 u0x62d6c1e4, ; 359: Xamarin.AndroidX.Tracing.Tracing.dll => 251
	i32 u0x62d6ea10, ; 360: Xamarin.Google.Android.Material.dll => 260
	i32 u0x638b1991, ; 361: Xamarin.AndroidX.ConstraintLayout => 207
	i32 u0x63dee9da, ; 362: System.IO.FileSystem.DriveInfo.dll => 48
	i32 u0x63fca3d0, ; 363: System.Net.Primitives.dll => 70
	i32 u0x640c0103, ; 364: System.Net.WebSockets => 80
	i32 u0x641f3e5a, ; 365: System.Security.Cryptography => 126
	i32 u0x64d1e4f5, ; 366: System.Reflection.Metadata => 94
	i32 u0x6525abc9, ; 367: System.Security.Cryptography.Csp => 121
	i32 u0x654240fb, ; 368: Xamarin.Kotlin.StdLib.Common => 267
	i32 u0x654b1498, ; 369: lib_System.Transactions.Local.dll.so => 149
	i32 u0x656b7698, ; 370: System.Diagnostics.Debug.dll => 26
	i32 u0x6670b12e, ; 371: lib_System.Security.AccessControl.dll.so => 117
	i32 u0x66888819, ; 372: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 228
	i32 u0x66e27484, ; 373: System.Reflection.dll => 97
	i32 u0x66ffb0f8, ; 374: System.Diagnostics.FileVersionInfo.dll => 28
	i32 u0x6715dc86, ; 375: Xamarin.AndroidX.CardView.dll => 203
	i32 u0x67577fe1, ; 376: lib_System.Runtime.CompilerServices.VisualC.dll.so => 102
	i32 u0x677cd287, ; 377: ro/Microsoft.Maui.Controls.resources.dll => 295
	i32 u0x67ea6886, ; 378: ca\Microsoft.Maui.Controls.resources => 273
	i32 u0x67fe8db2, ; 379: System.Transactions.Local.dll => 149
	i32 u0x6816ab6a, ; 380: Mono.Android.Export => 169
	i32 u0x6853a83d, ; 381: Microsoft.Win32.Primitives.dll => 4
	i32 u0x68cc9d1e, ; 382: System.Resources.Reader.dll => 98
	i32 u0x68f61ae4, ; 383: lib_System.Formats.Asn1.dll.so => 38
	i32 u0x690d4b7d, ; 384: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 305
	i32 u0x69239124, ; 385: System.Diagnostics.TraceSource.dll => 33
	i32 u0x693efa35, ; 386: lib_System.Net.WebHeaderCollection.dll.so => 77
	i32 u0x6942234e, ; 387: System.Reflection.Extensions => 93
	i32 u0x6947f945, ; 388: Xamarin.AndroidX.SwipeRefreshLayout => 250
	i32 u0x6988f147, ; 389: Microsoft.Extensions.Logging.dll => 178
	i32 u0x69ae5451, ; 390: lib_System.Runtime.InteropServices.JavaScript.dll.so => 105
	i32 u0x69dc03cc, ; 391: System.Core.dll => 21
	i32 u0x69ec0683, ; 392: System.Globalization.Extensions.dll => 41
	i32 u0x69f4f41d, ; 393: lib_Xamarin.AndroidX.AppCompat.dll.so => 198
	i32 u0x6a216153, ; 394: Mono.Android.Runtime.dll => 170
	i32 u0x6a445122, ; 395: ms\Microsoft.Maui.Controls.resources => 289
	i32 u0x6a539b49, ; 396: lib_System.Runtime.Extensions.dll.so => 103
	i32 u0x6a96652d, ; 397: Xamarin.AndroidX.Fragment => 221
	i32 u0x6aea89d2, ; 398: he\Microsoft.Maui.Controls.resources => 281
	i32 u0x6afaf338, ; 399: lib_System.Threading.dll.so => 148
	i32 u0x6b645ada, ; 400: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 280
	i32 u0x6bcd3296, ; 401: Xamarin.AndroidX.Loader => 235
	i32 u0x6c111525, ; 402: Xamarin.Kotlin.StdLib.dll => 266
	i32 u0x6c13413e, ; 403: Xamarin.Google.Android.Material => 260
	i32 u0x6c652ce8, ; 404: Xamarin.AndroidX.Navigation.UI.dll => 240
	i32 u0x6c687fa7, ; 405: Microsoft.VisualBasic.Core => 2
	i32 u0x6cbab720, ; 406: System.Text.Encoding.Extensions => 134
	i32 u0x6cc30c8c, ; 407: System.Runtime.Serialization.Formatters => 111
	i32 u0x6cf3d432, ; 408: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 255
	i32 u0x6cff90ba, ; 409: Microsoft.Extensions.Logging.Abstractions.dll => 179
	i32 u0x6dcaebf7, ; 410: uk/Microsoft.Maui.Controls.resources.dll => 301
	i32 u0x6e1ed932, ; 411: Xamarin.Android.Glide.Annotations => 190
	i32 u0x6e72ed77, ; 412: sv\Microsoft.Maui.Controls.resources => 298
	i32 u0x6ec71a65, ; 413: System.Linq.Expressions => 58
	i32 u0x6f7a29e4, ; 414: System.Reflection.Primitives => 95
	i32 u0x6fab02f2, ; 415: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 207
	i32 u0x6fd07f30, ; 416: fr\Microsoft.Maui.Controls.resources => 280
	i32 u0x7009e4c3, ; 417: System.Formats.Tar.dll => 39
	i32 u0x705fa726, ; 418: Xamarin.AndroidX.Arch.Core.Runtime.dll => 201
	i32 u0x7070c6c0, ; 419: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 304
	i32 u0x70972b6d, ; 420: System.Diagnostics.Contracts => 25
	i32 u0x70a66bdd, ; 421: System.Reflection.Metadata.dll => 94
	i32 u0x7124cf39, ; 422: System.Reflection.DispatchProxy => 89
	i32 u0x71490522, ; 423: System.Resources.ResourceManager.dll => 99
	i32 u0x71dc7c8b, ; 424: System.Collections.NonGeneric.dll => 10
	i32 u0x72fcebde, ; 425: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 199
	i32 u0x731dd955, ; 426: lib_Mono.Android.dll.so => 171
	i32 u0x739bd4a8, ; 427: System.Private.Xml.Linq => 87
	i32 u0x73b20433, ; 428: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i32 u0x73fbecbe, ; 429: lib_System.Memory.dll.so => 62
	i32 u0x74126030, ; 430: lib_System.Net.WebClient.dll.so => 76
	i32 u0x74a1c5bb, ; 431: System.Resources.Writer => 100
	i32 u0x74eee4ef, ; 432: Xamarin.AndroidX.Security.SecurityCrypto.dll => 247
	i32 u0x75533a5e, ; 433: Microsoft.Extensions.Configuration.dll => 174
	i32 u0x7593c33f, ; 434: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i32 u0x7634913f, ; 435: Xamarin.Kotlin.StdLib.Common.dll => 267
	i32 u0x765c50a4, ; 436: Xamarin.Android.Glide.GifDecoder => 192
	i32 u0x77651e38, ; 437: el\Microsoft.Maui.Controls.resources => 277
	i32 u0x77ec19b4, ; 438: System.Buffers.dll => 7
	i32 u0x784d3e49, ; 439: lib_System.Net.dll.so => 81
	i32 u0x785e97f1, ; 440: Xamarin.AndroidX.Lifecycle.ViewModel => 232
	i32 u0x78b622b1, ; 441: ar/Microsoft.Maui.Controls.resources.dll => 272
	i32 u0x790376c9, ; 442: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 196
	i32 u0x791a414b, ; 443: Xamarin.Android.Glide => 189
	i32 u0x7970be4f, ; 444: lib-he-Microsoft.Maui.Controls.resources.dll.so => 281
	i32 u0x79eb68ee, ; 445: System.Private.Xml => 88
	i32 u0x7a80bd4e, ; 446: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 227
	i32 u0x7aca0819, ; 447: System.Windows.dll => 154
	i32 u0x7b277953, ; 448: de\Microsoft.Maui.Controls.resources => 276
	i32 u0x7b350579, ; 449: lib__Microsoft.Android.Resource.Designer.dll.so => 306
	i32 u0x7b473a37, ; 450: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 222
	i32 u0x7b6f419e, ; 451: System.Diagnostics.TraceSource => 33
	i32 u0x7b8f6ff7, ; 452: lib_System.Runtime.Serialization.Json.dll.so => 112
	i32 u0x7bf8cdab, ; 453: System.Runtime.dll => 116
	i32 u0x7c51ebd4, ; 454: lib_System.Net.HttpListener.dll.so => 65
	i32 u0x7c9bf920, ; 455: System.Numerics.Vectors => 82
	i32 u0x7d702d52, ; 456: lib_System.Text.Encoding.dll.so => 135
	i32 u0x7ec9ffe9, ; 457: System.Console => 20
	i32 u0x7fb38cd2, ; 458: System.Collections.Specialized => 11
	i32 u0x7fc7a41e, ; 459: System.Xml.XmlSerializer.dll => 162
	i32 u0x7fd90a71, ; 460: lib_System.Text.Encoding.CodePages.dll.so => 133
	i32 u0x7fdcdc37, ; 461: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 288
	i32 u0x7ff65cf5, ; 462: Microsoft.VisualBasic.dll => 3
	i32 u0x802a7166, ; 463: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i32 u0x8044e1bd, ; 464: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 289
	i32 u0x8081c489, ; 465: lib_Jsr305Binding.dll.so => 261
	i32 u0x80bd55ad, ; 466: Microsoft.Maui => 186
	i32 u0x80f2f56e, ; 467: lib_System.Runtime.Serialization.Formatters.dll.so => 111
	i32 u0x8115bdf3, ; 468: lib_System.Resources.ResourceManager.dll.so => 99
	i32 u0x814a9272, ; 469: hu\Microsoft.Maui.Controls.resources => 284
	i32 u0x816751d8, ; 470: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i32 u0x81a110ae, ; 471: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i32 u0x820d22b3, ; 472: Microsoft.Extensions.Options.dll => 181
	i32 u0x82364da2, ; 473: lib_System.Buffers.dll.so => 7
	i32 u0x82a8237c, ; 474: Microsoft.Extensions.Logging.Abstractions => 179
	i32 u0x82b6c85e, ; 475: System.ObjectModel.dll => 84
	i32 u0x82bb5429, ; 476: lib_System.Linq.Expressions.dll.so => 58
	i32 u0x82c1cf3e, ; 477: lib_System.Net.Quic.dll.so => 71
	i32 u0x832ec206, ; 478: lib_System.Diagnostics.StackTrace.dll.so => 30
	i32 u0x83323b38, ; 479: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 271
	i32 u0x8334206b, ; 480: System.Net.Http => 64
	i32 u0x839595db, ; 481: it\Microsoft.Maui.Controls.resources => 286
	i32 u0x842e93b2, ; 482: Xamarin.AndroidX.VectorDrawable.Animated.dll => 254
	i32 u0x8471e4ec, ; 483: System.Threading.Tasks.Parallel => 143
	i32 u0x857e4dd2, ; 484: lib_System.Net.WebSockets.dll.so => 80
	i32 u0x85cc8d80, ; 485: Xamarin.AndroidX.LocalBroadcastManager => 236
	i32 u0x8628f1a4, ; 486: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 296
	i32 u0x863c6ac5, ; 487: System.Xml.Serialization.dll => 157
	i32 u0x867c9c52, ; 488: System.Globalization.Extensions => 41
	i32 u0x86b0fd78, ; 489: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 233
	i32 u0x86bba59b, ; 490: lib_Microsoft.Maui.Controls.dll.so => 184
	i32 u0x8702d9a2, ; 491: System.Security.AccessControl.dll => 117
	i32 u0x871c9c1b, ; 492: Microsoft.Extensions.Configuration.Abstractions => 175
	i32 u0x872eeb7b, ; 493: Xamarin.Android.Glide.DiskLruCache.dll => 191
	i32 u0x875633cc, ; 494: fr/Microsoft.Maui.Controls.resources.dll => 280
	i32 u0x87a1a22b, ; 495: lib-it-Microsoft.Maui.Controls.resources.dll.so => 286
	i32 u0x87e25095, ; 496: Xamarin.AndroidX.RecyclerView.dll => 243
	i32 u0x87e7fdbb, ; 497: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 291
	i32 u0x881f94da, ; 498: lib_netstandard.dll.so => 167
	i32 u0x88acefcd, ; 499: System.ServiceModel.Web.dll => 131
	i32 u0x88d8bfaa, ; 500: System.Net.Sockets => 75
	i32 u0x88ffe49e, ; 501: System.Net.Mail => 66
	i32 u0x89535ee5, ; 502: nb\Microsoft.Maui.Controls.resources => 290
	i32 u0x896b7878, ; 503: System.Private.CoreLib.dll => 172
	i32 u0x8a068af2, ; 504: Xamarin.AndroidX.Annotation.dll => 195
	i32 u0x8a52059a, ; 505: System.Threading.Tasks.Parallel.dll => 143
	i32 u0x8a92797b, ; 506: lib_Xamarin.AndroidX.DocumentFile.dll.so => 215
	i32 u0x8b804dbf, ; 507: System.Runtime.InteropServices.RuntimeInformation.dll => 106
	i32 u0x8bbaa2cd, ; 508: System.ValueTuple => 151
	i32 u0x8c20c628, ; 509: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 279
	i32 u0x8c20f140, ; 510: lib_System.Console.dll.so => 20
	i32 u0x8c40e0db, ; 511: System.Net.Primitives => 70
	i32 u0x8d19e4a2, ; 512: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 226
	i32 u0x8d24e767, ; 513: System.Xml.ReaderWriter.dll => 156
	i32 u0x8d52b2e2, ; 514: Microsoft.Extensions.Configuration => 174
	i32 u0x8d52d3de, ; 515: lib_System.Threading.Tasks.dll.so => 144
	i32 u0x8dc6dbce, ; 516: System.Security.Cryptography.Csp.dll => 121
	i32 u0x8dcb0101, ; 517: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 238
	i32 u0x8e02310f, ; 518: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 272
	i32 u0x8e114655, ; 519: System.Security.Principal.Windows.dll => 127
	i32 u0x8ece1c24, ; 520: id\Microsoft.Maui.Controls.resources => 285
	i32 u0x8f24faee, ; 521: System.Web.HttpUtility => 152
	i32 u0x8f41c524, ; 522: Xamarin.AndroidX.Emoji2.dll => 218
	i32 u0x8f4e087a, ; 523: lib_System.Web.dll.so => 153
	i32 u0x8f8c64e2, ; 524: lib_System.Private.Xml.dll.so => 88
	i32 u0x905355ed, ; 525: System.Threading.Tasks.Dataflow => 141
	i32 u0x906d466b, ; 526: Xamarin.AndroidX.Collection.Ktx.dll => 205
	i32 u0x90b57e2b, ; 527: hi\Microsoft.Maui.Controls.resources => 282
	i32 u0x90e50509, ; 528: lib_System.Reflection.Primitives.dll.so => 95
	i32 u0x911615a7, ; 529: lib_Xamarin.AndroidX.Fragment.dll.so => 221
	i32 u0x912896e5, ; 530: System.Console.dll => 20
	i32 u0x9130f5e7, ; 531: System.ComponentModel.DataAnnotations.dll => 14
	i32 u0x91abdf3a, ; 532: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 249
	i32 u0x924edee6, ; 533: System.Text.Encoding.dll => 135
	i32 u0x928c75ca, ; 534: System.Net.Sockets.dll => 75
	i32 u0x92916334, ; 535: System.Linq.Parallel.dll => 59
	i32 u0x92f50938, ; 536: Xamarin.AndroidX.ConstraintLayout.Core.dll => 208
	i32 u0x93554fdc, ; 537: netstandard.dll => 167
	i32 u0x93634cc0, ; 538: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 228
	i32 u0x93918882, ; 539: Java.Interop.dll => 168
	i32 u0x93dba8a1, ; 540: Microsoft.Maui.Controls => 184
	i32 u0x940d5c2f, ; 541: System.ComponentModel.EventBasedAsync => 15
	i32 u0x94147f61, ; 542: System.Net.ServicePoint => 74
	i32 u0x9438d78e, ; 543: lib_System.Text.Json.dll.so => 137
	i32 u0x9469ba86, ; 544: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 230
	i32 u0x94798bc5, ; 545: System.AppContext.dll => 6
	i32 u0x94a1db18, ; 546: lib-id-Microsoft.Maui.Controls.resources.dll.so => 285
	i32 u0x94fad8e5, ; 547: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 194
	i32 u0x95178668, ; 548: System.Data.DataSetExtensions => 23
	i32 u0x955cf248, ; 549: Xamarin.AndroidX.Lifecycle.Runtime.dll => 230
	i32 u0x9593ae7f, ; 550: lib_Xamarin.AndroidX.SavedState.dll.so => 245
	i32 u0x9659e17c, ; 551: Xamarin.Android.Glide.dll => 189
	i32 u0x96bea474, ; 552: lib_Microsoft.Maui.Controls.Xaml.dll.so => 185
	i32 u0x974b89a2, ; 553: System.Reflection.Emit.Lightweight.dll => 91
	i32 u0x980b3e74, ; 554: hr\Microsoft.Maui.Controls.resources => 283
	i32 u0x98ba5a04, ; 555: Microsoft.CSharp => 1
	i32 u0x9930ee42, ; 556: System.Text.Encodings.Web => 136
	i32 u0x99e2e424, ; 557: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 231
	i32 u0x99e370f2, ; 558: Xamarin.AndroidX.VectorDrawable.dll => 253
	i32 u0x9a1756ac, ; 559: System.Text.Encoding.Extensions.dll => 134
	i32 u0x9a20430d, ; 560: System.Net.Ping => 69
	i32 u0x9a5a3337, ; 561: System.Threading.ThreadPool => 146
	i32 u0x9a959db3, ; 562: pl\Microsoft.Maui.Controls.resources => 292
	i32 u0x9b24ab96, ; 563: lib_System.Runtime.Serialization.Primitives.dll.so => 113
	i32 u0x9b500441, ; 564: Xamarin.KotlinX.Coroutines.Core.Jvm => 271
	i32 u0x9b5e5b1c, ; 565: lib_System.Diagnostics.Contracts.dll.so => 25
	i32 u0x9be14c08, ; 566: Xamarin.AndroidX.Fragment.Ktx => 222
	i32 u0x9bf052c1, ; 567: Microsoft.Extensions.Logging.Debug.dll => 180
	i32 u0x9bfe3a41, ; 568: System.Private.Xml.dll => 88
	i32 u0x9c165ff9, ; 569: System.Reflection.TypeExtensions.dll => 96
	i32 u0x9c375496, ; 570: Xamarin.AndroidX.CursorAdapter.dll => 212
	i32 u0x9c70e6c9, ; 571: Xamarin.AndroidX.DynamicAnimation => 217
	i32 u0x9c924485, ; 572: ja\Microsoft.Maui.Controls.resources => 287
	i32 u0x9c96ac4c, ; 573: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 240
	i32 u0x9c97ad4a, ; 574: System.Diagnostics.TextWriterTraceListener.dll => 31
	i32 u0x9cc03a58, ; 575: System.IO.Compression.ZipFile.dll => 45
	i32 u0x9cd341b2, ; 576: lib_System.Threading.Tasks.Parallel.dll.so => 143
	i32 u0x9cf12c56, ; 577: Xamarin.AndroidX.Lifecycle.LiveData => 226
	i32 u0x9e78dac1, ; 578: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 234
	i32 u0x9ec022c0, ; 579: Xamarin.Android.Glide.DiskLruCache => 191
	i32 u0x9ec4cf01, ; 580: System.Runtime.Loader => 109
	i32 u0x9ecf752a, ; 581: System.Xml.XDocument.dll => 158
	i32 u0x9ee22cc0, ; 582: System.Drawing.Primitives => 35
	i32 u0x9f7ea921, ; 583: lib_System.Runtime.InteropServices.dll.so => 107
	i32 u0x9f8c6f40, ; 584: System.Data.Common.dll => 22
	i32 u0xa026a50c, ; 585: System.Runtime.Serialization.Xml.dll => 114
	i32 u0xa090e36a, ; 586: System.IO.dll => 57
	i32 u0xa0fb56af, ; 587: lib_System.Text.RegularExpressions.dll.so => 138
	i32 u0xa0ff7514, ; 588: Xamarin.AndroidX.Tracing.Tracing => 251
	i32 u0xa1b0ee45, ; 589: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 267
	i32 u0xa1d8b647, ; 590: System.Threading.Tasks.dll => 144
	i32 u0xa1fd7d9f, ; 591: System.Security.Claims => 118
	i32 u0xa21f5a1f, ; 592: System.Security.Cryptography.Cng.dll => 120
	i32 u0xa25c90e5, ; 593: lib_Xamarin.AndroidX.Core.dll.so => 210
	i32 u0xa262a30f, ; 594: System.Runtime.Numerics.dll => 110
	i32 u0xa2ce8457, ; 595: lib-es-Microsoft.Maui.Controls.resources.dll.so => 278
	i32 u0xa2e0939b, ; 596: Xamarin.AndroidX.Activity => 193
	i32 u0xa30769e5, ; 597: System.Threading.Channels => 139
	i32 u0xa32eb6f0, ; 598: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 199
	i32 u0xa35f8f92, ; 599: System.IO.Pipes.AccessControl => 54
	i32 u0xa3c818c7, ; 600: lib_System.Net.WebSockets.Client.dll.so => 79
	i32 u0xa3cc7fa7, ; 601: System.Runtime.InteropServices.JavaScript => 105
	i32 u0xa41760c2, ; 602: pt-BR\Microsoft.Maui.Controls.resources => 293
	i32 u0xa4672f3b, ; 603: Microsoft.Maui.Controls.Xaml => 185
	i32 u0xa493aa02, ; 604: lib_System.Collections.Concurrent.dll.so => 8
	i32 u0xa4caf7a7, ; 605: Microsoft.Maui.dll => 186
	i32 u0xa4d4aaf8, ; 606: lib_System.Security.Cryptography.Cng.dll.so => 120
	i32 u0xa4db22c6, ; 607: System.Text.Encoding.CodePages.dll => 133
	i32 u0xa522693c, ; 608: Xamarin.Jetbrains.Annotations.dll => 265
	i32 u0xa52ac270, ; 609: lib_Xamarin.AndroidX.Window.dll.so => 258
	i32 u0xa553c739, ; 610: lib_System.ValueTuple.dll.so => 151
	i32 u0xa5a0a402, ; 611: Xamarin.AndroidX.ViewPager.dll => 256
	i32 u0xa5b3182d, ; 612: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 244
	i32 u0xa5c5753c, ; 613: lib_System.Collections.Immutable.dll.so => 9
	i32 u0xa5ea80d9, ; 614: lib_Xamarin.Android.Glide.Annotations.dll.so => 190
	i32 u0xa60ecfb2, ; 615: th\Microsoft.Maui.Controls.resources => 299
	i32 u0xa6133c7f, ; 616: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i32 u0xa630ecdd, ; 617: Xamarin.AndroidX.Fragment.Ktx.dll => 222
	i32 u0xa668c988, ; 618: lib_System.Net.NameResolution.dll.so => 67
	i32 u0xa7008e0b, ; 619: Microsoft.Maui.Graphics => 188
	i32 u0xa715dd7e, ; 620: System.Xml.XPath.XDocument.dll => 159
	i32 u0xa741ef0b, ; 621: es/Microsoft.Maui.Controls.resources.dll => 278
	i32 u0xa744f665, ; 622: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 239
	i32 u0xa78103bc, ; 623: Xamarin.AndroidX.CoordinatorLayout.dll => 209
	i32 u0xa8032c67, ; 624: lib_Microsoft.Win32.Registry.dll.so => 5
	i32 u0xa80db4e1, ; 625: System.Xml.dll => 163
	i32 u0xa81b119f, ; 626: lib_System.Security.Cryptography.dll.so => 126
	i32 u0xa8282c09, ; 627: System.ServiceProcess.dll => 132
	i32 u0xa8298928, ; 628: Xamarin.AndroidX.ResourceInspection.Annotation => 244
	i32 u0xa85a7b6c, ; 629: System.Xml.XmlDocument => 161
	i32 u0xa8c61dcb, ; 630: nl/Microsoft.Maui.Controls.resources.dll => 291
	i32 u0xa9379a4f, ; 631: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 233
	i32 u0xa9d96f9b, ; 632: System.Threading.Overlapped.dll => 140
	i32 u0xaa107fc4, ; 633: Xamarin.AndroidX.ViewPager => 256
	i32 u0xaa2b531f, ; 634: lib_System.Globalization.dll.so => 42
	i32 u0xaa36a797, ; 635: Xamarin.AndroidX.Transition => 252
	i32 u0xaa88e550, ; 636: Mono.Android.Export.dll => 169
	i32 u0xaa8a4878, ; 637: Microsoft.Maui.Essentials => 187
	i32 u0xab123e9a, ; 638: Xamarin.AndroidX.Activity.Ktx.dll => 194
	i32 u0xab5f85c3, ; 639: Jsr305Binding.dll => 261
	i32 u0xab606289, ; 640: System.Globalization.Calendars.dll => 40
	i32 u0xabf58099, ; 641: Xamarin.AndroidX.ExifInterface => 220
	i32 u0xac1dd496, ; 642: System.Net.dll => 81
	i32 u0xacd6baa9, ; 643: System.IO.UnmanagedMemoryStream => 56
	i32 u0xace3f9b4, ; 644: System.Dynamic.Runtime.dll => 37
	i32 u0xace7ba82, ; 645: lib_System.Security.Principal.Windows.dll.so => 127
	i32 u0xacf080de, ; 646: System.Reflection => 97
	i32 u0xad2a79b6, ; 647: mscorlib.dll => 166
	i32 u0xad6f1e8a, ; 648: System.Private.CoreLib => 172
	i32 u0xaddb6d38, ; 649: Xamarin.AndroidX.ViewPager2.dll => 257
	i32 u0xae037813, ; 650: System.Numerics.Vectors.dll => 82
	i32 u0xae1ce33f, ; 651: Xamarin.AndroidX.Annotation.Experimental.dll => 196
	i32 u0xaeb2d8a5, ; 652: lib_Microsoft.Extensions.Options.dll.so => 181
	i32 u0xaf06273c, ; 653: System.Resources.Reader => 98
	i32 u0xaf3a6b91, ; 654: lib_System.Diagnostics.Debug.dll.so => 26
	i32 u0xaf4af872, ; 655: System.Diagnostics.StackTrace.dll => 30
	i32 u0xaf624531, ; 656: System.Xml.XPath.XDocument => 159
	i32 u0xaf8b1081, ; 657: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 246
	i32 u0xb0682092, ; 658: System.ComponentModel.dll => 18
	i32 u0xb0ed41f3, ; 659: System.Security.Principal.Windows => 127
	i32 u0xb128f886, ; 660: System.Security.Cryptography.Algorithms.dll => 119
	i32 u0xb18af942, ; 661: Xamarin.AndroidX.DrawerLayout => 216
	i32 u0xb1a434a2, ; 662: lib_System.Xml.Linq.dll.so => 155
	i32 u0xb21220a3, ; 663: Xamarin.AndroidX.Security.SecurityCrypto => 247
	i32 u0xb223fa8c, ; 664: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 274
	i32 u0xb28cab85, ; 665: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 191
	i32 u0xb294d40b, ; 666: lib_System.Net.Ping.dll.so => 69
	i32 u0xb2a03f9f, ; 667: Xamarin.AndroidX.Lifecycle.Process.dll => 229
	i32 u0xb3d3821c, ; 668: Xamarin.AndroidX.Startup.StartupRuntime => 249
	i32 u0xb434b64b, ; 669: WindowsBase.dll => 165
	i32 u0xb443fdf2, ; 670: Xamarin.AndroidX.Legacy.Support.Core.Utils => 224
	i32 u0xb514b305, ; 671: _Microsoft.Android.Resource.Designer.dll => 306
	i32 u0xb58d85d9, ; 672: lib_System.Runtime.Handles.dll.so => 104
	i32 u0xb62a9ccb, ; 673: Xamarin.AndroidX.SavedState.SavedState.Ktx => 246
	i32 u0xb63fa9f0, ; 674: Xamarin.AndroidX.Navigation.Common => 237
	i32 u0xb6490b5e, ; 675: lib_Mono.Android.Export.dll.so => 169
	i32 u0xb65adef9, ; 676: Mono.Android.Runtime => 170
	i32 u0xb660be12, ; 677: System.ComponentModel.Primitives => 16
	i32 u0xb6a153b2, ; 678: lib_Xamarin.AndroidX.ViewPager2.dll.so => 257
	i32 u0xb70c6fb4, ; 679: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 253
	i32 u0xb755818f, ; 680: System.Threading.Tasks => 144
	i32 u0xb76be845, ; 681: hu/Microsoft.Maui.Controls.resources.dll => 284
	i32 u0xb7e7c341, ; 682: lib_System.Globalization.Calendars.dll.so => 40
	i32 u0xb838e2b0, ; 683: System.Security.Cryptography.X509Certificates.dll => 125
	i32 u0xb8c22b7f, ; 684: System.Security.Claims.dll => 118
	i32 u0xb8fd311b, ; 685: System.Formats.Asn1 => 38
	i32 u0xb979e222, ; 686: System.Runtime.Serialization => 115
	i32 u0xba0dbf1c, ; 687: System.IO.FileSystem.AccessControl.dll => 47
	i32 u0xba4127cb, ; 688: System.Threading.Tasks.Extensions => 142
	i32 u0xbaa520e7, ; 689: lib_System.ObjectModel.dll.so => 84
	i32 u0xbab301d1, ; 690: System.Security.AccessControl => 117
	i32 u0xbb95ee37, ; 691: System.Diagnostics.Tracing.dll => 34
	i32 u0xbba64c02, ; 692: GoogleGson.dll => 173
	i32 u0xbc4c6465, ; 693: System.Reflection.Primitives.dll => 95
	i32 u0xbc652da7, ; 694: System.IO.MemoryMappedFiles => 53
	i32 u0xbcc610a0, ; 695: lib_System.Reflection.Metadata.dll.so => 94
	i32 u0xbd113355, ; 696: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 237
	i32 u0xbd78b0c8, ; 697: Xamarin.AndroidX.Navigation.Fragment.dll => 238
	i32 u0xbddce8a2, ; 698: lib_System.Security.Principal.dll.so => 128
	i32 u0xbe3f07c2, ; 699: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 101
	i32 u0xbe4755f4, ; 700: System.Security.SecureString => 129
	i32 u0xbe592c0c, ; 701: System.Web => 153
	i32 u0xbefef58f, ; 702: System.Data.dll => 24
	i32 u0xbf506931, ; 703: System.Xml.XmlDocument.dll => 161
	i32 u0xbf6fd745, ; 704: Xamarin.AndroidX.DocumentFile => 215
	i32 u0xbff2e236, ; 705: System.Threading => 148
	i32 u0xc04c3c0a, ; 706: System.Runtime.Handles.dll => 104
	i32 u0xc095e070, ; 707: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 225
	i32 u0xc1c6ebf4, ; 708: System.Reflection.DispatchProxy.dll => 89
	i32 u0xc217efb6, ; 709: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 208
	i32 u0xc235e84d, ; 710: Xamarin.AndroidX.CardView => 203
	i32 u0xc2a37b91, ; 711: System.Linq.Queryable.dll => 60
	i32 u0xc2a993fa, ; 712: System.Threading.Tasks.Extensions.dll => 142
	i32 u0xc3428433, ; 713: lib_System.Reflection.Emit.ILGeneration.dll.so => 90
	i32 u0xc35f7fa4, ; 714: System.Resources.Writer.dll => 100
	i32 u0xc37f65ce, ; 715: Microsoft.Win32.Registry.dll => 5
	i32 u0xc3888e16, ; 716: System.ComponentModel.Annotations.dll => 13
	i32 u0xc3ba1d80, ; 717: lib_System.Security.Cryptography.Csp.dll.so => 121
	i32 u0xc4251ff9, ; 718: System.Security.Cryptography.Encoding => 122
	i32 u0xc4684d9e, ; 719: lib_System.Security.Cryptography.Algorithms.dll.so => 119
	i32 u0xc4a8494a, ; 720: System.Text.Encoding => 135
	i32 u0xc4e76306, ; 721: System.Diagnostics.FileVersionInfo => 28
	i32 u0xc503d895, ; 722: fi\Microsoft.Maui.Controls.resources => 279
	i32 u0xc591efe9, ; 723: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 175
	i32 u0xc5b097e4, ; 724: System.Net.Requests.dll => 72
	i32 u0xc5b776df, ; 725: Xamarin.AndroidX.CustomView.dll => 213
	i32 u0xc5b79d28, ; 726: System.Data => 24
	i32 u0xc69f3b41, ; 727: lib_System.Data.dll.so => 24
	i32 u0xc71af05d, ; 728: Xamarin.AndroidX.Arch.Core.Runtime => 201
	i32 u0xc76e512c, ; 729: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 242
	i32 u0xc774da4f, ; 730: Xamarin.AndroidX.Navigation.Runtime => 239
	i32 u0xc7a3b0f0, ; 731: lib_Xamarin.AndroidX.Transition.dll.so => 252
	i32 u0xc7b797d0, ; 732: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 211
	i32 u0xc821fc10, ; 733: lib_System.ComponentModel.dll.so => 18
	i32 u0xc8220bd2, ; 734: ru\Microsoft.Maui.Controls.resources => 296
	i32 u0xc82afec1, ; 735: System.Text.Json => 137
	i32 u0xc8693088, ; 736: Xamarin.AndroidX.Activity.Ktx => 194
	i32 u0xc86c06e3, ; 737: Xamarin.AndroidX.Core => 210
	i32 u0xc8a662e9, ; 738: Java.Interop => 168
	i32 u0xc8d10307, ; 739: lib_System.Diagnostics.TraceSource.dll.so => 33
	i32 u0xc92a6809, ; 740: Xamarin.AndroidX.RecyclerView => 243
	i32 u0xc9863768, ; 741: da\Microsoft.Maui.Controls.resources => 275
	i32 u0xca5de1fa, ; 742: System.Runtime.CompilerServices.Unsafe.dll => 101
	i32 u0xcae37e41, ; 743: System.Security.Cryptography.OpenSsl.dll => 123
	i32 u0xcaf7bd4b, ; 744: Xamarin.AndroidX.CustomView.PoolingContainer => 214
	i32 u0xcb5af55c, ; 745: lib_System.Reflection.Emit.Lightweight.dll.so => 91
	i32 u0xcc5af6ee, ; 746: Microsoft.Extensions.DependencyInjection.dll => 176
	i32 u0xcc6479a0, ; 747: System.Xml => 163
	i32 u0xcc7d82b4, ; 748: netstandard => 167
	i32 u0xcd1dd0db, ; 749: Xamarin.AndroidX.DynamicAnimation.dll => 217
	i32 u0xcd5a809f, ; 750: System.Formats.Tar => 39
	i32 u0xcdc696e0, ; 751: Microsoft.Maui.Controls.Compatibility.dll => 183
	i32 u0xcdd8cd54, ; 752: lib_Xamarin.AndroidX.Emoji2.dll.so => 218
	i32 u0xce3fa116, ; 753: lib_System.Diagnostics.Process.dll.so => 29
	i32 u0xce70fda2, ; 754: hr/Microsoft.Maui.Controls.resources.dll => 283
	i32 u0xcef19b37, ; 755: System.ComponentModel.TypeConverter.dll => 17
	i32 u0xcf3163e6, ; 756: Mono.Android => 171
	i32 u0xcf663a21, ; 757: ru/Microsoft.Maui.Controls.resources.dll => 296
	i32 u0xcfa20c36, ; 758: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 250
	i32 u0xcfb055c0, ; 759: ro\Microsoft.Maui.Controls.resources => 295
	i32 u0xcfbaacae, ; 760: System.Text.Json.dll => 137
	i32 u0xcfd0c798, ; 761: System.Transactions => 150
	i32 u0xd0418592, ; 762: Xamarin.AndroidX.Concurrent.Futures.dll => 206
	i32 u0xd128d608, ; 763: System.Xml.Linq => 155
	i32 u0xd1854eb4, ; 764: System.Security.dll => 130
	i32 u0xd2757232, ; 765: System.Configuration => 19
	i32 u0xd2ff69f1, ; 766: System.Net.HttpListener => 65
	i32 u0xd310c033, ; 767: lib_Xamarin.Jetbrains.Annotations.dll.so => 265
	i32 u0xd4045e1b, ; 768: lib_System.dll.so => 164
	i32 u0xd404ddfe, ; 769: lib_System.Runtime.Intrinsics.dll.so => 108
	i32 u0xd432d20b, ; 770: System.Threading.Timer => 147
	i32 u0xd457e5c9, ; 771: lib_Microsoft.CSharp.dll.so => 1
	i32 u0xd47cb45a, ; 772: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 200
	i32 u0xd496c3c3, ; 773: lib_Xamarin.AndroidX.ExifInterface.dll.so => 220
	i32 u0xd4d2575b, ; 774: System.IO.FileSystem.AccessControl => 47
	i32 u0xd505225a, ; 775: lib_System.Xml.XPath.dll.so => 160
	i32 u0xd56e0b86, ; 776: zh-HK\Microsoft.Maui.Controls.resources => 303
	i32 u0xd622b752, ; 777: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 295
	i32 u0xd6665034, ; 778: Xamarin.Android.Glide.GifDecoder.dll => 192
	i32 u0xd67a52b3, ; 779: System.Net.WebSockets.Client => 79
	i32 u0xd715a361, ; 780: System.Linq.dll => 61
	i32 u0xd804d57a, ; 781: System.Runtime.InteropServices.RuntimeInformation => 106
	i32 u0xd832fda6, ; 782: Xamarin.AndroidX.Print.dll => 241
	i32 u0xd889aee8, ; 783: lib_System.Threading.Channels.dll.so => 139
	i32 u0xd8950487, ; 784: Xamarin.AndroidX.Annotation.Experimental => 196
	i32 u0xd8bba49d, ; 785: lib_Xamarin.AndroidX.RecyclerView.dll.so => 243
	i32 u0xd8dbab5d, ; 786: System.IO.FileSystem.Primitives.dll => 49
	i32 u0xd90e5f5a, ; 787: Xamarin.AndroidX.Lifecycle.LiveData.Core => 227
	i32 u0xd92a9404, ; 788: tr\Microsoft.Maui.Controls.resources => 300
	i32 u0xd930cda0, ; 789: Xamarin.AndroidX.Navigation.Fragment => 238
	i32 u0xd943a729, ; 790: System.ComponentModel.DataAnnotations => 14
	i32 u0xd9f65f5e, ; 791: lib-el-Microsoft.Maui.Controls.resources.dll.so => 277
	i32 u0xd9fdda56, ; 792: Microsoft.Extensions.Configuration.Abstractions.dll => 175
	i32 u0xda2f27df, ; 793: System.Net.NetworkInformation => 68
	i32 u0xdabf74ac, ; 794: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 197
	i32 u0xdae8aa5e, ; 795: Mono.Android.dll => 171
	i32 u0xdb7f7e5d, ; 796: Xamarin.AndroidX.Browser => 202
	i32 u0xdb9df1ce, ; 797: Xamarin.AndroidX.Concurrent.Futures => 206
	i32 u0xdc5370c5, ; 798: lib_System.Web.HttpUtility.dll.so => 152
	i32 u0xdc68940c, ; 799: zh-Hant/Microsoft.Maui.Controls.resources.dll => 305
	i32 u0xdc96bdf5, ; 800: System.Net.WebProxy.dll => 78
	i32 u0xdcefb51d, ; 801: Xamarin.AndroidX.Core.Core.Ktx.dll => 211
	i32 u0xdd864306, ; 802: System.Runtime.Intrinsics => 108
	i32 u0xdda814c6, ; 803: Xamarin.AndroidX.Annotation => 195
	i32 u0xde068c70, ; 804: Xamarin.AndroidX.Navigation.Common.dll => 237
	i32 u0xde7354ab, ; 805: System.Net.NameResolution => 67
	i32 u0xdecad304, ; 806: System.Net.Http.Json.dll => 63
	i32 u0xdf1b1ecd, ; 807: lib_System.ServiceProcess.dll.so => 132
	i32 u0xdf6f3870, ; 808: System.Diagnostics.DiagnosticSource => 27
	i32 u0xdf9a7f42, ; 809: System.Xml.XPath => 160
	i32 u0xdfd65a5d, ; 810: lib_System.Diagnostics.Tracing.dll.so => 34
	i32 u0xe082f700, ; 811: lib_Xamarin.AndroidX.Print.dll.so => 241
	i32 u0xe12f62fc, ; 812: lib_System.Threading.ThreadPool.dll.so => 146
	i32 u0xe13414bb, ; 813: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 284
	i32 u0xe1a41194, ; 814: lib_System.Xml.XDocument.dll.so => 158
	i32 u0xe1ae15d6, ; 815: Xamarin.AndroidX.Collection => 204
	i32 u0xe1eea3e4, ; 816: lib_System.IO.Compression.ZipFile.dll.so => 45
	i32 u0xe1f0a5d8, ; 817: lib_Xamarin.AndroidX.ViewPager.dll.so => 256
	i32 u0xe2098b0b, ; 818: System.Collections.NonGeneric => 10
	i32 u0xe250cda6, ; 819: lib_Microsoft.Extensions.Logging.dll.so => 178
	i32 u0xe2513246, ; 820: lib_System.Runtime.Numerics.dll.so => 110
	i32 u0xe28e5915, ; 821: Microsoft.Maui.Controls.Compatibility => 183
	i32 u0xe2a3f2e8, ; 822: System.Collections.Specialized.dll => 11
	i32 u0xe3774f52, ; 823: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i32 u0xe3a54a09, ; 824: System.Net.WebProxy => 78
	i32 u0xe3c7860c, ; 825: lib_System.Security.Claims.dll.so => 118
	i32 u0xe3df9d2b, ; 826: System.Security.Cryptography.dll => 126
	i32 u0xe4436460, ; 827: System.Numerics.dll => 83
	i32 u0xe4fab729, ; 828: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 177
	i32 u0xe52378b9, ; 829: System.Net.Mail.dll => 66
	i32 u0xe56ef253, ; 830: System.Runtime.InteropServices.dll => 107
	i32 u0xe625b819, ; 831: lib_Xamarin.AndroidX.CardView.dll.so => 203
	i32 u0xe6b14171, ; 832: System.Net.HttpListener.dll => 65
	i32 u0xe6ca3640, ; 833: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 205
	i32 u0xe6e179fa, ; 834: System.Security.Principal => 128
	i32 u0xe6f98713, ; 835: System.Security.Cryptography.Encoding.dll => 122
	i32 u0xe797fcc1, ; 836: System.Net.WebHeaderCollection.dll => 77
	i32 u0xe79e77a6, ; 837: Xamarin.AndroidX.Transition.dll => 252
	i32 u0xe7c9e2bd, ; 838: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 242
	i32 u0xe7dc15ff, ; 839: zh-Hans/Microsoft.Maui.Controls.resources.dll => 304
	i32 u0xe839deed, ; 840: System.Collections.Concurrent.dll => 8
	i32 u0xe843daa0, ; 841: Xamarin.AndroidX.Core.dll => 210
	i32 u0xe89260c1, ; 842: Microsoft.VisualBasic.Core.dll => 2
	i32 u0xe92ace5f, ; 843: lib_System.Linq.Parallel.dll.so => 59
	i32 u0xe99f7d24, ; 844: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 300
	i32 u0xe9b2d35e, ; 845: System.IO.Compression.FileSystem.dll => 44
	i32 u0xe9b630ed, ; 846: Xamarin.AndroidX.VersionedParcelable.dll => 255
	i32 u0xea0092d6, ; 847: lib_System.Threading.Tasks.Extensions.dll.so => 142
	i32 u0xea213423, ; 848: System.Xml.ReaderWriter => 156
	i32 u0xea4780ec, ; 849: System.Security.Principal.dll => 128
	i32 u0xea4fb52e, ; 850: Xamarin.AndroidX.Navigation.UI => 240
	i32 u0xeab81858, ; 851: lib_Microsoft.Maui.Essentials.dll.so => 187
	i32 u0xeaf244cc, ; 852: lib_System.IO.Pipes.AccessControl.dll.so => 54
	i32 u0xeaf598f6, ; 853: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 179
	i32 u0xeb2ecede, ; 854: System.Data.DataSetExtensions.dll => 23
	i32 u0xeb5560c9, ; 855: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 106
	i32 u0xebac8bfe, ; 856: System.Text.Encoding.CodePages => 133
	i32 u0xebb0254b, ; 857: lib_System.Net.NetworkInformation.dll.so => 68
	i32 u0xebc66336, ; 858: Xamarin.AndroidX.AppCompat.dll => 198
	i32 u0xec05582d, ; 859: Xamarin.AndroidX.Lifecycle.Process => 229
	i32 u0xed1090ae, ; 860: lib_System.Net.Primitives.dll.so => 70
	i32 u0xed409aea, ; 861: th/Microsoft.Maui.Controls.resources.dll => 299
	i32 u0xed96d41f, ; 862: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 209
	i32 u0xedadd6e2, ; 863: he/Microsoft.Maui.Controls.resources.dll => 281
	i32 u0xedf6669b, ; 864: lib_System.Drawing.dll.so => 36
	i32 u0xee9f991d, ; 865: System.Diagnostics.Process.dll => 29
	i32 u0xeeefb9c8, ; 866: lib_System.Dynamic.Runtime.dll.so => 37
	i32 u0xef5e8475, ; 867: Xamarin.AndroidX.Annotation.Jvm.dll => 197
	i32 u0xeff49a63, ; 868: System.Memory => 62
	i32 u0xeff49c4a, ; 869: lib_System.Text.Encoding.Extensions.dll.so => 134
	i32 u0xf09122fc, ; 870: lib_System.IO.IsolatedStorage.dll.so => 52
	i32 u0xf121f953, ; 871: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 227
	i32 u0xf1304331, ; 872: Microsoft.Maui.Controls.Xaml.dll => 185
	i32 u0xf1676aaa, ; 873: lib-da-Microsoft.Maui.Controls.resources.dll.so => 275
	i32 u0xf1ad867b, ; 874: System.Reflection.Emit.ILGeneration => 90
	i32 u0xf27f60d1, ; 875: System.Private.Xml.Linq.dll => 87
	i32 u0xf2ce3c98, ; 876: System.Threading.dll => 148
	i32 u0xf2dd3fc4, ; 877: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 287
	i32 u0xf323e0a6, ; 878: lib_Xamarin.Kotlin.StdLib.dll.so => 266
	i32 u0xf33c42ef, ; 879: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 254
	i32 u0xf3a16066, ; 880: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 232
	i32 u0xf40add04, ; 881: Microsoft.Maui.Essentials.dll => 187
	i32 u0xf42589bc, ; 882: lib_System.Security.Cryptography.X509Certificates.dll.so => 125
	i32 u0xf45985cf, ; 883: System.Drawing.dll => 36
	i32 u0xf462c30d, ; 884: System.Private.Uri => 86
	i32 u0xf479582c, ; 885: Xamarin.AndroidX.Emoji2 => 218
	i32 u0xf47b0a29, ; 886: lib_System.Configuration.dll.so => 19
	i32 u0xf48143e5, ; 887: pt/Microsoft.Maui.Controls.resources.dll => 294
	i32 u0xf5185c24, ; 888: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 294
	i32 u0xf53cb11d, ; 889: lib_System.Net.Security.dll.so => 73
	i32 u0xf5e94e90, ; 890: ms/Microsoft.Maui.Controls.resources.dll => 289
	i32 u0xf5f4f1f0, ; 891: Microsoft.Extensions.DependencyInjection => 176
	i32 u0xf5fdf056, ; 892: lib_Microsoft.Extensions.DependencyInjection.dll.so => 176
	i32 u0xf60736e2, ; 893: System.IO.FileSystem.Watcher => 50
	i32 u0xf6318da0, ; 894: System.AppContext => 6
	i32 u0xf6f1405c, ; 895: lib_Xamarin.Kotlin.StdLib.Jdk8.dll.so => 269
	i32 u0xf73be021, ; 896: System.Reflection.Emit.ILGeneration.dll => 90
	i32 u0xf769eeb0, ; 897: uk\Microsoft.Maui.Controls.resources => 301
	i32 u0xf76edc75, ; 898: System.Core => 21
	i32 u0xf7e95c85, ; 899: System.Xml.XmlSerializer => 162
	i32 u0xf807b767, ; 900: System.Reflection.TypeExtensions => 96
	i32 u0xf83dd773, ; 901: System.IO.FileSystem.Watcher.dll => 50
	i32 u0xf86129d4, ; 902: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 298
	i32 u0xf93ba7d4, ; 903: System.Runtime.Serialization.Primitives => 113
	i32 u0xf94a8f86, ; 904: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 234
	i32 u0xf97c5a99, ; 905: System.Security => 130
	i32 u0xfa21f6af, ; 906: System.Net.WebClient.dll => 76
	i32 u0xfa50891f, ; 907: lib_System.Linq.dll.so => 61
	i32 u0xfa6ae1e2, ; 908: lib_Xamarin.AndroidX.Annotation.dll.so => 195
	i32 u0xfb0af295, ; 909: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 303
	i32 u0xfb1dad5d, ; 910: System.Diagnostics.DiagnosticSource.dll => 27
	i32 u0xfbc4b67c, ; 911: lib_System.IO.Compression.Brotli.dll.so => 43
	i32 u0xfdaee526, ; 912: Xamarin.AndroidX.Core.Core.Ktx => 211
	i32 u0xfdd1b433, ; 913: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 233
	i32 u0xfdf2741f, ; 914: System.Buffers => 7
	i32 u0xfe42d509, ; 915: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 247
	i32 u0xfea12dee, ; 916: Microsoft.Maui.Controls.dll => 184
	i32 u0xfecef6ea, ; 917: System.Runtime.Numerics => 110
	i32 u0xff912ee3, ; 918: lib_System.Xml.Serialization.dll.so => 157
	i32 u0xffd4917f, ; 919: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 234
	i32 u0xfffce3e8 ; 920: Xamarin.AndroidX.ExifInterface.dll => 220
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [921 x i32] [
	i32 68, i32 72, i32 224, i32 67, i32 235, i32 162, i32 108, i32 177,
	i32 230, i32 264, i32 48, i32 80, i32 301, i32 145, i32 186, i32 30,
	i32 305, i32 124, i32 188, i32 102, i32 10, i32 248, i32 60, i32 264,
	i32 66, i32 107, i32 248, i32 139, i32 31, i32 268, i32 77, i32 124,
	i32 13, i32 206, i32 204, i32 193, i32 132, i32 250, i32 251, i32 302,
	i32 260, i32 151, i32 159, i32 63, i32 292, i32 302, i32 74, i32 0,
	i32 303, i32 18, i32 202, i32 44, i32 26, i32 180, i32 224, i32 1,
	i32 213, i32 59, i32 42, i32 290, i32 91, i32 129, i32 189, i32 207,
	i32 147, i32 226, i32 223, i32 274, i32 23, i32 297, i32 54, i32 69,
	i32 302, i32 193, i32 83, i32 262, i32 116, i32 287, i32 225, i32 13,
	i32 286, i32 131, i32 174, i32 109, i32 55, i32 149, i32 74, i32 145,
	i32 62, i32 146, i32 244, i32 306, i32 165, i32 122, i32 298, i32 208,
	i32 12, i32 221, i32 125, i32 152, i32 231, i32 170, i32 113, i32 166,
	i32 168, i32 236, i32 164, i32 223, i32 86, i32 236, i32 248, i32 115,
	i32 84, i32 285, i32 279, i32 182, i32 124, i32 6, i32 150, i32 268,
	i32 60, i32 178, i32 51, i32 103, i32 114, i32 40, i32 261, i32 259,
	i32 120, i32 293, i32 173, i32 131, i32 11, i32 52, i32 21, i32 44,
	i32 75, i32 119, i32 213, i32 291, i32 219, i32 214, i32 93, i32 276,
	i32 81, i32 136, i32 255, i32 22, i32 200, i32 8, i32 51, i32 293,
	i32 73, i32 273, i32 155, i32 270, i32 212, i32 154, i32 163, i32 92,
	i32 265, i32 45, i32 288, i32 276, i32 269, i32 109, i32 130, i32 129,
	i32 25, i32 190, i32 161, i32 72, i32 55, i32 46, i32 297, i32 97,
	i32 181, i32 89, i32 214, i32 22, i32 228, i32 145, i32 86, i32 43,
	i32 160, i32 71, i32 241, i32 216, i32 3, i32 42, i32 63, i32 55,
	i32 0, i32 263, i32 16, i32 57, i32 53, i32 150, i32 41, i32 300,
	i32 264, i32 14, i32 219, i32 105, i32 269, i32 166, i32 262, i32 225,
	i32 34, i32 158, i32 270, i32 85, i32 32, i32 217, i32 12, i32 141,
	i32 51, i32 56, i32 245, i32 36, i32 177, i32 275, i32 263, i32 198,
	i32 35, i32 223, i32 58, i32 96, i32 232, i32 12, i32 98, i32 182,
	i32 229, i32 173, i32 17, i32 266, i32 164, i32 92, i32 288, i32 136,
	i32 192, i32 231, i32 180, i32 299, i32 123, i32 17, i32 78, i32 82,
	i32 258, i32 64, i32 85, i32 294, i32 154, i32 153, i32 254, i32 239,
	i32 140, i32 100, i32 292, i32 200, i32 29, i32 52, i32 204, i32 147,
	i32 290, i32 282, i32 259, i32 5, i32 188, i32 274, i32 249, i32 87,
	i32 253, i32 114, i32 205, i32 270, i32 197, i32 216, i32 242, i32 85,
	i32 259, i32 258, i32 61, i32 112, i32 283, i32 273, i32 57, i32 304,
	i32 245, i32 99, i32 183, i32 172, i32 50, i32 19, i32 209, i32 111,
	i32 101, i32 32, i32 3, i32 102, i32 272, i32 83, i32 104, i32 262,
	i32 71, i32 4, i32 38, i32 32, i32 56, i32 103, i32 73, i32 278,
	i32 9, i32 123, i32 46, i32 199, i32 182, i32 9, i32 43, i32 4,
	i32 246, i32 282, i32 35, i32 277, i32 268, i32 31, i32 202, i32 138,
	i32 92, i32 93, i32 297, i32 49, i32 141, i32 112, i32 140, i32 2,
	i32 215, i32 16, i32 115, i32 263, i32 157, i32 76, i32 0, i32 79,
	i32 39, i32 235, i32 37, i32 257, i32 201, i32 219, i32 212, i32 64,
	i32 138, i32 15, i32 46, i32 156, i32 165, i32 116, i32 271, i32 251,
	i32 260, i32 207, i32 48, i32 70, i32 80, i32 126, i32 94, i32 121,
	i32 267, i32 149, i32 26, i32 117, i32 228, i32 97, i32 28, i32 203,
	i32 102, i32 295, i32 273, i32 149, i32 169, i32 4, i32 98, i32 38,
	i32 305, i32 33, i32 77, i32 93, i32 250, i32 178, i32 105, i32 21,
	i32 41, i32 198, i32 170, i32 289, i32 103, i32 221, i32 281, i32 148,
	i32 280, i32 235, i32 266, i32 260, i32 240, i32 2, i32 134, i32 111,
	i32 255, i32 179, i32 301, i32 190, i32 298, i32 58, i32 95, i32 207,
	i32 280, i32 39, i32 201, i32 304, i32 25, i32 94, i32 89, i32 99,
	i32 10, i32 199, i32 171, i32 87, i32 49, i32 62, i32 76, i32 100,
	i32 247, i32 174, i32 47, i32 267, i32 192, i32 277, i32 7, i32 81,
	i32 232, i32 272, i32 196, i32 189, i32 281, i32 88, i32 227, i32 154,
	i32 276, i32 306, i32 222, i32 33, i32 112, i32 116, i32 65, i32 82,
	i32 135, i32 20, i32 11, i32 162, i32 133, i32 288, i32 3, i32 28,
	i32 289, i32 261, i32 186, i32 111, i32 99, i32 284, i32 27, i32 15,
	i32 181, i32 7, i32 179, i32 84, i32 58, i32 71, i32 30, i32 271,
	i32 64, i32 286, i32 254, i32 143, i32 80, i32 236, i32 296, i32 157,
	i32 41, i32 233, i32 184, i32 117, i32 175, i32 191, i32 280, i32 286,
	i32 243, i32 291, i32 167, i32 131, i32 75, i32 66, i32 290, i32 172,
	i32 195, i32 143, i32 215, i32 106, i32 151, i32 279, i32 20, i32 70,
	i32 226, i32 156, i32 174, i32 144, i32 121, i32 238, i32 272, i32 127,
	i32 285, i32 152, i32 218, i32 153, i32 88, i32 141, i32 205, i32 282,
	i32 95, i32 221, i32 20, i32 14, i32 249, i32 135, i32 75, i32 59,
	i32 208, i32 167, i32 228, i32 168, i32 184, i32 15, i32 74, i32 137,
	i32 230, i32 6, i32 285, i32 194, i32 23, i32 230, i32 245, i32 189,
	i32 185, i32 91, i32 283, i32 1, i32 136, i32 231, i32 253, i32 134,
	i32 69, i32 146, i32 292, i32 113, i32 271, i32 25, i32 222, i32 180,
	i32 88, i32 96, i32 212, i32 217, i32 287, i32 240, i32 31, i32 45,
	i32 143, i32 226, i32 234, i32 191, i32 109, i32 158, i32 35, i32 107,
	i32 22, i32 114, i32 57, i32 138, i32 251, i32 267, i32 144, i32 118,
	i32 120, i32 210, i32 110, i32 278, i32 193, i32 139, i32 199, i32 54,
	i32 79, i32 105, i32 293, i32 185, i32 8, i32 186, i32 120, i32 133,
	i32 265, i32 258, i32 151, i32 256, i32 244, i32 9, i32 190, i32 299,
	i32 48, i32 222, i32 67, i32 188, i32 159, i32 278, i32 239, i32 209,
	i32 5, i32 163, i32 126, i32 132, i32 244, i32 161, i32 291, i32 233,
	i32 140, i32 256, i32 42, i32 252, i32 169, i32 187, i32 194, i32 261,
	i32 40, i32 220, i32 81, i32 56, i32 37, i32 127, i32 97, i32 166,
	i32 172, i32 257, i32 82, i32 196, i32 181, i32 98, i32 26, i32 30,
	i32 159, i32 246, i32 18, i32 127, i32 119, i32 216, i32 155, i32 247,
	i32 274, i32 191, i32 69, i32 229, i32 249, i32 165, i32 224, i32 306,
	i32 104, i32 246, i32 237, i32 169, i32 170, i32 16, i32 257, i32 253,
	i32 144, i32 284, i32 40, i32 125, i32 118, i32 38, i32 115, i32 47,
	i32 142, i32 84, i32 117, i32 34, i32 173, i32 95, i32 53, i32 94,
	i32 237, i32 238, i32 128, i32 101, i32 129, i32 153, i32 24, i32 161,
	i32 215, i32 148, i32 104, i32 225, i32 89, i32 208, i32 203, i32 60,
	i32 142, i32 90, i32 100, i32 5, i32 13, i32 121, i32 122, i32 119,
	i32 135, i32 28, i32 279, i32 175, i32 72, i32 213, i32 24, i32 24,
	i32 201, i32 242, i32 239, i32 252, i32 211, i32 18, i32 296, i32 137,
	i32 194, i32 210, i32 168, i32 33, i32 243, i32 275, i32 101, i32 123,
	i32 214, i32 91, i32 176, i32 163, i32 167, i32 217, i32 39, i32 183,
	i32 218, i32 29, i32 283, i32 17, i32 171, i32 296, i32 250, i32 295,
	i32 137, i32 150, i32 206, i32 155, i32 130, i32 19, i32 65, i32 265,
	i32 164, i32 108, i32 147, i32 1, i32 200, i32 220, i32 47, i32 160,
	i32 303, i32 295, i32 192, i32 79, i32 61, i32 106, i32 241, i32 139,
	i32 196, i32 243, i32 49, i32 227, i32 300, i32 238, i32 14, i32 277,
	i32 175, i32 68, i32 197, i32 171, i32 202, i32 206, i32 152, i32 305,
	i32 78, i32 211, i32 108, i32 195, i32 237, i32 67, i32 63, i32 132,
	i32 27, i32 160, i32 34, i32 241, i32 146, i32 284, i32 158, i32 204,
	i32 45, i32 256, i32 10, i32 178, i32 110, i32 183, i32 11, i32 53,
	i32 78, i32 118, i32 126, i32 83, i32 177, i32 66, i32 107, i32 203,
	i32 65, i32 205, i32 128, i32 122, i32 77, i32 252, i32 242, i32 304,
	i32 8, i32 210, i32 2, i32 59, i32 300, i32 44, i32 255, i32 142,
	i32 156, i32 128, i32 240, i32 187, i32 54, i32 179, i32 23, i32 106,
	i32 133, i32 68, i32 198, i32 229, i32 70, i32 299, i32 209, i32 281,
	i32 36, i32 29, i32 37, i32 197, i32 62, i32 134, i32 52, i32 227,
	i32 185, i32 275, i32 90, i32 87, i32 148, i32 287, i32 266, i32 254,
	i32 232, i32 187, i32 125, i32 36, i32 86, i32 218, i32 19, i32 294,
	i32 294, i32 73, i32 289, i32 176, i32 176, i32 50, i32 6, i32 269,
	i32 90, i32 301, i32 21, i32 162, i32 96, i32 50, i32 298, i32 113,
	i32 234, i32 130, i32 76, i32 61, i32 195, i32 303, i32 27, i32 43,
	i32 211, i32 233, i32 7, i32 247, i32 184, i32 110, i32 157, i32 234,
	i32 220
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

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/9.0.1xx-preview3 @ 4909500e254449c96975a830f6a91f7aa1568b5e"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
