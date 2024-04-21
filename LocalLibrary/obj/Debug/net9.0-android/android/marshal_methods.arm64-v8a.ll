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

@assembly_image_cache = dso_local local_unnamed_addr global [307 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [921 x i64] [
	i64 u0x00568d9a9a43a682, ; 0: Xamarin.AndroidX.DynamicAnimation => 217
	i64 u0x00fc46bd5a288d0a, ; 1: lib_System.Collections.dll.so => 12
	i64 u0x015d8644ad360ce2, ; 2: Microsoft.Extensions.Primitives.dll => 182
	i64 u0x01a9b1a76a3dee39, ; 3: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 212
	i64 u0x01accec39cafe242, ; 4: Mono.Android => 171
	i64 u0x01d3c844de55c3c5, ; 5: Microsoft.Maui.Essentials.dll => 187
	i64 u0x02bae4a7cd73f3ff, ; 6: System.Linq.Expressions.dll => 58
	i64 u0x02ebe681f694702f, ; 7: Xamarin.AndroidX.Collection.dll => 204
	i64 u0x03039e3c0418c738, ; 8: lib_System.Xml.XPath.dll.so => 160
	i64 u0x030ba09fc366c4ce, ; 9: lib_Xamarin.AndroidX.Interpolator.dll.so => 223
	i64 u0x0330654aed93802b, ; 10: System.ValueTuple.dll => 151
	i64 u0x03399e9cbc897277, ; 11: Xamarin.AndroidX.SavedState.dll => 245
	i64 u0x03f30eac8f46c74a, ; 12: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x041b4d3a3088a9a1, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 248
	i64 u0x044e7322df9b1a43, ; 14: lib_Xamarin.Kotlin.StdLib.dll.so => 266
	i64 u0x046337caa7dc1b14, ; 15: Xamarin.AndroidX.Core.Core.Ktx.dll => 211
	i64 u0x049a8dee197407a3, ; 16: lib_Xamarin.AndroidX.AppCompat.dll.so => 198
	i64 u0x04b954885d41051c, ; 17: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 267
	i64 u0x04ddd227954be8f1, ; 18: System.ServiceProcess.dll => 132
	i64 u0x052e9c4ae7d31e06, ; 19: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 194
	i64 u0x05de03f27ab57d1b, ; 20: System.IO.UnmanagedMemoryStream => 56
	i64 u0x0601cd846531fd49, ; 21: lib_System.Runtime.Serialization.Xml.dll.so => 114
	i64 u0x0609d9f8f8bdb9bc, ; 22: Xamarin.AndroidX.Security.SecurityCrypto.dll => 247
	i64 u0x06aea024233ecdc8, ; 23: lib_Xamarin.AndroidX.ExifInterface.dll.so => 220
	i64 u0x070e73d35504ba4d, ; 24: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x07909e9f1ec38b78, ; 25: fi/Microsoft.Maui.Controls.resources.dll => 279
	i64 u0x07c6829760de3975, ; 26: System.Reflection.Primitives => 95
	i64 u0x0898d75ff782a5a6, ; 27: lib_Java.Interop.dll.so => 168
	i64 u0x08cd840fee8b6ba9, ; 28: Xamarin.AndroidX.Lifecycle.Runtime.dll => 230
	i64 u0x090239f09b62167b, ; 29: System.Security.SecureString => 129
	i64 u0x09725c27cad2d55d, ; 30: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 219
	i64 u0x0a36f30adb31377d, ; 31: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 282
	i64 u0x0a6ba5a4da7d1ff8, ; 32: System.Threading.Thread => 145
	i64 u0x0b14aab351ad2bd9, ; 33: Xamarin.AndroidX.Collection.Ktx.dll => 205
	i64 u0x0b1956c9f18442ac, ; 34: System.ComponentModel.dll => 18
	i64 u0x0b7aa06fdade9615, ; 35: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x0bc8703ca21a3a22, ; 36: hi/Microsoft.Maui.Controls.resources.dll => 282
	i64 u0x0be7ad4c0b2e8db3, ; 37: lib_System.Core.dll.so => 21
	i64 u0x0c1ccf42c3c21c44, ; 38: Xamarin.AndroidX.DrawerLayout => 216
	i64 u0x0c6c6d6c5569cbbe, ; 39: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 231
	i64 u0x0cdb85aec42c011f, ; 40: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x0d0e792aa81923a3, ; 41: System.Transactions => 150
	i64 u0x0d1b8527b5dbf5ab, ; 42: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 232
	i64 u0x0d555ed9e1ca1ba0, ; 43: System.Runtime.Handles.dll => 104
	i64 u0x0e065e7a82401d27, ; 44: System.Reflection.Primitives.dll => 95
	i64 u0x0e951e5506c77822, ; 45: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 274
	i64 u0x0f1f37843bb1c7fd, ; 46: lib_System.Xml.ReaderWriter.dll.so => 156
	i64 u0x0f2bc9933b0f42cb, ; 47: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 264
	i64 u0x0f889b7d90374169, ; 48: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 296
	i64 u0x0f8c9a5eae431534, ; 49: Xamarin.Google.Android.Material.dll => 260
	i64 u0x0f90f507becf47ac, ; 50: nb/Microsoft.Maui.Controls.resources.dll => 290
	i64 u0x10557c1cba24a23e, ; 51: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 246
	i64 u0x10917d348fa12d18, ; 52: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x119be62002c19ebb, ; 53: System.Drawing.dll => 36
	i64 u0x11ce07f118aedcc1, ; 54: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x12104e54b4e833e2, ; 55: System.Diagnostics.FileVersionInfo => 28
	i64 u0x124039d5794ad7cd, ; 56: Xamarin.AndroidX.Arch.Core.Common.dll => 200
	i64 u0x13019a2dd85acb52, ; 57: Xamarin.AndroidX.Navigation.Fragment.dll => 238
	i64 u0x136b4b72f78ea028, ; 58: lib_System.Runtime.Handles.dll.so => 104
	i64 u0x137cb4660bd87f12, ; 59: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x13c8231c3f0f263f, ; 60: lib_System.ComponentModel.dll.so => 18
	i64 u0x13c9f89e19eaf3a8, ; 61: System.Runtime.Serialization.dll => 115
	i64 u0x14276e3fb2351de1, ; 62: lib_System.Runtime.Serialization.Primitives.dll.so => 113
	i64 u0x147ec96ece9b1e6f, ; 63: System.Net.Primitives.dll => 70
	i64 u0x14a1e017ea87d6ab, ; 64: Microsoft.Maui.Controls.dll => 184
	i64 u0x14b809f350210aad, ; 65: System.Net.HttpListener => 65
	i64 u0x1500eaa8245f6c5b, ; 66: Mono.Android.Runtime => 170
	i64 u0x15551e8a954ae0df, ; 67: System.Threading.Thread.dll => 145
	i64 u0x1578b4548a1cf8a1, ; 68: lib_System.Resources.Reader.dll.so => 98
	i64 u0x15988c06d24c8918, ; 69: ko/Microsoft.Maui.Controls.resources.dll => 288
	i64 u0x15e1bdecc376bfdc, ; 70: Xamarin.AndroidX.Window.Extensions.Core.Core => 259
	i64 u0x168ad11d2fe80f2b, ; 71: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 283
	i64 u0x168bf32877da9957, ; 72: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 199
	i64 u0x1699fd1e1a00b643, ; 73: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 234
	i64 u0x16b5614ec39e16cd, ; 74: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 224
	i64 u0x16d088850de9447e, ; 75: lib_System.Private.Xml.dll.so => 88
	i64 u0x16ec4f2524cb982d, ; 76: System.Globalization.Calendars => 40
	i64 u0x16fe3252f875eabe, ; 77: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 284
	i64 u0x1707228d493d63ab, ; 78: System.Reflection.DispatchProxy => 89
	i64 u0x171d6ebc6c3c99b2, ; 79: lib_System.Text.RegularExpressions.dll.so => 138
	i64 u0x17597cf276952bd6, ; 80: System.Net.dll => 81
	i64 u0x181556663c69b759, ; 81: System.Net.Mail.dll => 66
	i64 u0x1833d297e88f2af8, ; 82: System.Memory.dll => 62
	i64 u0x188704e9f5582107, ; 83: System.Private.Uri.dll => 86
	i64 u0x188a2c90008ba9de, ; 84: lib_System.Private.CoreLib.dll.so => 172
	i64 u0x18ea3e9eac997529, ; 85: Xamarin.AndroidX.AppCompat.dll => 198
	i64 u0x1956254a55ef08ec, ; 86: System.Runtime.InteropServices.RuntimeInformation.dll => 106
	i64 u0x197855a927386163, ; 87: es\Microsoft.Maui.Controls.resources => 278
	i64 u0x197cf449ebe482d1, ; 88: Xamarin.AndroidX.SavedState => 245
	i64 u0x19bb3feb3df2e3a0, ; 89: System.Runtime.CompilerServices.VisualC => 102
	i64 u0x19bfce347769b770, ; 90: lib_System.IO.Pipes.AccessControl.dll.so => 54
	i64 u0x1a06d2319b6c713c, ; 91: System.Drawing.Primitives => 35
	i64 u0x1a08990699eb70ef, ; 92: Xamarin.AndroidX.Annotation.dll => 195
	i64 u0x1a15bf0bae0f3a98, ; 93: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 229
	i64 u0x1a1b5bc992ea9be6, ; 94: tr\Microsoft.Maui.Controls.resources => 300
	i64 u0x1a558aff4cba86cf, ; 95: Xamarin.AndroidX.Security.SecurityCrypto => 247
	i64 u0x1aa7e99ec2d2709a, ; 96: Microsoft.Maui.Controls.Xaml => 185
	i64 u0x1b334ea0a2a755d1, ; 97: tr/Microsoft.Maui.Controls.resources.dll => 300
	i64 u0x1b5f51d2edefbe46, ; 98: System.Security.Cryptography.Algorithms => 119
	i64 u0x1b80904d5c241f0a, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 232
	i64 u0x1b87836e2031a63e, ; 100: cs/Microsoft.Maui.Controls.resources.dll => 274
	i64 u0x1c07463a6f8e1a6c, ; 101: pl/Microsoft.Maui.Controls.resources.dll => 292
	i64 u0x1c4f8a4ea894a6f5, ; 102: System.Threading.Tasks.Extensions.dll => 142
	i64 u0x1c787d517249e890, ; 103: lib_System.Security.dll.so => 130
	i64 u0x1ca0dc1289cd44a7, ; 104: System.Threading.Tasks.Dataflow => 141
	i64 u0x1ca7514c5eecb152, ; 105: Xamarin.Kotlin.StdLib.Jdk7.dll => 268
	i64 u0x1cb97b424633b295, ; 106: lib_System.Xml.Serialization.dll.so => 157
	i64 u0x1ce10137d8416db8, ; 107: System.IO.MemoryMappedFiles => 53
	i64 u0x1d2e257e6aead5d7, ; 108: System.Drawing.Primitives.dll => 35
	i64 u0x1d3a221ba6d9cb24, ; 109: System.Threading.Tasks.Dataflow.dll => 141
	i64 u0x1e0cbab9112b81ce, ; 110: Xamarin.Android.Glide.GifDecoder => 192
	i64 u0x1e0e341d75540745, ; 111: Xamarin.AndroidX.Browser => 202
	i64 u0x1e8898fe5d5824e8, ; 112: Microsoft.Extensions.Logging.Debug.dll => 180
	i64 u0x1ea43e44b0349b5d, ; 113: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 279
	i64 u0x1f673d352266e6c5, ; 114: Xamarin.AndroidX.DrawerLayout.dll => 216
	i64 u0x1f897a29cea813a9, ; 115: lib_System.Text.Encoding.dll.so => 135
	i64 u0x1fc00515e8ce7513, ; 116: System.Collections.Concurrent => 8
	i64 u0x1fc035fd8d41f790, ; 117: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x1ff37f6ddb267c58, ; 118: ru/Microsoft.Maui.Controls.resources.dll => 296
	i64 u0x1ff4b624153d7a8b, ; 119: lib_System.Reflection.Emit.dll.so => 92
	i64 u0x1ffc6da80d5ed5b9, ; 120: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 244
	i64 u0x20219d9ee311aa68, ; 121: System.IO.FileSystem.dll => 51
	i64 u0x2054ca829b447e2e, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 227
	i64 u0x2069600c4d9d1cfa, ; 123: System.Text.Encodings.Web => 136
	i64 u0x207163383edbc828, ; 124: System.Runtime.CompilerServices.Unsafe => 101
	i64 u0x21cddab1fe0aa939, ; 125: lib_System.Net.Http.Json.dll.so => 63
	i64 u0x2248f922dc398cba, ; 126: Xamarin.AndroidX.CoordinatorLayout => 209
	i64 u0x2268ae16b2cba985, ; 127: Xamarin.AndroidX.VectorDrawable.Animated.dll => 254
	i64 u0x22a7eb7046413568, ; 128: System.Runtime => 116
	i64 u0x23126d478e1b6d2e, ; 129: lib_System.Net.Ping.dll.so => 69
	i64 u0x2333b6df7fd8b610, ; 130: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 205
	i64 u0x2359121801df4a50, ; 131: Xamarin.AndroidX.Activity.dll => 193
	i64 u0x23f9e10627330e8f, ; 132: System.Xml.dll => 163
	i64 u0x241e8de13a460e27, ; 133: th\Microsoft.Maui.Controls.resources => 299
	i64 u0x24407c364b108d98, ; 134: lib_System.Security.Principal.Windows.dll.so => 127
	i64 u0x246d65fbde2db8ea, ; 135: mscorlib.dll => 166
	i64 u0x2487b36034f808cb, ; 136: System.Net.NameResolution => 67
	i64 u0x2489746cc37e500a, ; 137: lib_System.Threading.Tasks.Parallel.dll.so => 143
	i64 u0x24b980ea9f38ffc6, ; 138: lib_Xamarin.AndroidX.Fragment.dll.so => 221
	i64 u0x24df3b84c8b75da8, ; 139: Microsoft.Extensions.DependencyInjection => 176
	i64 u0x24f4cfae6c48af06, ; 140: cs\Microsoft.Maui.Controls.resources => 274
	i64 u0x258de944be6c0701, ; 141: System.Net.WebSockets => 80
	i64 u0x269f5e7e6dc37c80, ; 142: System.Runtime.CompilerServices.Unsafe.dll => 101
	i64 u0x26a6a9fa9360001e, ; 143: lib_System.Transactions.Local.dll.so => 149
	i64 u0x26ae3f31ef429dbb, ; 144: Xamarin.AndroidX.Startup.StartupRuntime => 249
	i64 u0x2712c0857f68238b, ; 145: System.Security.AccessControl => 117
	i64 u0x27ebc945124a5c12, ; 146: lib_System.Security.Cryptography.OpenSsl.dll.so => 123
	i64 u0x282d912d479fa4c7, ; 147: fi\Microsoft.Maui.Controls.resources => 279
	i64 u0x2839fcdf8de6d6de, ; 148: lib_mscorlib.dll.so => 166
	i64 u0x2893ad37e69ec52f, ; 149: Jsr305Binding => 261
	i64 u0x28b79b2f7a561389, ; 150: lib_Microsoft.Maui.Essentials.dll.so => 187
	i64 u0x28d40321cb6061c5, ; 151: lib-he-Microsoft.Maui.Controls.resources.dll.so => 281
	i64 u0x29533f3adf83c4c2, ; 152: lib_System.Text.Encoding.Extensions.dll.so => 134
	i64 u0x2979edd11e41db59, ; 153: lib-th-Microsoft.Maui.Controls.resources.dll.so => 299
	i64 u0x298e28a9787facf0, ; 154: lib_Xamarin.AndroidX.RecyclerView.dll.so => 243
	i64 u0x29df058bd93f63c5, ; 155: System.Net.WebProxy => 78
	i64 u0x29e10a7f7d88a002, ; 156: Xamarin.Google.Android.Material => 260
	i64 u0x2a65353568c9f5d2, ; 157: lib_System.Runtime.Serialization.Json.dll.so => 112
	i64 u0x2a7821b98074fc9f, ; 158: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 208
	i64 u0x2b1dc1c88b637057, ; 159: System.Runtime.Serialization.Xml => 114
	i64 u0x2b2a53ac61900058, ; 160: System.Security.Cryptography.Csp.dll => 121
	i64 u0x2b8481c008eac5c4, ; 161: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x2c7702137b521840, ; 162: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x2d8a90a198ceba12, ; 163: System.Security.Principal => 128
	i64 u0x2d9329979a0b8dcd, ; 164: lib_System.Security.SecureString.dll.so => 129
	i64 u0x2da6b911e3063621, ; 165: Xamarin.AndroidX.Lifecycle.Common => 225
	i64 u0x2dd82acf985b2a4c, ; 166: Xamarin.AndroidX.Annotation.Experimental => 196
	i64 u0x2df3d23ba9e2b365, ; 167: System.Numerics.Vectors.dll => 82
	i64 u0x2e27e21c8958b48d, ; 168: System.Runtime.Numerics => 110
	i64 u0x2e327651a008c1ea, ; 169: System.Net.Sockets.dll => 75
	i64 u0x2e4e0a11e8664445, ; 170: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 272
	i64 u0x2e6a1a9a18463545, ; 171: Xamarin.KotlinX.Coroutines.Core.Jvm => 271
	i64 u0x2e984ff926fdadef, ; 172: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 301
	i64 u0x2f93829e2953ddfb, ; 173: lib_System.Net.dll.so => 81
	i64 u0x2f98a5385a7b1ed8, ; 174: Microsoft.Maui.Essentials => 187
	i64 u0x2fb5ae1beb8f7da2, ; 175: System.IO.MemoryMappedFiles.dll => 53
	i64 u0x307c7ddf444f3427, ; 176: Xamarin.AndroidX.Tracing.Tracing.dll => 251
	i64 u0x30808ba1c00a455a, ; 177: Microsoft.Extensions.Configuration => 174
	i64 u0x30b084e02d03ad16, ; 178: System.Net.Ping => 69
	i64 u0x30e2543832f52197, ; 179: Xamarin.AndroidX.SwipeRefreshLayout => 250
	i64 u0x30eb987eb575e531, ; 180: lib_Jsr305Binding.dll.so => 261
	i64 u0x31042a9aade235bb, ; 181: System.Numerics => 83
	i64 u0x311cdd6843bc4522, ; 182: lib_Xamarin.Kotlin.StdLib.Jdk8.dll.so => 269
	i64 u0x31480e226177735f, ; 183: System.Private.CoreLib.dll => 172
	i64 u0x3181bff5bea4ab11, ; 184: pt\Microsoft.Maui.Controls.resources => 294
	i64 u0x319037675df7e556, ; 185: System.Runtime.dll => 116
	i64 u0x31df859c26b19a5b, ; 186: lib_System.Net.WebClient.dll.so => 76
	i64 u0x31f54d3d867fee4e, ; 187: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 305
	i64 u0x327cc89a39d5f53c, ; 188: Microsoft.Extensions.Configuration.Abstractions => 175
	i64 u0x329f6d1e86145474, ; 189: System.Xml.ReaderWriter => 156
	i64 u0x32b5efa828f25692, ; 190: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0x32bb18945e52855d, ; 191: Microsoft.Extensions.Configuration.dll => 174
	i64 u0x32c8b3222885dd74, ; 192: Xamarin.Android.Glide.Annotations => 190
	i64 u0x32d3cb999c85a765, ; 193: lib_Xamarin.Jetbrains.Annotations.dll.so => 265
	i64 u0x3317d34e5cfa47f4, ; 194: lib_System.Xml.XmlSerializer.dll.so => 162
	i64 u0x3393f0ed5c8c5c99, ; 195: netstandard.dll => 167
	i64 u0x33baa1739ba646bd, ; 196: Xamarin.AndroidX.RecyclerView => 243
	i64 u0x345af645b473efa3, ; 197: Xamarin.AndroidX.DynamicAnimation.dll => 217
	i64 u0x3517e9f4c6e3d90a, ; 198: lib_LocalLibrary.dll.so => 0
	i64 u0x35b23cceda0ed605, ; 199: Microsoft.Extensions.Logging.dll => 178
	i64 u0x35b3c14d74bf0103, ; 200: System.Diagnostics.Tools => 32
	i64 u0x35fd4edf66e00240, ; 201: Microsoft.Maui.Controls.Xaml.dll => 185
	i64 u0x365b342412a8bdc3, ; 202: lib_System.ObjectModel.dll.so => 84
	i64 u0x3663e111652bd2b0, ; 203: System.Security.Cryptography.Encoding => 122
	i64 u0x369840a8bfadc09b, ; 204: System.Net.Requests => 72
	i64 u0x370b03412596249e, ; 205: System.Memory => 62
	i64 u0x375499897e41dad2, ; 206: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 222
	i64 u0x3754d62ff5663b2b, ; 207: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 240
	i64 u0x376b587dd952be57, ; 208: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 288
	i64 u0x379b9fe74ed9fe49, ; 209: System.Xml.XmlDocument => 161
	i64 u0x37a65f335cf1a770, ; 210: System.Runtime.Serialization.Primitives => 113
	i64 u0x3887fb25779ae26e, ; 211: System.Private.Xml.dll => 88
	i64 u0x388871e311491cc4, ; 212: Microsoft.Maui.Controls.Compatibility.dll => 183
	i64 u0x392eee9cdda86574, ; 213: zh-Hant\Microsoft.Maui.Controls.resources => 305
	i64 u0x392fda113e6f97bc, ; 214: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x3993c9651a66aa4c, ; 215: System.Runtime.InteropServices.JavaScript.dll => 105
	i64 u0x39a7562737acb67e, ; 216: System.ComponentModel => 18
	i64 u0x39ae563c7e8a1ea0, ; 217: lib_System.Security.Cryptography.X509Certificates.dll.so => 125
	i64 u0x39d51d1d3df1cf44, ; 218: System.Threading.ThreadPool => 146
	i64 u0x39d96140fb94ebf2, ; 219: System.Security.Claims.dll => 118
	i64 u0x3a1c43d291aeb533, ; 220: lib_Xamarin.AndroidX.Emoji2.dll.so => 218
	i64 u0x3a1cea1e912fa117, ; 221: System.Linq.Expressions => 58
	i64 u0x3a4e74a233da124b, ; 222: Xamarin.AndroidX.Core.Core.Ktx => 211
	i64 u0x3a5e0299f7e7ad93, ; 223: System.ComponentModel.TypeConverter => 17
	i64 u0x3ac787eb9b118544, ; 224: System.IO.IsolatedStorage.dll => 52
	i64 u0x3b5f4278ee765546, ; 225: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x3b6d36a7ddc70cfc, ; 226: System.Reflection.Emit => 92
	i64 u0x3c75b8c562f9087f, ; 227: vi/Microsoft.Maui.Controls.resources.dll => 302
	i64 u0x3cae15e074c45b7c, ; 228: lib_Xamarin.AndroidX.CardView.dll.so => 203
	i64 u0x3cb235e806eb2359, ; 229: System.IO.Pipes.dll => 55
	i64 u0x3cfb935fe4d54de1, ; 230: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 254
	i64 u0x3d0789940f9be3e6, ; 231: System.Security.SecureString.dll => 129
	i64 u0x3d60975286d72fdc, ; 232: lib_Microsoft.Extensions.Primitives.dll.so => 182
	i64 u0x3e23e3dcdb8ba196, ; 233: System.Web.HttpUtility.dll => 152
	i64 u0x3e3ce07510042d4f, ; 234: System.Globalization.Extensions.dll => 41
	i64 u0x3e86240cb4ae6524, ; 235: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x3ea8d4a6ee841541, ; 236: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 271
	i64 u0x3ee8e505540534ea, ; 237: System.Reflection.Emit.dll => 92
	i64 u0x3f65aa01afff3e65, ; 238: lib_System.Formats.Tar.dll.so => 39
	i64 u0x3ffb5de7823a5331, ; 239: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x4058d0370893015a, ; 240: Xamarin.AndroidX.VersionedParcelable.dll => 255
	i64 u0x40d7e4104a437f21, ; 241: System.IO.FileSystem.Watcher => 50
	i64 u0x40f142a407475667, ; 242: ar/Microsoft.Maui.Controls.resources.dll => 272
	i64 u0x411fd897194ea085, ; 243: lib_System.Transactions.dll.so => 150
	i64 u0x41540c213522c4ad, ; 244: lib_System.Text.Json.dll.so => 137
	i64 u0x416b7462510e8f5c, ; 245: lib_Xamarin.Kotlin.StdLib.Jdk7.dll.so => 268
	i64 u0x417501590542f358, ; 246: System.Xml.XmlSerializer => 162
	i64 u0x418ddd1ead20270c, ; 247: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 214
	i64 u0x41d5705f4239b194, ; 248: System.ComponentModel.Annotations => 13
	i64 u0x420d00be961cc5ab, ; 249: Xamarin.AndroidX.Lifecycle.Process.dll => 229
	i64 u0x4288cfb749e4c631, ; 250: Xamarin.AndroidX.Activity => 193
	i64 u0x428cb86f8f9b7bbc, ; 251: Xamarin.AndroidX.SwipeRefreshLayout.dll => 250
	i64 u0x42bd349c3145ecf9, ; 252: System.Drawing => 36
	i64 u0x42d11c0a5ee2a005, ; 253: System.Net.NameResolution.dll => 67
	i64 u0x435a75ea15de7927, ; 254: System.Runtime.Loader.dll => 109
	i64 u0x437426276237778f, ; 255: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x4475661e158dfa57, ; 256: lib_Microsoft.Extensions.Configuration.dll.so => 174
	i64 u0x451f1cf73c5f51a5, ; 257: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 239
	i64 u0x45c3fc6e3e7e3b44, ; 258: lib_System.Net.Security.dll.so => 73
	i64 u0x4628444ef7239408, ; 259: Xamarin.AndroidX.Activity.Ktx.dll => 194
	i64 u0x4685597c05d06e4e, ; 260: System.Resources.ResourceManager.dll => 99
	i64 u0x46c4f35ea8519678, ; 261: System.Resources.ResourceManager => 99
	i64 u0x46d2fb5e161b6285, ; 262: System.Collections.Specialized => 11
	i64 u0x4703c8c171a78d93, ; 263: lib_System.Threading.Timer.dll.so => 147
	i64 u0x477b84a327177010, ; 264: lib_System.Net.NameResolution.dll.so => 67
	i64 u0x47cb0715c67dd177, ; 265: lib_System.Threading.dll.so => 148
	i64 u0x47ed7b91fa9009c0, ; 266: System.Collections.Specialized.dll => 11
	i64 u0x483cff7778e0c06a, ; 267: Xamarin.AndroidX.LocalBroadcastManager => 236
	i64 u0x48c7c34f4d59fc28, ; 268: System.Diagnostics.Contracts.dll => 25
	i64 u0x48e1876b5a52a88f, ; 269: lib_Xamarin.Android.Glide.dll.so => 189
	i64 u0x48e3e87335e8247c, ; 270: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x4909d4be0c44c4d0, ; 271: System.Security.Principal.dll => 128
	i64 u0x491c5979dd27a002, ; 272: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 101
	i64 u0x4942055efc68329e, ; 273: System.Net.WebClient.dll => 76
	i64 u0x4949cf7fd7123d03, ; 274: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 228
	i64 u0x496ca6b869b72699, ; 275: System.Runtime.Loader => 109
	i64 u0x49be40ebf21891c2, ; 276: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 303
	i64 u0x4a9d3431719e5d49, ; 277: Xamarin.AndroidX.VectorDrawable.Animated => 254
	i64 u0x4b066f87a1dd5c58, ; 278: lib_Microsoft.Maui.Controls.Compatibility.dll.so => 183
	i64 u0x4b0e477cea9840e2, ; 279: Xamarin.AndroidX.Transition => 252
	i64 u0x4b43b42f2b7b6ef9, ; 280: System.Runtime.InteropServices.RuntimeInformation => 106
	i64 u0x4b46566f48d5e00e, ; 281: lib_Mono.Android.Export.dll.so => 169
	i64 u0x4b7fe70acda9f908, ; 282: Microsoft.VisualBasic.Core => 2
	i64 u0x4b90fa21128e9c62, ; 283: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x4b94333452e150dd, ; 284: System.Diagnostics.Debug => 26
	i64 u0x4ba5e94a845c2ce3, ; 285: Xamarin.AndroidX.ConstraintLayout.dll => 207
	i64 u0x4bbde05c557002ea, ; 286: System.Xml.Serialization => 157
	i64 u0x4beec9d926d82ca5, ; 287: sv\Microsoft.Maui.Controls.resources => 298
	i64 u0x4c705499688c873e, ; 288: System.Core.dll => 21
	i64 u0x4ca5237b51eead90, ; 289: uk\Microsoft.Maui.Controls.resources => 301
	i64 u0x4cb561acbc2a8f22, ; 290: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x4d4f74fcdfa6c35f, ; 291: System.IO.Compression.Brotli => 43
	i64 u0x4d58333c6e4ea1dd, ; 292: System.Security.Cryptography.dll => 126
	i64 u0x4d5ba617ae5f8d9d, ; 293: Xamarin.AndroidX.Annotation.Jvm => 197
	i64 u0x4d9a087135e137f4, ; 294: System.Linq.Parallel => 59
	i64 u0x4df00ac2e8adce5b, ; 295: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0x4df45ae1b1e457de, ; 296: lib_Xamarin.AndroidX.SavedState.dll.so => 245
	i64 u0x4e606aa746c7a1d2, ; 297: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x4e6505fdeabece67, ; 298: lib_System.Private.Xml.Linq.dll.so => 87
	i64 u0x4e692e055d01a56a, ; 299: System.Security.Cryptography.Algorithms.dll => 119
	i64 u0x4ec9c23e52d46db4, ; 300: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 227
	i64 u0x4efe49a0d4a8bb41, ; 301: Xamarin.AndroidX.ViewPager2.dll => 257
	i64 u0x4f0c0d6038bc892a, ; 302: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 206
	i64 u0x4f72926f3e13b212, ; 303: Xamarin.AndroidX.ExifInterface => 220
	i64 u0x4fe6d44bd9f885f0, ; 304: Xamarin.AndroidX.Concurrent.Futures.dll => 206
	i64 u0x504352701bbc3c6b, ; 305: Microsoft.VisualBasic => 3
	i64 u0x51d5376bfbafdda3, ; 306: Xamarin.AndroidX.Lifecycle.LiveData.dll => 226
	i64 u0x5236ec85df1b0d87, ; 307: lib_System.Collections.Specialized.dll.so => 11
	i64 u0x528434ca6a7531c1, ; 308: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 293
	i64 u0x52b3d8b05c8ef307, ; 309: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 246
	i64 u0x52fa3699a489d25e, ; 310: System.Formats.Asn1 => 38
	i64 u0x530e23115c33dba9, ; 311: System.Security.Cryptography.Primitives => 124
	i64 u0x53669f5a4ddb2ea4, ; 312: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 231
	i64 u0x5436126fec7f197d, ; 313: ro/Microsoft.Maui.Controls.resources.dll => 295
	i64 u0x54b1758374b3de7b, ; 314: Xamarin.AndroidX.SavedState.SavedState.Ktx => 246
	i64 u0x55be1f7f721fe0d2, ; 315: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 297
	i64 u0x55c30b428cacb64d, ; 316: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 295
	i64 u0x560d8a96830131ed, ; 317: ro\Microsoft.Maui.Controls.resources => 295
	i64 u0x56516e7afc333e0b, ; 318: lib_System.IO.Pipes.dll.so => 55
	i64 u0x565a67a0ffe264a7, ; 319: System.Text.Json.dll => 137
	i64 u0x56c0426b870da1ac, ; 320: System.Transactions.Local => 149
	i64 u0x570e53f93eb72b28, ; 321: lib_System.Memory.dll.so => 62
	i64 u0x57228e08a4ad6c74, ; 322: System.Private.DataContractSerialization => 85
	i64 u0x5735c4b3610850c2, ; 323: System.Reflection.Emit.ILGeneration => 90
	i64 u0x57ad7bdfabb69c3e, ; 324: lib_System.Threading.Tasks.dll.so => 144
	i64 u0x57b42213b45b52f9, ; 325: Xamarin.AndroidX.Lifecycle.Runtime => 230
	i64 u0x583a3a4ac2a7a0f8, ; 326: _Microsoft.Android.Resource.Designer => 306
	i64 u0x58d75d486341cfb2, ; 327: Xamarin.AndroidX.Lifecycle.LiveData.Core => 227
	i64 u0x59e7801b0c6a8e9a, ; 328: hr\Microsoft.Maui.Controls.resources => 283
	i64 u0x5a45e7c43bd43d6b, ; 329: Xamarin.AndroidX.Browser.dll => 202
	i64 u0x5ac536cf34f2c59f, ; 330: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 270
	i64 u0x5ad5060301b19cd0, ; 331: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 197
	i64 u0x5adfed387b066da8, ; 332: Xamarin.AndroidX.CustomView.dll => 213
	i64 u0x5aff71ee6c58c08b, ; 333: Xamarin.AndroidX.Window.dll => 258
	i64 u0x5b0a25116aa128b4, ; 334: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 201
	i64 u0x5b0a571be53243a5, ; 335: Microsoft.Extensions.Options => 181
	i64 u0x5b2762187c66821f, ; 336: lib-el-Microsoft.Maui.Controls.resources.dll.so => 277
	i64 u0x5b718d34180a787e, ; 337: Xamarin.Google.ErrorProne.Annotations.dll => 263
	i64 u0x5b7b636b7e9765a3, ; 338: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 228
	i64 u0x5bd6be0b4905fa9a, ; 339: System.Text.Encoding.CodePages => 133
	i64 u0x5d2aeeddb8dd7dd6, ; 340: System.Reflection.TypeExtensions.dll => 96
	i64 u0x5d4eb9307b987c6a, ; 341: lib_System.Linq.Parallel.dll.so => 59
	i64 u0x5d88c4bde075ff43, ; 342: Microsoft.VisualBasic.dll => 3
	i64 u0x5d948943c08c43a5, ; 343: nl\Microsoft.Maui.Controls.resources => 291
	i64 u0x5dfdf378527ec7a1, ; 344: System.Runtime.InteropServices.JavaScript => 105
	i64 u0x5e0e74e0a2525efa, ; 345: pt/Microsoft.Maui.Controls.resources.dll => 294
	i64 u0x5e2ede51877147f2, ; 346: System.Diagnostics.TraceSource => 33
	i64 u0x5e4b55b5964b3bfa, ; 347: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 250
	i64 u0x5e5884bd523ca188, ; 348: System.Windows => 154
	i64 u0x5e90d98217d1abfe, ; 349: System.Xml.XDocument.dll => 158
	i64 u0x5edf634dab2cfebc, ; 350: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 251
	i64 u0x5f159e1ec79fc067, ; 351: lib_System.Xml.XPath.XDocument.dll.so => 159
	i64 u0x5f5fba0a7f2f5fc2, ; 352: lib-id-Microsoft.Maui.Controls.resources.dll.so => 285
	i64 u0x5f6f85a57d108914, ; 353: System.Xml.Linq => 155
	i64 u0x5faf683aead1ad72, ; 354: System.Numerics.Vectors => 82
	i64 u0x5fd47d795eac1e89, ; 355: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 230
	i64 u0x612affbd2b26978e, ; 356: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0x614c442918e5dd99, ; 357: Xamarin.AndroidX.Fragment.Ktx => 222
	i64 u0x61f8282d84044bbc, ; 358: lib_Xamarin.AndroidX.Transition.dll.so => 252
	i64 u0x61fd57a90988f4a0, ; 359: System.Threading.Tasks.Parallel.dll => 143
	i64 u0x624dd0fe8f56c5fe, ; 360: System.Private.Xml.Linq.dll => 87
	i64 u0x628d9687c0141d1e, ; 361: System.Configuration => 19
	i64 u0x62959a90372c7632, ; 362: Xamarin.AndroidX.Interpolator.dll => 223
	i64 u0x62b4d88e3189b1f2, ; 363: System.IO.FileSystem => 51
	i64 u0x6300db35851258b1, ; 364: lib_Xamarin.AndroidX.ViewPager2.dll.so => 257
	i64 u0x63d1c3a0a1d72f81, ; 365: Xamarin.Android.Glide.GifDecoder.dll => 192
	i64 u0x6432a06d99f35af5, ; 366: sv/Microsoft.Maui.Controls.resources.dll => 298
	i64 u0x643f780e802723b9, ; 367: lib_System.Security.AccessControl.dll.so => 117
	i64 u0x64a80921c2013ad8, ; 368: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 224
	i64 u0x64e71ccf51a90a5a, ; 369: System.Linq => 61
	i64 u0x654c9311e74f3c12, ; 370: System.IO.Pipes.AccessControl.dll => 54
	i64 u0x658861d38954abc1, ; 371: Microsoft.Win32.Primitives => 4
	i64 u0x65d67f295d0740ad, ; 372: System.Reflection => 97
	i64 u0x65fe6d5e9bf88ed6, ; 373: Xamarin.Android.Glide.DiskLruCache => 191
	i64 u0x660987d3e7cf28dd, ; 374: lib_System.Linq.Queryable.dll.so => 60
	i64 u0x66617afac45a2ff6, ; 375: System.ComponentModel.TypeConverter.dll => 17
	i64 u0x669f66fe3b00a2c0, ; 376: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0x66c9528e16a38d99, ; 377: LocalLibrary => 0
	i64 u0x67ad23591d196a7c, ; 378: lib_System.Threading.Tasks.Extensions.dll.so => 142
	i64 u0x67ecc3724534ab5f, ; 379: System.Xml.Linq.dll => 155
	i64 u0x67ee71ff6b419e3f, ; 380: System.ObjectModel => 84
	i64 u0x692e3602a931f967, ; 381: lib_System.Runtime.Intrinsics.dll.so => 108
	i64 u0x6956dd78e1e6bb92, ; 382: lib_System.Resources.ResourceManager.dll.so => 99
	i64 u0x695e410af5b2aa54, ; 383: System.Diagnostics.Process => 29
	i64 u0x69fd26fcb637f493, ; 384: System.IO.Compression.ZipFile.dll => 45
	i64 u0x6a3a4366801b8264, ; 385: System.Net.Http => 64
	i64 u0x6a75a14c0995c73f, ; 386: lib_System.Net.Http.dll.so => 64
	i64 u0x6ac9112a7e2cda5f, ; 387: System.Net.Mail => 66
	i64 u0x6afb1ff4d1730479, ; 388: ms/Microsoft.Maui.Controls.resources.dll => 289
	i64 u0x6b0e4213a0c308a3, ; 389: lib_System.ValueTuple.dll.so => 151
	i64 u0x6b0ff375198b9c17, ; 390: System.Private.CoreLib => 172
	i64 u0x6b3626ac11ce9289, ; 391: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 231
	i64 u0x6b58dda848e391fe, ; 392: Microsoft.CSharp => 1
	i64 u0x6b597e2582ce8bfb, ; 393: Xamarin.Kotlin.StdLib.dll => 266
	i64 u0x6c1f749d468bcd40, ; 394: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x6c8125be228c67ab, ; 395: lib_System.Reflection.Extensions.dll.so => 93
	i64 u0x6c87ca1e14ff8111, ; 396: System.Data => 24
	i64 u0x6cbfa6390d64d704, ; 397: Xamarin.AndroidX.AppCompat.AppCompatResources => 199
	i64 u0x6cc23b65ee52b040, ; 398: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x6e6981121ee85701, ; 399: lib_Xamarin.Android.Glide.Annotations.dll.so => 190
	i64 u0x6e816bf69bff632c, ; 400: lib_System.Net.Quic.dll.so => 71
	i64 u0x6e9647f187adce76, ; 401: lib_Microsoft.Maui.Graphics.dll.so => 188
	i64 u0x6f25b36fa5e5cf1d, ; 402: lib_System.Xml.XDocument.dll.so => 158
	i64 u0x6f605d9b4786ce95, ; 403: WindowsBase => 165
	i64 u0x6f757159d9dc03e7, ; 404: System.Runtime.Intrinsics.dll => 108
	i64 u0x6fe942efa61731bf, ; 405: System.Collections.dll => 12
	i64 u0x702dd82730cad267, ; 406: Xamarin.AndroidX.Lifecycle.Common.dll => 225
	i64 u0x703482674fdd05f8, ; 407: System.Net.Http.Json.dll => 63
	i64 u0x703b87d46f3aa082, ; 408: System.Diagnostics.DiagnosticSource => 27
	i64 u0x7075ee03be6d50e7, ; 409: System.Data.DataSetExtensions.dll => 23
	i64 u0x70995ab73cf916ec, ; 410: System.Reflection.Extensions => 93
	i64 u0x70aecd5f5249e8ac, ; 411: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x70be30639b24d30c, ; 412: lib_GoogleGson.dll.so => 173
	i64 u0x7157d9f1a9b8fd27, ; 413: Java.Interop.dll => 168
	i64 u0x7198e33f4794aa70, ; 414: System.Collections => 12
	i64 u0x71a057ae90f0109b, ; 415: Xamarin.KotlinX.Coroutines.Android => 270
	i64 u0x7208ddf99f7ed8fb, ; 416: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 263
	i64 u0x726fd96f64ee56fd, ; 417: Microsoft.Maui.Graphics.dll => 188
	i64 u0x72b2ea6a64a3a25e, ; 418: System.Diagnostics.Process.dll => 29
	i64 u0x72f45c75e49e2077, ; 419: lib_Xamarin.AndroidX.Print.dll.so => 241
	i64 u0x730ea0b15c929a72, ; 420: System.Runtime.Extensions => 103
	i64 u0x7372b092055ea624, ; 421: System.ComponentModel.DataAnnotations => 14
	i64 u0x7423997c6fd56140, ; 422: System.Security.Cryptography => 126
	i64 u0x748cdc6f3097d170, ; 423: Xamarin.AndroidX.ConstraintLayout.Core.dll => 208
	i64 u0x749410ab44503ded, ; 424: Xamarin.AndroidX.Navigation.UI.dll => 240
	i64 u0x74b8b4daf4b25224, ; 425: System.Reflection.Emit.Lightweight.dll => 91
	i64 u0x74e95eae57a0ac99, ; 426: lib_System.Reflection.TypeExtensions.dll.so => 96
	i64 u0x74f26ed7aa033133, ; 427: Xamarin.AndroidX.Lifecycle.Process => 229
	i64 u0x76018d4d260630e7, ; 428: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 179
	i64 u0x76377add7c28e313, ; 429: System.Collections.Immutable => 9
	i64 u0x76d841191140ca5b, ; 430: System.Private.Uri => 86
	i64 u0x774cd38c04483a40, ; 431: lib_Xamarin.AndroidX.Activity.dll.so => 193
	i64 u0x77550a055fc61d88, ; 432: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 219
	i64 u0x7760370982b4ed4d, ; 433: Xamarin.AndroidX.Transition.dll => 252
	i64 u0x778b763e14018ace, ; 434: pt-BR/Microsoft.Maui.Controls.resources.dll => 293
	i64 u0x77ab42ac514299c0, ; 435: System.Net.Quic.dll => 71
	i64 u0x77b654e585b55834, ; 436: Java.Interop => 168
	i64 u0x77e3cb5e8b31d7db, ; 437: Microsoft.CSharp.dll => 1
	i64 u0x77e5fbdaa2fda2e0, ; 438: Xamarin.AndroidX.Navigation.Runtime => 239
	i64 u0x77f9a644172989bd, ; 439: lib_Xamarin.AndroidX.Annotation.dll.so => 195
	i64 u0x7805a1456889bdc9, ; 440: Microsoft.Win32.Registry.dll => 5
	i64 u0x786e07f5766b00ce, ; 441: pt-BR\Microsoft.Maui.Controls.resources => 293
	i64 u0x7885a79a0fa0d987, ; 442: System.IO.Compression.FileSystem => 44
	i64 u0x788e768ff63962f1, ; 443: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x79174bd613173454, ; 444: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0x7ac673b3a4833d13, ; 445: lib_System.Net.Mail.dll.so => 66
	i64 u0x7add84a720d38466, ; 446: Xamarin.Kotlin.StdLib.Common.dll => 267
	i64 u0x7c1626e87187471a, ; 447: System.Xml.XDocument => 158
	i64 u0x7c3a09cd9ccf5e22, ; 448: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 242
	i64 u0x7c45ace50032d93d, ; 449: System.Runtime.Serialization.Json => 112
	i64 u0x7c4a7ee89a0ff0cc, ; 450: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 216
	i64 u0x7d333c420f9c5a8c, ; 451: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 207
	i64 u0x7d891592e3cb0ebc, ; 452: zh-HK\Microsoft.Maui.Controls.resources => 303
	i64 u0x7dd0f8694ee43ee8, ; 453: lib_Xamarin.Google.Android.Material.dll.so => 260
	i64 u0x7ed3201bc3e3d156, ; 454: System.Security.Cryptography.Csp => 121
	i64 u0x80acbf49ddc7eb83, ; 455: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 262
	i64 u0x80dab33c1ce0b9cb, ; 456: lib_System.Numerics.Vectors.dll.so => 82
	i64 u0x813d54296a634f33, ; 457: Xamarin.AndroidX.ViewPager2 => 257
	i64 u0x8168042fd44a7c7a, ; 458: Xamarin.AndroidX.AppCompat => 198
	i64 u0x8208d6b7fe9371e4, ; 459: lib_System.Net.Primitives.dll.so => 70
	i64 u0x827b60604ab15ff6, ; 460: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 228
	i64 u0x8365dc09353ac5da, ; 461: System.Xml.XPath.XDocument.dll => 159
	i64 u0x8384b3629f30f33e, ; 462: lib_System.Net.HttpListener.dll.so => 65
	i64 u0x83fde5f2386ff63d, ; 463: lib_System.Net.NetworkInformation.dll.so => 68
	i64 u0x84999c54e32a1ba6, ; 464: System.ServiceModel.Web => 131
	i64 u0x84e4707ee708bdc8, ; 465: Xamarin.Google.Crypto.Tink.Android.dll => 262
	i64 u0x85037ebfbbd7f69d, ; 466: System.IO.dll => 57
	i64 u0x860e407c9991dd9b, ; 467: System.Text.RegularExpressions => 138
	i64 u0x8617827802b0cfc3, ; 468: System.Numerics.dll => 83
	i64 u0x86295ce5cd89898b, ; 469: System.Diagnostics.StackTrace => 30
	i64 u0x864f57c9feb18c88, ; 470: Xamarin.AndroidX.CoordinatorLayout.dll => 209
	i64 u0x86a79827b2eb3c96, ; 471: System.Collections.NonGeneric.dll => 10
	i64 u0x87b9dec9576efaef, ; 472: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 259
	i64 u0x881f890734e555e7, ; 473: Mono.Android.dll => 171
	i64 u0x885bb87d8abc94e0, ; 474: Xamarin.AndroidX.Concurrent.Futures => 206
	i64 u0x8879968718899783, ; 475: System.Transactions.dll => 150
	i64 u0x88825f3bbc2ac012, ; 476: System.Reflection.Metadata => 94
	i64 u0x897dfa20b758db53, ; 477: Xamarin.AndroidX.Emoji2.ViewsHelper => 219
	i64 u0x89db145cf475c552, ; 478: System.Linq.Queryable.dll => 60
	i64 u0x8a2b8315b36616ac, ; 479: Microsoft.Maui => 186
	i64 u0x8a6cea111a59dd85, ; 480: System.Xml.Serialization.dll => 157
	i64 u0x8aa9180c89861370, ; 481: es/Microsoft.Maui.Controls.resources.dll => 278
	i64 u0x8afbf0c24d48b284, ; 482: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 248
	i64 u0x8b055989ae10717a, ; 483: Microsoft.Extensions.Logging.Debug => 180
	i64 u0x8b50e941206af13b, ; 484: System.Net.Http.dll => 64
	i64 u0x8b7d990c97ccccd3, ; 485: System.Private.Xml => 88
	i64 u0x8bdcf910c77e22dc, ; 486: lib_System.Windows.dll.so => 154
	i64 u0x8bded4e257f117ce, ; 487: System.Net.WebSockets.Client => 79
	i64 u0x8c055be67469bb58, ; 488: System.IO.FileSystem.AccessControl => 47
	i64 u0x8c10f49539bd0c64, ; 489: Microsoft.Maui.Controls => 184
	i64 u0x8c3de5c91d9a650e, ; 490: System.Threading.Tasks.Parallel => 143
	i64 u0x8c93ce282aab1814, ; 491: lib_System.Reflection.Emit.ILGeneration.dll.so => 90
	i64 u0x8cc634e3c2a16b52, ; 492: da\Microsoft.Maui.Controls.resources => 275
	i64 u0x8d6b638f8837f204, ; 493: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 225
	i64 u0x8dead70ebbc6434f, ; 494: Xamarin.Kotlin.StdLib.Jdk7 => 268
	i64 u0x8df4cb880b10061b, ; 495: Xamarin.AndroidX.CustomView => 213
	i64 u0x8e101325834e4832, ; 496: System.Net.ServicePoint.dll => 74
	i64 u0x8e2edd4ad7fc978a, ; 497: System.Reflection.Emit.Lightweight => 91
	i64 u0x8f3e97a7f8f8c580, ; 498: Xamarin.Jetbrains.Annotations.dll => 265
	i64 u0x8f50a27860ef6d29, ; 499: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 304
	i64 u0x8fc86d98211c1e68, ; 500: System.Text.Encoding => 135
	i64 u0x8fd5fde967711b10, ; 501: System.Reflection.Emit.ILGeneration.dll => 90
	i64 u0x900101b2f888c2fb, ; 502: Xamarin.AndroidX.Tracing.Tracing => 251
	i64 u0x906b2153fcb3af04, ; 503: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 271
	i64 u0x908dfb583e384934, ; 504: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x90bf592ea44f6673, ; 505: Xamarin.AndroidX.Core => 210
	i64 u0x9180f0f3c62d55bf, ; 506: lib_Xamarin.AndroidX.Collection.dll.so => 204
	i64 u0x91aef9ebcdec62e6, ; 507: lib_System.Security.Claims.dll.so => 118
	i64 u0x91cd9cf11ed169df, ; 508: ca\Microsoft.Maui.Controls.resources => 273
	i64 u0x91f2c9aaacbeea7f, ; 509: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0x925d4673efe8e8b8, ; 510: System.Runtime.Serialization.Json.dll => 112
	i64 u0x92a562b96dcd13fb, ; 511: System.Globalization.dll => 42
	i64 u0x930bb64cc472ea4c, ; 512: System.Xml.XPath.XDocument => 159
	i64 u0x9414c8cd7b4ea92a, ; 513: Microsoft.Win32.Primitives.dll => 4
	i64 u0x944213ac10b2c2e2, ; 514: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x94b06e5aa4b4bb34, ; 515: System.Runtime.Extensions.dll => 103
	i64 u0x953a116ce9803e12, ; 516: lib_System.Security.Cryptography.dll.so => 126
	i64 u0x95ac8cfb68830758, ; 517: System.Net.Primitives => 70
	i64 u0x960db9510c7daaa0, ; 518: lib_netstandard.dll.so => 167
	i64 u0x9631c23204ca5ff8, ; 519: System.Linq.Queryable => 60
	i64 u0x964ecb340a447b69, ; 520: System.Formats.Tar => 39
	i64 u0x968ae37a86db9f85, ; 521: Xamarin.AndroidX.Arch.Core.Common => 200
	i64 u0x97144c6d24522e4f, ; 522: lib_System.Reflection.Metadata.dll.so => 94
	i64 u0x9743fd975946eb81, ; 523: System.Web => 153
	i64 u0x97e07461df39de29, ; 524: System.IO.UnmanagedMemoryStream.dll => 56
	i64 u0x982a4628ccaffdfa, ; 525: System.Diagnostics.Tracing => 34
	i64 u0x98b1013215cd365e, ; 526: Microsoft.Extensions.Logging.Abstractions => 179
	i64 u0x98c7d7cc621ffdba, ; 527: Microsoft.Maui.dll => 186
	i64 u0x98ee415998e1b2e2, ; 528: Xamarin.AndroidX.Annotation.Jvm.dll => 197
	i64 u0x98f9bc61168392ac, ; 529: System.Core => 21
	i64 u0x992e31d0412bf7fc, ; 530: System.Xml => 163
	i64 u0x9995b7528b9d3050, ; 531: lib_System.Reflection.dll.so => 97
	i64 u0x99a705d600e0a049, ; 532: Xamarin.Google.ErrorProne.Annotations => 263
	i64 u0x9a193a6fc41a6c0f, ; 533: hu\Microsoft.Maui.Controls.resources => 284
	i64 u0x9a8b200d4f8cd543, ; 534: Jsr305Binding.dll => 261
	i64 u0x9a9356868b89d70d, ; 535: lib__Microsoft.Android.Resource.Designer.dll.so => 306
	i64 u0x9ae7d54b986d05c6, ; 536: Xamarin.AndroidX.ViewPager => 256
	i64 u0x9b44e5671724e550, ; 537: System.Threading.Overlapped => 140
	i64 u0x9bb8448481fdd63a, ; 538: ja\Microsoft.Maui.Controls.resources => 287
	i64 u0x9bcbcbf50c874146, ; 539: Microsoft.Extensions.Options.dll => 181
	i64 u0x9bed0a9c8fac441a, ; 540: System.Reflection.DispatchProxy.dll => 89
	i64 u0x9c62697974f0c01b, ; 541: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 238
	i64 u0x9ce511be0cfb2e47, ; 542: lib_System.Net.WebSockets.dll.so => 80
	i64 u0x9d3b5ccf6cc500eb, ; 543: System.Threading.Timer.dll => 147
	i64 u0x9d4ffb4683a736f0, ; 544: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0x9d630238642d465c, ; 545: Xamarin.AndroidX.CursorAdapter => 212
	i64 u0x9d7a318e8162502c, ; 546: System.Xml.XmlSerializer.dll => 162
	i64 u0x9e1b79b18fcf6824, ; 547: Xamarin.AndroidX.Print.dll => 241
	i64 u0x9ea6fb64e61a9dd5, ; 548: System.AppContext => 6
	i64 u0x9edabf8623efc131, ; 549: Mono.Android.Export => 169
	i64 u0x9ee0731f77186c8c, ; 550: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0x9ef595609df64495, ; 551: lib_System.Net.WebProxy.dll.so => 78
	i64 u0x9f6614bf0f8b71b6, ; 552: System.Runtime.InteropServices => 107
	i64 u0x9fb664600dde1045, ; 553: Xamarin.AndroidX.Fragment.Ktx.dll => 222
	i64 u0x9fd9353475222047, ; 554: id\Microsoft.Maui.Controls.resources => 285
	i64 u0xa002ae3c4dc7c569, ; 555: Xamarin.AndroidX.ViewPager.dll => 256
	i64 u0xa004d1504ccd66be, ; 556: Microsoft.Extensions.Logging => 178
	i64 u0xa0b4a0a4103262e5, ; 557: Xamarin.AndroidX.Annotation => 195
	i64 u0xa0dcc167234c525e, ; 558: Xamarin.AndroidX.Startup.StartupRuntime.dll => 249
	i64 u0xa0f429ca8d1805c9, ; 559: netstandard => 167
	i64 u0xa1fc8e7d0a8999ff, ; 560: Xamarin.AndroidX.Interpolator => 223
	i64 u0xa245cd869980680f, ; 561: System.Threading.Overlapped.dll => 140
	i64 u0xa26b6448a1b326c5, ; 562: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 106
	i64 u0xa272663128721f7b, ; 563: he/Microsoft.Maui.Controls.resources.dll => 281
	i64 u0xa27996c7fe94da80, ; 564: System.Linq.Parallel.dll => 59
	i64 u0xa2f9e1ec30c0214a, ; 565: System.Threading.Tasks => 144
	i64 u0xa44e3af7e6663702, ; 566: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 287
	i64 u0xa495084c7a73f7b6, ; 567: lib_System.Numerics.dll.so => 83
	i64 u0xa4ef2e28ca4bacf4, ; 568: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 192
	i64 u0xa5762210ad1ea0ca, ; 569: lib_System.Drawing.dll.so => 36
	i64 u0xa59e211779d32430, ; 570: lib_System.AppContext.dll.so => 6
	i64 u0xa5d8011420f3897f, ; 571: lib_System.Data.dll.so => 24
	i64 u0xa668c24ad493ae94, ; 572: System.Net => 81
	i64 u0xa6eaed294a055052, ; 573: lib_Mono.Android.dll.so => 171
	i64 u0xa719d28d8e121c5c, ; 574: System.Net.ServicePoint => 74
	i64 u0xa76a99f6ce740786, ; 575: System.Security => 130
	i64 u0xa7d0ee2293417e79, ; 576: lib_System.Web.dll.so => 153
	i64 u0xa7e019eccb7e8365, ; 577: System.Diagnostics.Contracts => 25
	i64 u0xa7eebaedbbd5088c, ; 578: lib_System.Runtime.dll.so => 116
	i64 u0xa7f5f40c43256f62, ; 579: System.Buffers => 7
	i64 u0xa83db366c0e359c2, ; 580: System.Reflection.Extensions.dll => 93
	i64 u0xa872095bbfed113b, ; 581: Xamarin.AndroidX.VectorDrawable => 253
	i64 u0xa88e1f1ebcb62fba, ; 582: System.Text.Json => 137
	i64 u0xa8aabfaf37dcaacf, ; 583: lib_Microsoft.Maui.Controls.Xaml.dll.so => 185
	i64 u0xa9316dee7f392795, ; 584: Xamarin.Android.Glide.dll => 189
	i64 u0xa953d6341e3bd310, ; 585: System.Runtime.Serialization.Primitives.dll => 113
	i64 u0xa98fbe0994b99295, ; 586: lib_Microsoft.Extensions.Logging.Debug.dll.so => 180
	i64 u0xaa45e178506c9258, ; 587: System.Collections.Immutable.dll => 9
	i64 u0xaa4d9076888feb59, ; 588: lib_Xamarin.AndroidX.Window.dll.so => 258
	i64 u0xaad7a6001cbd37fc, ; 589: lib_System.Net.ServicePoint.dll.so => 74
	i64 u0xab24db6c07db5dff, ; 590: System.Runtime.Handles => 104
	i64 u0xabbe6ac12e2e0569, ; 591: System.Configuration.dll => 19
	i64 u0xac279d970539769b, ; 592: lib_System.Runtime.CompilerServices.VisualC.dll.so => 102
	i64 u0xac54fdbda9e0cee1, ; 593: lib_System.Threading.Overlapped.dll.so => 140
	i64 u0xaccaff0a2955b677, ; 594: Xamarin.AndroidX.Fragment.dll => 221
	i64 u0xacd91b62476b5624, ; 595: lib_System.Buffers.dll.so => 7
	i64 u0xad01f3eb52569061, ; 596: Xamarin.AndroidX.Loader.dll => 235
	i64 u0xad1690f49e52b7a8, ; 597: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0xad2081818aba1caa, ; 598: _Microsoft.Android.Resource.Designer.dll => 306
	i64 u0xad26dbdf5df64f11, ; 599: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 199
	i64 u0xad32a2944b9e9db0, ; 600: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 253
	i64 u0xad45d4f9a4a2d546, ; 601: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 196
	i64 u0xad4d00fa21b0bfb9, ; 602: Xamarin.AndroidX.DocumentFile.dll => 215
	i64 u0xadb8325e6f283f58, ; 603: System.Diagnostics.TraceSource.dll => 33
	i64 u0xae01ab382ae67e39, ; 604: Xamarin.AndroidX.CardView.dll => 203
	i64 u0xae2d28465e8e1b2f, ; 605: System.IO.Compression => 46
	i64 u0xaff717f216a69537, ; 606: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0xaffc46fc178aec78, ; 607: it/Microsoft.Maui.Controls.resources.dll => 286
	i64 u0xb030a0b97091786b, ; 608: lib_System.Data.Common.dll.so => 22
	i64 u0xb03f76a3ad01c550, ; 609: System.Diagnostics.StackTrace.dll => 30
	i64 u0xb041653c70d157d3, ; 610: Xamarin.AndroidX.Collection => 204
	i64 u0xb05cbbf17d3ba3cb, ; 611: System.IO => 57
	i64 u0xb05f29e50e96e90c, ; 612: System.Text.Encoding.Extensions => 134
	i64 u0xb07c0a5786811679, ; 613: System.Runtime.Serialization.Xml.dll => 114
	i64 u0xb0de0092d77c6c21, ; 614: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 209
	i64 u0xb0febee04cf46c69, ; 615: Xamarin.AndroidX.Window => 258
	i64 u0xb1f75b85abe525e5, ; 616: th/Microsoft.Maui.Controls.resources.dll => 299
	i64 u0xb206e50e14d873cb, ; 617: Xamarin.Kotlin.StdLib.Jdk8.dll => 269
	i64 u0xb21ff0d5d6c0740f, ; 618: System.IO.Pipes => 55
	i64 u0xb23ca48abd74d61e, ; 619: Microsoft.Extensions.Primitives => 182
	i64 u0xb23e3d357debf39d, ; 620: System.AppContext.dll => 6
	i64 u0xb276539ce04f41da, ; 621: System.Net.WebHeaderCollection.dll => 77
	i64 u0xb2d74f25d9a0f23a, ; 622: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0xb2f554cdeac4961c, ; 623: lib_System.Security.Cryptography.Cng.dll.so => 120
	i64 u0xb33638c6c4c11a5b, ; 624: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0xb370b9dcb7112a08, ; 625: lib_System.Reflection.Emit.Lightweight.dll.so => 91
	i64 u0xb37726cae2e8ffa9, ; 626: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 217
	i64 u0xb3824afa6da52bd4, ; 627: lib_System.Net.WebSockets.Client.dll.so => 79
	i64 u0xb39be33e36e08b9b, ; 628: lib_System.Security.Principal.dll.so => 128
	i64 u0xb3e455065fe154fc, ; 629: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0xb3f3de897ed7de32, ; 630: lib_Mono.Android.Runtime.dll.so => 170
	i64 u0xb42a53aec5481c98, ; 631: Xamarin.AndroidX.CustomView.PoolingContainer => 214
	i64 u0xb51b44e3c0d8ce69, ; 632: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 290
	i64 u0xb55bc7a4eaa8b451, ; 633: System.Runtime.Serialization.Formatters.dll => 111
	i64 u0xb5d59abe8e6fef64, ; 634: LocalLibrary.dll => 0
	i64 u0xb5e5c6641eaa34ee, ; 635: lib_System.dll.so => 164
	i64 u0xb636d40db3fe65ba, ; 636: Xamarin.AndroidX.Emoji2.dll => 218
	i64 u0xb6d2ce32a8819924, ; 637: System.Runtime.CompilerServices.VisualC.dll => 102
	i64 u0xb74cc72d6ddf228f, ; 638: lib_Microsoft.Extensions.Options.dll.so => 181
	i64 u0xb74f2adb824cee3c, ; 639: lib_System.Runtime.Numerics.dll.so => 110
	i64 u0xb77c636bdebe318c, ; 640: ca/Microsoft.Maui.Controls.resources.dll => 273
	i64 u0xb78052679c1178b2, ; 641: ja/Microsoft.Maui.Controls.resources.dll => 287
	i64 u0xb791a8732de27dc6, ; 642: lib_System.IO.UnmanagedMemoryStream.dll.so => 56
	i64 u0xb92ee14d854f44c1, ; 643: Mono.Android.Runtime.dll => 170
	i64 u0xb98de304062ea945, ; 644: System.Runtime.Serialization => 115
	i64 u0xb9b2bdcdf9445b10, ; 645: lib_System.Threading.ThreadPool.dll.so => 146
	i64 u0xb9b4f9aaad3e94ad, ; 646: he\Microsoft.Maui.Controls.resources => 281
	i64 u0xb9cfedc6c7bb781f, ; 647: lib_System.Security.Cryptography.Encoding.dll.so => 122
	i64 u0xb9d1c6fc435e6e19, ; 648: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0xb9fb3b1193964ec1, ; 649: Xamarin.AndroidX.VectorDrawable.dll => 253
	i64 u0xba05cf0da4f6393e, ; 650: Xamarin.AndroidX.ConstraintLayout.Core => 208
	i64 u0xba663087f18829ff, ; 651: System.Net.WebClient => 76
	i64 u0xbab63e4543a86cec, ; 652: Xamarin.Google.Guava.ListenableFuture => 264
	i64 u0xbad8b1f3069e0548, ; 653: System.Private.DataContractSerialization.dll => 85
	i64 u0xbadf06394d106fcc, ; 654: Xamarin.Kotlin.StdLib => 266
	i64 u0xbae49573fde79792, ; 655: uk/Microsoft.Maui.Controls.resources.dll => 301
	i64 u0xbb3b7bc905569876, ; 656: Xamarin.AndroidX.Arch.Core.Runtime.dll => 201
	i64 u0xbbe82f6eede718c1, ; 657: vi\Microsoft.Maui.Controls.resources => 302
	i64 u0xbbfafc7174bc99d4, ; 658: id/Microsoft.Maui.Controls.resources.dll => 285
	i64 u0xbc5b0b19d99f543b, ; 659: Xamarin.AndroidX.RecyclerView.dll => 243
	i64 u0xbc706ce9fba5c261, ; 660: System.Xml.XPath => 160
	i64 u0xbc77450a277fbd01, ; 661: Microsoft.VisualBasic.Core.dll => 2
	i64 u0xbd080f9faa1acf73, ; 662: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 214
	i64 u0xbd670f48cb071df6, ; 663: System.Data.dll => 24
	i64 u0xbdc97404d0153e8d, ; 664: Xamarin.AndroidX.Activity.Ktx => 194
	i64 u0xbde4e789f9cfa65a, ; 665: lib_WindowsBase.dll.so => 165
	i64 u0xbe29821198fb6d98, ; 666: System.Diagnostics.Tools.dll => 32
	i64 u0xbe45e2e7d0b769e7, ; 667: System.Security.AccessControl.dll => 117
	i64 u0xbe4f8829f32b5737, ; 668: System.Dynamic.Runtime => 37
	i64 u0xbe5dfc2ef2f87d75, ; 669: System.ComponentModel.Primitives.dll => 16
	i64 u0xbe9c4db6abfd2b67, ; 670: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 175
	i64 u0xbee598c36b1b9678, ; 671: fr/Microsoft.Maui.Controls.resources.dll => 280
	i64 u0xbf14e6adb159cf57, ; 672: System.IO.IsolatedStorage => 52
	i64 u0xbf9db98a93a66647, ; 673: lib_System.Web.HttpUtility.dll.so => 152
	i64 u0xbfb6c49664b43aad, ; 674: hr/Microsoft.Maui.Controls.resources.dll => 283
	i64 u0xbfe8c733724e1993, ; 675: Xamarin.Kotlin.StdLib.Common => 267
	i64 u0xc08bac4939ed2f33, ; 676: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc0a5f3cade5c6774, ; 677: System.Console.dll => 20
	i64 u0xc10614107d976168, ; 678: lib_Xamarin.AndroidX.DocumentFile.dll.so => 215
	i64 u0xc10e975ec1226bce, ; 679: System.Security.Cryptography.OpenSsl.dll => 123
	i64 u0xc14bc67b8bba9714, ; 680: System.Windows.dll => 154
	i64 u0xc161905bed1ba7cc, ; 681: lib-es-Microsoft.Maui.Controls.resources.dll.so => 278
	i64 u0xc186c091b44a29b1, ; 682: lib_System.Private.Uri.dll.so => 86
	i64 u0xc1b8989a7ad20fb0, ; 683: Xamarin.AndroidX.Fragment => 221
	i64 u0xc1d7a2eaf799aaae, ; 684: lib_System.Net.WebHeaderCollection.dll.so => 77
	i64 u0xc201db1c6b2979a3, ; 685: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 191
	i64 u0xc2951492a9d8aee3, ; 686: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 211
	i64 u0xc355a25647c5965c, ; 687: System.ServiceModel.Web.dll => 131
	i64 u0xc3af43cd0cff89e4, ; 688: da/Microsoft.Maui.Controls.resources.dll => 275
	i64 u0xc405fd76067d19e1, ; 689: Xamarin.AndroidX.CardView => 203
	i64 u0xc407bafdbc707a9e, ; 690: System.Threading.dll => 148
	i64 u0xc48c72eb8a28859d, ; 691: lib_System.Runtime.Serialization.Formatters.dll.so => 111
	i64 u0xc4c28f6f75511df4, ; 692: Xamarin.Android.Glide.Annotations.dll => 190
	i64 u0xc53b89d4a4518272, ; 693: System.Security.Cryptography.Cng.dll => 120
	i64 u0xc559bfe1def019d9, ; 694: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xc56dfc07c396a221, ; 695: lib_System.Xml.XmlDocument.dll.so => 161
	i64 u0xc56e43f6938e2a74, ; 696: System.ServiceProcess => 132
	i64 u0xc57aaafc21cb40ea, ; 697: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 259
	i64 u0xc5824de7789ba78d, ; 698: System.Resources.Writer.dll => 100
	i64 u0xc5ab44febd78c687, ; 699: lib_System.Net.Requests.dll.so => 72
	i64 u0xc5d26c4442d66545, ; 700: System.Text.Encoding.Extensions.dll => 134
	i64 u0xc5d86b758c86e80d, ; 701: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 294
	i64 u0xc5e982f274ae0dec, ; 702: Xamarin.AndroidX.Print => 241
	i64 u0xc66d93a217f4e840, ; 703: System.Web.dll => 153
	i64 u0xc6d632d338eb4d7e, ; 704: System.Reflection.dll => 97
	i64 u0xc6d63f9253cade73, ; 705: System.Security.Cryptography.X509Certificates => 125
	i64 u0xc6e48607a2f7954a, ; 706: Xamarin.Android.Glide.DiskLruCache.dll => 191
	i64 u0xc710239616713d51, ; 707: lib_System.Runtime.Serialization.dll.so => 115
	i64 u0xc718a920f3686f26, ; 708: System.Net.Ping.dll => 69
	i64 u0xc79618c16c771347, ; 709: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 237
	i64 u0xc7b8951775fab67f, ; 710: lib_System.Security.Cryptography.Csp.dll.so => 121
	i64 u0xc8afd8683afdece6, ; 711: System.Net.Requests.dll => 72
	i64 u0xc8bbc80dcb1e5ea1, ; 712: ru\Microsoft.Maui.Controls.resources => 296
	i64 u0xc90af44707469e88, ; 713: Xamarin.AndroidX.Lifecycle.LiveData => 226
	i64 u0xc92b2913e18d5d24, ; 714: Xamarin.AndroidX.ResourceInspection.Annotation => 244
	i64 u0xc94468023892e420, ; 715: lib_System.Xml.dll.so => 163
	i64 u0xc98b12295c2cf45a, ; 716: el/Microsoft.Maui.Controls.resources.dll => 277
	i64 u0xc9a9d89d612a8966, ; 717: lib_System.Reflection.Primitives.dll.so => 95
	i64 u0xc9f22c50f1b8fbc4, ; 718: System.Text.Encodings.Web.dll => 136
	i64 u0xca14e3428abb8d96, ; 719: System.Security.Cryptography.Primitives.dll => 124
	i64 u0xca1df0e8913a2627, ; 720: lib_Microsoft.Maui.dll.so => 186
	i64 u0xca41d1d72ec783e2, ; 721: System.Net.Quic => 71
	i64 u0xca4bcc310888d2ca, ; 722: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 226
	i64 u0xcaebef2458cc85ea, ; 723: System.Runtime.Serialization.Formatters => 111
	i64 u0xcb1ea5bbe76a987f, ; 724: lib_System.Security.Cryptography.Algorithms.dll.so => 119
	i64 u0xcb3b7ecfcfd4db8e, ; 725: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 298
	i64 u0xcb3b815e37daeff2, ; 726: Xamarin.AndroidX.LocalBroadcastManager.dll => 236
	i64 u0xcb9385ceb3993c03, ; 727: Microsoft.Extensions.DependencyInjection.dll => 176
	i64 u0xcbe0dd1ca5233daf, ; 728: System.Web.HttpUtility => 152
	i64 u0xcbf53f353155b054, ; 729: lib_System.Console.dll.so => 20
	i64 u0xcc1316c7b0fb5431, ; 730: ko\Microsoft.Maui.Controls.resources => 288
	i64 u0xcc9d89d004439a4a, ; 731: zh-Hans\Microsoft.Maui.Controls.resources => 304
	i64 u0xccc2eb690f1a77b2, ; 732: lib_System.Runtime.Extensions.dll.so => 103
	i64 u0xcd1469352e1d1f31, ; 733: lib_System.Linq.Expressions.dll.so => 58
	i64 u0xcd1ca695825b5219, ; 734: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 200
	i64 u0xcd47f79af9c15ea6, ; 735: Xamarin.Google.Guava.ListenableFuture.dll => 264
	i64 u0xcd87723decf00dd8, ; 736: lib_System.Security.Cryptography.Primitives.dll.so => 124
	i64 u0xcdb6cf2438a996bd, ; 737: lib_System.Configuration.dll.so => 19
	i64 u0xcdd816ef5d6e873a, ; 738: System.Security.Claims => 118
	i64 u0xce1ebc6625a76d0a, ; 739: Xamarin.AndroidX.CursorAdapter.dll => 212
	i64 u0xcea391d0969961ce, ; 740: GoogleGson.dll => 173
	i64 u0xceab0e490a083a65, ; 741: zh-Hant/Microsoft.Maui.Controls.resources.dll => 305
	i64 u0xced5ca2604cb2815, ; 742: ar\Microsoft.Maui.Controls.resources => 272
	i64 u0xcef2de7759506add, ; 743: System.Security.Principal.Windows => 127
	i64 u0xcf4655b160b702b2, ; 744: System.Text.Encoding.CodePages.dll => 133
	i64 u0xcf8a8a895a82ecef, ; 745: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 177
	i64 u0xcff5302fe54ff34f, ; 746: System.Net.WebHeaderCollection => 77
	i64 u0xcfff1ba06622494c, ; 747: System.IO.Compression.dll => 46
	i64 u0xd000d1d307cddbcc, ; 748: Xamarin.AndroidX.DocumentFile => 215
	i64 u0xd0608bd33642dc64, ; 749: System.Net.Security.dll => 73
	i64 u0xd0831743ebf0f4a6, ; 750: System.Net.Http.Json => 63
	i64 u0xd0ad866be10e0a7b, ; 751: lib_Xamarin.AndroidX.CustomView.dll.so => 213
	i64 u0xd127060e7a18a96b, ; 752: System.Resources.Reader.dll => 98
	i64 u0xd13b0d8c1620662c, ; 753: System.ObjectModel.dll => 84
	i64 u0xd19ce0fb0775ddcb, ; 754: lib_Microsoft.Maui.Controls.dll.so => 184
	i64 u0xd1b737f831192f66, ; 755: ms\Microsoft.Maui.Controls.resources => 289
	i64 u0xd1c3ed1c1bc467d2, ; 756: System.IO.Compression.Brotli.dll => 43
	i64 u0xd204f0a9127dd9d7, ; 757: System.Linq.dll => 61
	i64 u0xd2424150783c3149, ; 758: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 242
	i64 u0xd3512d3999b8e9d5, ; 759: Microsoft.Extensions.Configuration.Abstractions.dll => 175
	i64 u0xd36cd580c5be8a8b, ; 760: System.Dynamic.Runtime.dll => 37
	i64 u0xd3a489469852174e, ; 761: System.Globalization.Calendars.dll => 40
	i64 u0xd3f251b2fb4edfac, ; 762: Xamarin.AndroidX.Collection.Ktx => 205
	i64 u0xd40b704b1c4c96f4, ; 763: Xamarin.KotlinX.Coroutines.Android.dll => 270
	i64 u0xd452879d55019bdf, ; 764: System.Xml.XPath.dll => 160
	i64 u0xd4dd2b839286f27c, ; 765: System.Resources.Reader => 98
	i64 u0xd54e65a72c560bea, ; 766: Xamarin.AndroidX.Core.dll => 210
	i64 u0xd59a58c406411f89, ; 767: Microsoft.Extensions.DependencyInjection.Abstractions => 177
	i64 u0xd5c92c3a30bb227d, ; 768: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 177
	i64 u0xd6bf2d43f7eca27b, ; 769: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0xd77a12fc26de2cbc, ; 770: System.Text.Encoding.dll => 135
	i64 u0xd77dbb1e38cd3d6f, ; 771: System.Console => 20
	i64 u0xd7874bacc9fdb348, ; 772: System.Net.HttpListener.dll => 65
	i64 u0xd79cab34eec75bde, ; 773: de\Microsoft.Maui.Controls.resources => 276
	i64 u0xd7afc292e8d49286, ; 774: System.Security.Cryptography.X509Certificates.dll => 125
	i64 u0xd7de0de3fde6f74a, ; 775: lib_Microsoft.Extensions.Logging.dll.so => 178
	i64 u0xd7e790fe7a6dc536, ; 776: System.Net.Sockets => 75
	i64 u0xd841015ed86f6aab, ; 777: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 234
	i64 u0xd89e9cf3334914ea, ; 778: System.dll => 164
	i64 u0xd924e2f46546f5cd, ; 779: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 289
	i64 u0xd92805370debdca8, ; 780: lib_System.Threading.Thread.dll.so => 145
	i64 u0xd9578647d4bfb1fc, ; 781: System.Xml.ReaderWriter.dll => 156
	i64 u0xd962f9b2b6ecd51c, ; 782: de/Microsoft.Maui.Controls.resources.dll => 276
	i64 u0xda058a3f5d096c6d, ; 783: Microsoft.Win32.Registry => 5
	i64 u0xda7b09450ae4ef6a, ; 784: hu/Microsoft.Maui.Controls.resources.dll => 284
	i64 u0xdaa64fcbde529bf2, ; 785: System.IO.FileSystem.Primitives => 49
	i64 u0xdad3cdb28b82e735, ; 786: lib_System.ServiceProcess.dll.so => 132
	i64 u0xdaf51d99d77eb47b, ; 787: Xamarin.AndroidX.SlidingPaneLayout.dll => 248
	i64 u0xdb0accd674b1c484, ; 788: el\Microsoft.Maui.Controls.resources => 277
	i64 u0xdb8201e29086ac8b, ; 789: System.Threading.Tasks.dll => 144
	i64 u0xdb9930e5124a2dcb, ; 790: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 255
	i64 u0xdbe519c6bac61db5, ; 791: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xdbec27e8f35f8e27, ; 792: System.Threading.Channels.dll => 139
	i64 u0xdbf387abc6c725f8, ; 793: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0xdc3ebcae7722b2a7, ; 794: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 234
	i64 u0xdc5cad0bb2aea269, ; 795: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 247
	i64 u0xdc75800bd0b6eaaa, ; 796: System.Resources.Writer => 100
	i64 u0xdcc2b8478c387d7d, ; 797: lib_Xamarin.AndroidX.Loader.dll.so => 235
	i64 u0xdd0d79d32c2eec06, ; 798: Microsoft.Maui.Controls.Compatibility => 183
	i64 u0xdd2129868f45a21d, ; 799: System.Security.Cryptography.OpenSsl => 123
	i64 u0xdd2c465197c97e59, ; 800: System.Security.Cryptography.Cng => 120
	i64 u0xdd6f6a25d983a7f4, ; 801: lib_System.IO.Compression.dll.so => 46
	i64 u0xdd893616f748b56d, ; 802: System.Threading.Tasks.Extensions => 142
	i64 u0xdda6ce5592a9677f, ; 803: System.Formats.Tar.dll => 39
	i64 u0xde4d54a020caa8a5, ; 804: System.Net.NetworkInformation.dll => 68
	i64 u0xdecceb47319bdadf, ; 805: System.Globalization.Extensions => 41
	i64 u0xdedd445169cf2a5a, ; 806: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 236
	i64 u0xdf3a48eecac80a96, ; 807: lib_System.Xml.Linq.dll.so => 155
	i64 u0xe03056ea4e39aa26, ; 808: System => 164
	i64 u0xe1177575db7c781a, ; 809: System.Net.Security => 73
	i64 u0xe155c458e72d9332, ; 810: lib_System.Net.Sockets.dll.so => 75
	i64 u0xe20d9cb300c12d5f, ; 811: nb\Microsoft.Maui.Controls.resources => 290
	i64 u0xe26c3ceb1e8d821d, ; 812: WindowsBase.dll => 165
	i64 u0xe2806c487e7b0bbb, ; 813: Microsoft.Extensions.Logging.Abstractions.dll => 179
	i64 u0xe2b8b9cdc3aa638e, ; 814: System.Security.Principal.Windows.dll => 127
	i64 u0xe307640e62a276e0, ; 815: lib_System.Threading.Tasks.Dataflow.dll.so => 141
	i64 u0xe3114406a52f1e84, ; 816: Xamarin.AndroidX.ExifInterface.dll => 220
	i64 u0xe3b8523513c22623, ; 817: lib_System.Resources.Writer.dll.so => 100
	i64 u0xe3ea453135e5c19b, ; 818: Xamarin.Kotlin.StdLib.Jdk8 => 269
	i64 u0xe459fb756d988f77, ; 819: System.Net.NetworkInformation => 68
	i64 u0xe4f04b741db987ce, ; 820: Mono.Android.Export.dll => 169
	i64 u0xe62d51b958f62126, ; 821: lib_System.Text.Encoding.CodePages.dll.so => 133
	i64 u0xe63a6e214f2a71a1, ; 822: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 233
	i64 u0xe6aa2caf87dedbfa, ; 823: Xamarin.AndroidX.ConstraintLayout => 207
	i64 u0xe70da84600bb4e86, ; 824: Microsoft.Maui.Graphics => 188
	i64 u0xe74116621b0ca1a3, ; 825: lib-da-Microsoft.Maui.Controls.resources.dll.so => 275
	i64 u0xe75359ee6ef720e9, ; 826: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 249
	i64 u0xe758a29f820adc6c, ; 827: lib_System.Globalization.dll.so => 42
	i64 u0xe771bb8960dd8b46, ; 828: Xamarin.AndroidX.Navigation.UI => 240
	i64 u0xe780233072c1f4a8, ; 829: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 291
	i64 u0xe7cbbde0b0e6d3ee, ; 830: System.ValueTuple => 151
	i64 u0xe7e4118e32240a3c, ; 831: System.IO.Compression.ZipFile => 45
	i64 u0xe848a3736f733137, ; 832: System.Runtime.Intrinsics => 108
	i64 u0xe84f88926a46bc7d, ; 833: lib_System.Runtime.Loader.dll.so => 109
	i64 u0xe89179af15740e49, ; 834: System.IO.FileSystem.DriveInfo => 48
	i64 u0xe8a15e7d0d927add, ; 835: System.Reflection.TypeExtensions => 96
	i64 u0xe8a94c621bfe717e, ; 836: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe92f4eea72342d39, ; 837: lib_Xamarin.AndroidX.Browser.dll.so => 202
	i64 u0xe94761a5e8bc661e, ; 838: lib_System.Private.DataContractSerialization.dll.so => 85
	i64 u0xe975ec07bb5412aa, ; 839: System.Data.DataSetExtensions => 23
	i64 u0xe99c30c1484d7f4f, ; 840: mscorlib => 166
	i64 u0xe99f142dfcaa70f8, ; 841: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 292
	i64 u0xe9ecc87060889373, ; 842: System.Data.Common.dll => 22
	i64 u0xea17dab2d1695e61, ; 843: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 244
	i64 u0xea66700587f088f9, ; 844: System.Text.RegularExpressions.dll => 138
	i64 u0xeb018187f0f3b4b0, ; 845: System.Net.WebProxy.dll => 78
	i64 u0xeb20acb622a01a67, ; 846: sk\Microsoft.Maui.Controls.resources => 297
	i64 u0xeb428681415463bf, ; 847: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xeb46c4d6ba5dae9b, ; 848: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 242
	i64 u0xeb9dcda2851b905e, ; 849: System.IO.Pipes.AccessControl => 54
	i64 u0xebc52084add25bb8, ; 850: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 233
	i64 u0xebe54bb02d623e5d, ; 851: Xamarin.AndroidX.Navigation.Fragment => 238
	i64 u0xec090a90408c8cd4, ; 852: System.Collections.NonGeneric => 10
	i64 u0xec33471bf3a21ba4, ; 853: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0xec44a31d250e5fa1, ; 854: Xamarin.AndroidX.Annotation.Experimental.dll => 196
	i64 u0xec5b843380a769fb, ; 855: Xamarin.AndroidX.Navigation.Common.dll => 237
	i64 u0xec704b8e0a78fc1b, ; 856: Xamarin.AndroidX.Legacy.Support.Core.Utils => 224
	i64 u0xec755f52d4e2be4b, ; 857: lib_System.Text.Encodings.Web.dll.so => 136
	i64 u0xecc8e986518c9786, ; 858: System.ComponentModel.Primitives => 16
	i64 u0xed285aeb25888c7c, ; 859: zh-Hans/Microsoft.Maui.Controls.resources.dll => 304
	i64 u0xed8ff6060fc420b2, ; 860: System.Threading.Channels => 139
	i64 u0xee8575ff9aa89142, ; 861: System.ComponentModel.Annotations.dll => 13
	i64 u0xee9d2d9832194671, ; 862: lib_System.Reflection.DispatchProxy.dll.so => 89
	i64 u0xeeb76534d96c16c1, ; 863: System.ComponentModel.EventBasedAsync => 15
	i64 u0xeeba6e30627428fe, ; 864: System.Security.Cryptography.Encoding.dll => 122
	i64 u0xef1fd1b5c7a72d28, ; 865: System.Private.Xml.Linq => 87
	i64 u0xef2c3ef5e11d511b, ; 866: System.Transactions.Local.dll => 149
	i64 u0xef8a5543bba6bc76, ; 867: System.Data.Common => 22
	i64 u0xeffe9329db975af4, ; 868: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 300
	i64 u0xf08c12c5bb8b920b, ; 869: System.Diagnostics.Tracing.dll => 34
	i64 u0xf09e528d5c6da122, ; 870: System.Net.WebSockets.Client.dll => 79
	i64 u0xf0add33f97ecc211, ; 871: hi\Microsoft.Maui.Controls.resources => 282
	i64 u0xf0ec5a52686b9f66, ; 872: Xamarin.Google.Crypto.Tink.Android => 262
	i64 u0xf200c3fe308d7847, ; 873: sk/Microsoft.Maui.Controls.resources.dll => 297
	i64 u0xf27347c8d0d5709f, ; 874: System.Threading.Timer => 147
	i64 u0xf2fed1534ea67439, ; 875: System.Net.WebSockets.dll => 80
	i64 u0xf311be9c6f341f45, ; 876: fr\Microsoft.Maui.Controls.resources => 280
	i64 u0xf32cc03d27a5bf25, ; 877: GoogleGson => 173
	i64 u0xf3885cd1833e207f, ; 878: lib_System.Runtime.InteropServices.dll.so => 107
	i64 u0xf3f1e30b1b682baf, ; 879: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 233
	i64 u0xf4068fce7d736c3b, ; 880: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 273
	i64 u0xf41dea67fcfda58f, ; 881: Xamarin.Android.Glide => 189
	i64 u0xf492db79dfbef661, ; 882: pl\Microsoft.Maui.Controls.resources => 292
	i64 u0xf4a176498a351f4e, ; 883: System.Globalization => 42
	i64 u0xf571038fafa74828, ; 884: System.Diagnostics.Debug.dll => 26
	i64 u0xf5abfef008ae1846, ; 885: zh-HK/Microsoft.Maui.Controls.resources.dll => 303
	i64 u0xf5b1dfc36cac272b, ; 886: Xamarin.AndroidX.Loader => 235
	i64 u0xf5c6c68c9e45303b, ; 887: Xamarin.AndroidX.Lifecycle.ViewModel => 232
	i64 u0xf5d00bdc38bd3de0, ; 888: System.Runtime.InteropServices.dll => 107
	i64 u0xf5d67cd3b5578c4d, ; 889: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 280
	i64 u0xf5e74efde9e334b5, ; 890: lib-it-Microsoft.Maui.Controls.resources.dll.so => 286
	i64 u0xf5e7d4e2aba88859, ; 891: lib_System.Linq.dll.so => 61
	i64 u0xf62f74abd6e2aa95, ; 892: lib_System.IO.dll.so => 57
	i64 u0xf63e63f2e2abf4bc, ; 893: lib-de-Microsoft.Maui.Controls.resources.dll.so => 276
	i64 u0xf6b7a5b72419c0eb, ; 894: System.Runtime.Numerics.dll => 110
	i64 u0xf720340ebed54467, ; 895: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xf78faeb0f5bf3ee9, ; 896: System.Buffers.dll => 7
	i64 u0xf84accff6fb52a16, ; 897: Xamarin.Jetbrains.Annotations => 265
	i64 u0xf8ce18a0b24011cb, ; 898: System.IO.Compression.FileSystem.dll => 44
	i64 u0xf9b18c0ffc6eacc5, ; 899: System.Xml.XmlDocument.dll => 161
	i64 u0xf9b71009fb4b9c08, ; 900: lib_System.ServiceModel.Web.dll.so => 131
	i64 u0xf9f51fea641b8803, ; 901: lib_System.Threading.Channels.dll.so => 139
	i64 u0xfa28e87b91334681, ; 902: System.Threading => 148
	i64 u0xfb2e95b53ad977d1, ; 903: nl/Microsoft.Maui.Controls.resources.dll => 291
	i64 u0xfb4557d3b7d0211c, ; 904: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 302
	i64 u0xfb695bd036cb632b, ; 905: Xamarin.AndroidX.Arch.Core.Runtime => 201
	i64 u0xfb7ada42d3d42cf8, ; 906: Xamarin.AndroidX.Navigation.Common => 237
	i64 u0xfbd50176eb22c574, ; 907: System.Formats.Asn1.dll => 38
	i64 u0xfbd66d08820117b6, ; 908: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xfbd88d989b06fccc, ; 909: lib_Microsoft.Extensions.DependencyInjection.dll.so => 176
	i64 u0xfc0568e7ea16ac83, ; 910: lib_Xamarin.AndroidX.ViewPager.dll.so => 256
	i64 u0xfcec6af3cff4a49b, ; 911: System.Threading.ThreadPool.dll => 146
	i64 u0xfd3620327d587182, ; 912: System.Collections.Concurrent.dll => 8
	i64 u0xfd6b623bde35f3e7, ; 913: Xamarin.AndroidX.Emoji2 => 218
	i64 u0xfe08e7c2d8c199ff, ; 914: Xamarin.AndroidX.Navigation.Runtime.dll => 239
	i64 u0xfe39a097c37fa8b0, ; 915: System.Security.dll => 130
	i64 u0xfe4c81ff0a56ab57, ; 916: it\Microsoft.Maui.Controls.resources => 286
	i64 u0xfeb06e0fe10b2b18, ; 917: lib_System.Runtime.InteropServices.JavaScript.dll.so => 105
	i64 u0xff0859bd51b8dce5, ; 918: lib_Xamarin.AndroidX.Core.dll.so => 210
	i64 u0xff1387fe3e7b7838, ; 919: Xamarin.AndroidX.VersionedParcelable => 255
	i64 u0xffe4df6e2ee1c786 ; 920: System.Reflection.Metadata.dll => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [921 x i32] [
	i32 217, i32 12, i32 182, i32 212, i32 171, i32 187, i32 58, i32 204,
	i32 160, i32 223, i32 151, i32 245, i32 13, i32 248, i32 266, i32 211,
	i32 198, i32 267, i32 132, i32 194, i32 56, i32 114, i32 247, i32 220,
	i32 35, i32 279, i32 95, i32 168, i32 230, i32 129, i32 219, i32 282,
	i32 145, i32 205, i32 18, i32 29, i32 282, i32 21, i32 216, i32 231,
	i32 53, i32 150, i32 232, i32 104, i32 95, i32 274, i32 156, i32 264,
	i32 296, i32 260, i32 290, i32 246, i32 15, i32 36, i32 48, i32 28,
	i32 200, i32 238, i32 104, i32 50, i32 18, i32 115, i32 113, i32 70,
	i32 184, i32 65, i32 170, i32 145, i32 98, i32 288, i32 259, i32 283,
	i32 199, i32 234, i32 224, i32 88, i32 40, i32 284, i32 89, i32 138,
	i32 81, i32 66, i32 62, i32 86, i32 172, i32 198, i32 106, i32 278,
	i32 245, i32 102, i32 54, i32 35, i32 195, i32 229, i32 300, i32 247,
	i32 185, i32 300, i32 119, i32 232, i32 274, i32 292, i32 142, i32 130,
	i32 141, i32 268, i32 157, i32 53, i32 35, i32 141, i32 192, i32 202,
	i32 180, i32 279, i32 216, i32 135, i32 8, i32 14, i32 296, i32 92,
	i32 244, i32 51, i32 227, i32 136, i32 101, i32 63, i32 209, i32 254,
	i32 116, i32 69, i32 205, i32 193, i32 163, i32 299, i32 127, i32 166,
	i32 67, i32 143, i32 221, i32 176, i32 274, i32 80, i32 101, i32 149,
	i32 249, i32 117, i32 123, i32 279, i32 166, i32 261, i32 187, i32 281,
	i32 134, i32 299, i32 243, i32 78, i32 260, i32 112, i32 208, i32 114,
	i32 121, i32 48, i32 27, i32 128, i32 129, i32 225, i32 196, i32 82,
	i32 110, i32 75, i32 272, i32 271, i32 301, i32 81, i32 187, i32 53,
	i32 251, i32 174, i32 69, i32 250, i32 261, i32 83, i32 269, i32 172,
	i32 294, i32 116, i32 76, i32 305, i32 175, i32 156, i32 40, i32 174,
	i32 190, i32 265, i32 162, i32 167, i32 243, i32 217, i32 0, i32 178,
	i32 32, i32 185, i32 84, i32 122, i32 72, i32 62, i32 222, i32 240,
	i32 288, i32 161, i32 113, i32 88, i32 183, i32 305, i32 49, i32 105,
	i32 18, i32 125, i32 146, i32 118, i32 218, i32 58, i32 211, i32 17,
	i32 52, i32 43, i32 92, i32 302, i32 203, i32 55, i32 254, i32 129,
	i32 182, i32 152, i32 41, i32 9, i32 271, i32 92, i32 39, i32 51,
	i32 255, i32 50, i32 272, i32 150, i32 137, i32 268, i32 162, i32 214,
	i32 13, i32 229, i32 193, i32 250, i32 36, i32 67, i32 109, i32 1,
	i32 174, i32 239, i32 73, i32 194, i32 99, i32 99, i32 11, i32 147,
	i32 67, i32 148, i32 11, i32 236, i32 25, i32 189, i32 38, i32 128,
	i32 101, i32 76, i32 228, i32 109, i32 303, i32 254, i32 183, i32 252,
	i32 106, i32 169, i32 2, i32 2, i32 26, i32 207, i32 157, i32 298,
	i32 21, i32 301, i32 49, i32 43, i32 126, i32 197, i32 59, i32 4,
	i32 245, i32 33, i32 87, i32 119, i32 227, i32 257, i32 206, i32 220,
	i32 206, i32 3, i32 226, i32 11, i32 293, i32 246, i32 38, i32 124,
	i32 231, i32 295, i32 246, i32 297, i32 295, i32 295, i32 55, i32 137,
	i32 149, i32 62, i32 85, i32 90, i32 144, i32 230, i32 306, i32 227,
	i32 283, i32 202, i32 270, i32 197, i32 213, i32 258, i32 201, i32 181,
	i32 277, i32 263, i32 228, i32 133, i32 96, i32 59, i32 3, i32 291,
	i32 105, i32 294, i32 33, i32 250, i32 154, i32 158, i32 251, i32 159,
	i32 285, i32 155, i32 82, i32 230, i32 30, i32 222, i32 252, i32 143,
	i32 87, i32 19, i32 223, i32 51, i32 257, i32 192, i32 298, i32 117,
	i32 224, i32 61, i32 54, i32 4, i32 97, i32 191, i32 60, i32 17,
	i32 31, i32 0, i32 142, i32 155, i32 84, i32 108, i32 99, i32 29,
	i32 45, i32 64, i32 64, i32 66, i32 289, i32 151, i32 172, i32 231,
	i32 1, i32 266, i32 47, i32 93, i32 24, i32 199, i32 44, i32 190,
	i32 71, i32 188, i32 158, i32 165, i32 108, i32 12, i32 225, i32 63,
	i32 27, i32 23, i32 93, i32 45, i32 173, i32 168, i32 12, i32 270,
	i32 263, i32 188, i32 29, i32 241, i32 103, i32 14, i32 126, i32 208,
	i32 240, i32 91, i32 96, i32 229, i32 179, i32 9, i32 86, i32 193,
	i32 219, i32 252, i32 293, i32 71, i32 168, i32 1, i32 239, i32 195,
	i32 5, i32 293, i32 44, i32 37, i32 27, i32 66, i32 267, i32 158,
	i32 242, i32 112, i32 216, i32 207, i32 303, i32 260, i32 121, i32 262,
	i32 82, i32 257, i32 198, i32 70, i32 228, i32 159, i32 65, i32 68,
	i32 131, i32 262, i32 57, i32 138, i32 83, i32 30, i32 209, i32 10,
	i32 259, i32 171, i32 206, i32 150, i32 94, i32 219, i32 60, i32 186,
	i32 157, i32 278, i32 248, i32 180, i32 64, i32 88, i32 154, i32 79,
	i32 47, i32 184, i32 143, i32 90, i32 275, i32 225, i32 268, i32 213,
	i32 74, i32 91, i32 265, i32 304, i32 135, i32 90, i32 251, i32 271,
	i32 5, i32 210, i32 204, i32 118, i32 273, i32 52, i32 112, i32 42,
	i32 159, i32 4, i32 25, i32 103, i32 126, i32 70, i32 167, i32 60,
	i32 39, i32 200, i32 94, i32 153, i32 56, i32 34, i32 179, i32 186,
	i32 197, i32 21, i32 163, i32 97, i32 263, i32 284, i32 261, i32 306,
	i32 256, i32 140, i32 287, i32 181, i32 89, i32 238, i32 80, i32 147,
	i32 50, i32 212, i32 162, i32 241, i32 6, i32 169, i32 31, i32 78,
	i32 107, i32 222, i32 285, i32 256, i32 178, i32 195, i32 249, i32 167,
	i32 223, i32 140, i32 106, i32 281, i32 59, i32 144, i32 287, i32 83,
	i32 192, i32 36, i32 6, i32 24, i32 81, i32 171, i32 74, i32 130,
	i32 153, i32 25, i32 116, i32 7, i32 93, i32 253, i32 137, i32 185,
	i32 189, i32 113, i32 180, i32 9, i32 258, i32 74, i32 104, i32 19,
	i32 102, i32 140, i32 221, i32 7, i32 235, i32 41, i32 306, i32 199,
	i32 253, i32 196, i32 215, i32 33, i32 203, i32 46, i32 3, i32 286,
	i32 22, i32 30, i32 204, i32 57, i32 134, i32 114, i32 209, i32 258,
	i32 299, i32 269, i32 55, i32 182, i32 6, i32 77, i32 16, i32 120,
	i32 10, i32 91, i32 217, i32 79, i32 128, i32 34, i32 170, i32 214,
	i32 290, i32 111, i32 0, i32 164, i32 218, i32 102, i32 181, i32 110,
	i32 273, i32 287, i32 56, i32 170, i32 115, i32 146, i32 281, i32 122,
	i32 14, i32 253, i32 208, i32 76, i32 264, i32 85, i32 266, i32 301,
	i32 201, i32 302, i32 285, i32 243, i32 160, i32 2, i32 214, i32 24,
	i32 194, i32 165, i32 32, i32 117, i32 37, i32 16, i32 175, i32 280,
	i32 52, i32 152, i32 283, i32 267, i32 17, i32 20, i32 215, i32 123,
	i32 154, i32 278, i32 86, i32 221, i32 77, i32 191, i32 211, i32 131,
	i32 275, i32 203, i32 148, i32 111, i32 190, i32 120, i32 28, i32 161,
	i32 132, i32 259, i32 100, i32 72, i32 134, i32 294, i32 241, i32 153,
	i32 97, i32 125, i32 191, i32 115, i32 69, i32 237, i32 121, i32 72,
	i32 296, i32 226, i32 244, i32 163, i32 277, i32 95, i32 136, i32 124,
	i32 186, i32 71, i32 226, i32 111, i32 119, i32 298, i32 236, i32 176,
	i32 152, i32 20, i32 288, i32 304, i32 103, i32 58, i32 200, i32 264,
	i32 124, i32 19, i32 118, i32 212, i32 173, i32 305, i32 272, i32 127,
	i32 133, i32 177, i32 77, i32 46, i32 215, i32 73, i32 63, i32 213,
	i32 98, i32 84, i32 184, i32 289, i32 43, i32 61, i32 242, i32 175,
	i32 37, i32 40, i32 205, i32 270, i32 160, i32 98, i32 210, i32 177,
	i32 177, i32 8, i32 135, i32 20, i32 65, i32 276, i32 125, i32 178,
	i32 75, i32 234, i32 164, i32 289, i32 145, i32 156, i32 276, i32 5,
	i32 284, i32 49, i32 132, i32 248, i32 277, i32 144, i32 255, i32 47,
	i32 139, i32 32, i32 234, i32 247, i32 100, i32 235, i32 183, i32 123,
	i32 120, i32 46, i32 142, i32 39, i32 68, i32 41, i32 236, i32 155,
	i32 164, i32 73, i32 75, i32 290, i32 165, i32 179, i32 127, i32 141,
	i32 220, i32 100, i32 269, i32 68, i32 169, i32 133, i32 233, i32 207,
	i32 188, i32 275, i32 249, i32 42, i32 240, i32 291, i32 151, i32 45,
	i32 108, i32 109, i32 48, i32 96, i32 31, i32 202, i32 85, i32 23,
	i32 166, i32 292, i32 22, i32 244, i32 138, i32 78, i32 297, i32 26,
	i32 242, i32 54, i32 233, i32 238, i32 10, i32 28, i32 196, i32 237,
	i32 224, i32 136, i32 16, i32 304, i32 139, i32 13, i32 89, i32 15,
	i32 122, i32 87, i32 149, i32 22, i32 300, i32 34, i32 79, i32 282,
	i32 262, i32 297, i32 147, i32 80, i32 280, i32 173, i32 107, i32 233,
	i32 273, i32 189, i32 292, i32 42, i32 26, i32 303, i32 235, i32 232,
	i32 107, i32 280, i32 286, i32 61, i32 57, i32 276, i32 110, i32 23,
	i32 7, i32 265, i32 44, i32 161, i32 131, i32 139, i32 148, i32 291,
	i32 302, i32 201, i32 237, i32 38, i32 15, i32 176, i32 256, i32 146,
	i32 8, i32 218, i32 239, i32 130, i32 286, i32 105, i32 210, i32 255,
	i32 94
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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/9.0.1xx-preview3 @ 4909500e254449c96975a830f6a91f7aa1568b5e"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
