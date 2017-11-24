
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern MWArray
{
  .publickeytoken = (E1 D8 4A 0D A1 9D B8 6F )                         // ..J....o
  .ver 2:11:1:0
}
.assembly AccelerateNew
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .publickey = (00 24 00 00 04 80 00 00 94 00 00 00 06 02 00 00   // .$..............
                00 24 00 00 52 53 41 31 00 04 00 00 01 00 01 00   // .$..RSA1........
                C1 F0 6C 0C CA A2 9E 7A 79 97 5D 2D 26 C7 61 75   // ..l....zy.]-&.au
                30 B2 7B 62 29 0F CA FD B0 10 96 E7 DF 81 50 ED   // 0.{b).........P.
                A3 9D 4D 27 A7 01 5B 39 2C 4B 81 0F A6 79 3D EB   // ..M'..[9,K...y=.
                64 2C 73 6F E3 5D 7A 5F E7 82 47 A3 7A 73 30 BB   // d,so.]z_..G.zs0.
                87 D1 CF 7C EC 30 EE 26 A5 7E 77 A2 D6 94 B9 E4   // ...|.0.&.~w.....
                F5 7A 64 96 E5 99 B0 66 9C 43 F0 AE E1 3F DF 42   // .zd....f.C...?.B
                51 15 CB FE 46 D1 D1 AF 95 F3 2B 04 40 9B 27 52   // Q...F.....+.@.'R
                DE 85 45 1A 37 0E D3 28 28 CC 61 EB C1 19 5B B3 ) // ..E.7..((.a...[.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public AccelerateNew.ctf
{
  // Offset: 0x00000000 Length: 0x002287B1
  // 警告: 创建了托管资源文件 AccelerateNew.ctf
}
.module AccelerateNew.dll
// MVID: {079C3617-BC46-4A86-B92A-FC656B742C45}
.imagebase 0x00400000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000009    //  ILONLY
// Image base: 0x04C40000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi AccelerateNew.AccelerateNewClass
       extends [mscorlib]System.Object
       implements [mscorlib]System.IDisposable
{
  .field private static class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR mcr
  .field private bool disposed
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       151 (0x97)
    .maxstack  5
    .locals init (class [mscorlib]System.Reflection.Assembly V_0,
             string V_1,
             int32 V_2,
             string V_3,
             class [mscorlib]System.IO.Stream V_4,
             string[] V_5,
             string V_6,
             string[] V_7,
             int32 V_8)
    IL_0000:  ldsfld     bool [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::MCRAppInitialized
    IL_0005:  brfalse    IL_008c

    IL_000a:  call       class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::GetExecutingAssembly()
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance string [mscorlib]System.Reflection.Assembly::get_Location()
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  ldstr      "\\"
    IL_001d:  callvirt   instance int32 [mscorlib]System.String::LastIndexOf(string)
    IL_0022:  stloc.2
    IL_0023:  ldloc.1
    IL_0024:  ldloc.2
    IL_0025:  ldloc.1
    IL_0026:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_002b:  ldloc.2
    IL_002c:  sub
    IL_002d:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0032:  stloc.1
    IL_0033:  ldstr      "AccelerateNew.ctf"
    IL_0038:  stloc.3
    IL_0039:  ldnull
    IL_003a:  stloc.s    V_4
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance string[] [mscorlib]System.Reflection.Assembly::GetManifestResourceNames()
    IL_0042:  stloc.s    V_5
    IL_0044:  ldloc.s    V_5
    IL_0046:  stloc.s    V_7
    IL_0048:  ldc.i4.0
    IL_0049:  stloc.s    V_8
    IL_004b:  br.s       IL_0070

    IL_004d:  ldloc.s    V_7
    IL_004f:  ldloc.s    V_8
    IL_0051:  ldelem.ref
    IL_0052:  stloc.s    V_6
    IL_0054:  ldloc.s    V_6
    IL_0056:  ldloc.3
    IL_0057:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_005c:  brfalse.s  IL_006a

    IL_005e:  ldloc.0
    IL_005f:  ldloc.s    V_6
    IL_0061:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.Reflection.Assembly::GetManifestResourceStream(string)
    IL_0066:  stloc.s    V_4
    IL_0068:  br.s       IL_0078

    IL_006a:  ldloc.s    V_8
    IL_006c:  ldc.i4.1
    IL_006d:  add
    IL_006e:  stloc.s    V_8
    IL_0070:  ldloc.s    V_8
    IL_0072:  ldloc.s    V_7
    IL_0074:  ldlen
    IL_0075:  conv.i4
    IL_0076:  blt.s      IL_004d

    IL_0078:  ldstr      ""
    IL_007d:  ldloc.1
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldc.i4.1
    IL_0081:  newobj     instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::.ctor(string,
                                                                                          string,
                                                                                          class [mscorlib]System.IO.Stream,
                                                                                          bool)
    IL_0086:  stsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_008b:  ret

    IL_008c:  ldstr      "MWArray assembly could not be initialized"
    IL_0091:  newobj     instance void [mscorlib]System.ApplicationException::.ctor(string)
    IL_0096:  throw
  } // end of method AccelerateNewClass::.cctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method AccelerateNewClass::.ctor

  .method family hidebysig virtual instance void 
          Finalize() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  2
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.0
      IL_0002:  callvirt   instance void AccelerateNew.AccelerateNewClass::Dispose(bool)
      IL_0007:  leave.s    IL_0010

    }  // end .try
    finally
    {
      IL_0009:  ldarg.0
      IL_000a:  call       instance void [mscorlib]System.Object::Finalize()
      IL_000f:  endfinally
    }  // end handler
    IL_0010:  ret
  } // end of method AccelerateNewClass::Finalize

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  callvirt   instance void AccelerateNew.AccelerateNewClass::Dispose(bool)
    IL_0007:  ldarg.0
    IL_0008:  call       void [mscorlib]System.GC::SuppressFinalize(object)
    IL_000d:  ret
  } // end of method AccelerateNewClass::Dispose

  .method family hidebysig newslot virtual 
          instance void  Dispose(bool disposing) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool AccelerateNew.AccelerateNewClass::disposed
    IL_0006:  brtrue.s   IL_0011

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  stfld      bool AccelerateNew.AccelerateNewClass::disposed
    IL_000f:  ldarg.1
    IL_0010:  pop
    IL_0011:  ret
  } // end of method AccelerateNewClass::Dispose

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_add_disp_and_curve() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_add_disp_and_curve"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_add_disp_and_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_add_disp_and_curve"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_add_disp_and_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_add_disp_and_curve"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_add_disp_and_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_ii) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_add_disp_and_curve"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_add_disp_and_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_ii,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_ii) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_add_disp_and_curve"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wcurve_ref_ii
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_add_disp_and_curve(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_add_disp_and_curve"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_add_disp_and_curve(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_add_disp_and_curve"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_add_disp_and_curve(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_add_disp_and_curve"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_add_disp_and_curve(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_ii) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_add_disp_and_curve"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_ref_ii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_add_disp_and_curve(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref_ii,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref_ii) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_add_disp_and_curve"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_ref_ii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wcurve_ref_ii
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance void 
          sub_add_disp_and_curve(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_add_disp_and_curve"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_add_disp_and_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win_imp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win_imp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    FilterFreq_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win_imp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    FilterFreq_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    FilterFreq_H
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.8
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win_imp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    FilterFreq_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    FilterFreq_H
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.7
    IL_0033:  ldarg.s    len_win
    IL_0035:  stelem.ref
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003c:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.s   9
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    Fs
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    len_win_imp
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    FilterFreq_L
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    FilterFreq_H
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    len_win
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    Wavelen_L
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0042:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_H) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.s   10
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    Fs
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    len_win_imp
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    FilterFreq_L
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    FilterFreq_H
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    len_win
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    Wavelen_L
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.s   9
    IL_003f:  ldarg.s    Wavelen_H
    IL_0041:  stelem.ref
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0048:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_ABA_rms_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldc.i4.s   11
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    Fs
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    len_win_imp
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    FilterFreq_L
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    FilterFreq_H
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    len_win
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    Wavelen_L
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.s   9
    IL_003f:  ldarg.s    Wavelen_H
    IL_0041:  stelem.ref
    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.s   10
    IL_0045:  ldarg.s    len_downsample
    IL_0047:  stelem.ref
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_004e:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win_imp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win_imp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    FilterFreq_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win_imp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    FilterFreq_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    FilterFreq_H
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.8
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win_imp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    FilterFreq_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    FilterFreq_H
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.7
    IL_0035:  ldarg.s    len_win
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003e:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.s   9
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wacc
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    Fs
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    len_win_imp
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    FilterFreq_L
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    FilterFreq_H
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    len_win
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    Wavelen_L
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0044:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_H) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.s   10
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wacc
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    Fs
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    len_win_imp
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    FilterFreq_L
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    FilterFreq_H
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    len_win
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    Wavelen_L
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.s   9
    IL_0041:  ldarg.s    Wavelen_H
    IL_0043:  stelem.ref
    IL_0044:  ldloc.0
    IL_0045:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_004a:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win_imp,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_H,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000b:  ldc.i4.s   11
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wacc
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    Fs
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    len_win_imp
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    FilterFreq_L
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    FilterFreq_H
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    len_win
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    Wavelen_L
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.s   9
    IL_0041:  ldarg.s    Wavelen_H
    IL_0043:  stelem.ref
    IL_0044:  ldloc.0
    IL_0045:  ldc.i4.s   10
    IL_0047:  ldarg.s    len_downsample
    IL_0049:  stelem.ref
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0050:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance void 
          sub_calculate_ABA_rms_for_corrugation(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_ABA_rms_for_corrugation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_ABA_rms_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_distrubtion_with_one_output() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_distrubtion_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_distrubtion_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_distrubtion_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_distrubtion_with_one_output(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_distrubtion_with_one_output(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_distrubtion_with_one_output(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_distrubtion_with_one_output(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_p
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance void 
          sub_calculate_distrubtion_with_one_output(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_distrubtion_with_one_output"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_distrubtion_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_mean_rms() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_rms"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_mean_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_merge) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_rms"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_mean_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_merge,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_merge) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_rms"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_mean_rms(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_mean_rms"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_mean_rms(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_merge) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_mean_rms"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_mean_rms(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_merge,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_merge) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_mean_rms"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance void 
          sub_calculate_mean_rms(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_rms"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_mean_value_for_corrugation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_value_for_corrugation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_mean_value_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_rms_merge) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_value_for_corrugation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_mean_value_for_corrugation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_mean_value_for_corrugation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_mean_value_for_corrugation(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_rms_merge) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_mean_value_for_corrugation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_value_for_corrugation

  .method public hidebysig instance void 
          sub_calculate_mean_value_for_corrugation(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_mean_value_for_corrugation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_mean_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    Freq_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_H) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    Freq_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    Freq_H
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    Freq_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_H) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    Freq_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    Freq_H
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance void 
          sub_calculate_moving_RMS_on_axlebox_acc(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    Wavelen_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_H) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    Wavelen_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    Wavelen_H
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    Wavelen_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Vacc_axlebox,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_L,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Wavelen_H) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    Wavelen_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    Wavelen_H
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance void 
          sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation(int32 numArgsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_moving_RMS_on_axlebox_acc_on_corruga"
    + "tion"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_moving_RMS_on_axlebox_acc_on_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_peak_factor() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_peak_factor"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_peak_factor(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_merge) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_peak_factor"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_peak_factor(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_merge,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray mean_rms) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_peak_factor"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_peak_factor(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_peak_factor"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_peak_factor(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_merge) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_peak_factor"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_peak_factor(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_merge,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray mean_rms) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_peak_factor"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance void 
          sub_calculate_peak_factor(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_peak_factor"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_peak_factor

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_rms_distrubtion() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_rms_distrubtion(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_rms_distrubtion(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_rms_distrubtion(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_rms_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_rms_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance void 
          sub_calculate_rms_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_rms_distrubtion"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_rms_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_segment_rms() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_segment_rms"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_segment_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_segment_rms"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_segment_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_segment_rms"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_segment_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_segment_rms"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_segment_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_merge) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_segment_rms"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    len_merge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_segment_rms(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_segment_rms"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_segment_rms(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_segment_rms"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_segment_rms(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_segment_rms"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_segment_rms(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_segment_rms"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_segment_rms(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_merge) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_segment_rms"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    len_merge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance void 
          sub_calculate_segment_rms(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_segment_rms"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_segment_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_sperling_index() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_sperling_index"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_sperling_index(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_sperling_index"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_sperling_index(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_sperling_index"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_sperling_index(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_sperling_index"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_sperling_index(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_sperling_index"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_sperling_index(int32 numArgsOut,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_sperling_index"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_sperling_index(int32 numArgsOut,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_sperling_index"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_sperling_index(int32 numArgsOut,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_sperling_index"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    dt
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance void 
          sub_calculate_sperling_index(int32 numArgsOut,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_sperling_index"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_sperling_index

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_tii_distrubtion() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_tii_distrubtion(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_0) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_tii_distrubtion(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_0,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_tii_distrubtion(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_0,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray rms_mean) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_tii_distrubtion(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_tii_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_0) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_tii_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_0,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_tii_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_0,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray rms_mean) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    rms_mean
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance void 
          sub_calculate_tii_distrubtion(int32 numArgsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_calculate_tii_distrubtion"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_calculate_tii_distrubtion

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_constrcut_reference_curvature_signal() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_constrcut_reference_curvature_signal(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_constrcut_reference_curvature_signal(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_constrcut_reference_curvature_signal(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_constrcut_reference_curvature_signal(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_constrcut_reference_curvature_signal(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_constrcut_reference_curvature_signal(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_constrcut_reference_curvature_signal(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    dt_km
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance void 
          sub_constrcut_reference_curvature_signal(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_constrcut_reference_curvature_signal"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_constrcut_reference_curvature_signal

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_correlation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray y) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_correlation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_correlation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_correlation(int32 numArgsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_correlation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_correlation(int32 numArgsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray y) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_correlation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance void 
          sub_correlation(int32 numArgsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extr() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extr(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extr(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extr(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extr"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extr(int32 numArgsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extr"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extr(int32 numArgsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extr"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance void 
          sub_extr(int32 numArgsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_acceleration_rms() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_acceleration_rms(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_acceleration_rms(int32 numArgsOut,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_acceleration_rms(int32 numArgsOut,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_acceleration_rms(int32 numArgsOut,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wtii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_acceleration_rms(int32 numArgsOut,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wtii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance void 
          sub_extract_deviation_from_acceleration_rms(int32 numArgsOut,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_acceleration_rms"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_axle_box_acceleration_rms() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_axle_box_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_axle_box_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_axle_box_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_axle_box_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_deviation_from_axle_box_acceleration_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_tii) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_tii
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wtii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wtii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wrms,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wtii,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_tii) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wtii
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_tii
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance void 
          sub_extract_deviation_from_axle_box_acceleration_rms(int32 numArgsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_deviation_from_axle_box_acceleration_rms"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_extract_deviation_from_axle_box_acceleration_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_information_for_corrugation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_information_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_information_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_information_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_information_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray mean_rms_nacc) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    mean_rms_nacc
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_information_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray mean_rms_nacc,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_tii) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    mean_rms_nacc
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_tii
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_information_for_corrugation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_information_for_corrugation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_information_for_corrugation(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_information_for_corrugation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_information_for_corrugation(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_information_for_corrugation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_information_for_corrugation(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_information_for_corrugation"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    len_downsample
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_information_for_corrugation(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray mean_rms_nacc) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_information_for_corrugation"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    len_downsample
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    mean_rms_nacc
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_information_for_corrugation(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_downsample,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray mean_rms_nacc,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_tii) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_information_for_corrugation"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    len_downsample
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    mean_rms_nacc
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_tii
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance void 
          sub_extract_information_for_corrugation(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_information_for_corrugation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_extract_information_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_segment_maxmium_value_for_corrugation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_segment_maxmium_value_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_segment_maxmium_value_for_corrugation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_merge) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_segment_maxmium_value_for_corrugation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_segment_maxmium_value_for_corrugation(int32 numArgsOut,
                                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_segment_maxmium_value_for_corrugation(int32 numArgsOut,
                                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_RMS,
                                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_merge) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance void 
          sub_extract_segment_maxmium_value_for_corrugation(int32 numArgsOut,
                                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_segment_maxmium_value_for_corrugation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_extract_segment_maxmium_value_for_corrugation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_acc
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_acc
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_en) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_acc
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    thresh_en
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extract_wave_for_corrugation_with_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_en,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_acc
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    thresh_en
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    len_win
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_acc
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_acc
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_en) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_acc
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    thresh_en
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_coru,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_acc,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_en,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_acc
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    thresh_en
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    len_win
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance void 
          sub_extract_wave_for_corrugation_with_one_output(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_extract_wave_for_corrugation_with_one_output"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_extract_wave_for_corrugation_with_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_fill_kilometer_by_interpolation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_fill_kilometer_by_interpolation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_fill_kilometer_by_interpolation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new_0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_fill_kilometer_by_interpolation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new_0,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new_0) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_fill_kilometer_by_interpolation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new_0,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new_0,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    dt_km
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_fill_kilometer_by_interpolation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_fill_kilometer_by_interpolation(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_fill_kilometer_by_interpolation(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new_0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_fill_kilometer_by_interpolation(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new_0,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new_0) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_new_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_fill_kilometer_by_interpolation(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new_0,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new_0,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_new_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    dt_km
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance void 
          sub_fill_kilometer_by_interpolation(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_fill_kilometer_by_interpolation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_fill_kilometer_by_interpolation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_acc() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_acc"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_acc"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_acc"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_acc"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_acc"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_acc(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_acc"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_acc(int32 numArgsOut,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_acc"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_acc(int32 numArgsOut,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_acc"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_acc(int32 numArgsOut,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_acc"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    FilterFreq_H
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_acc(int32 numArgsOut,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_L,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterFreq_H,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_acc"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    FilterFreq_H
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance void 
          sub_filter_acc(int32 numArgsOut,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                         class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_acc"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_filter_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Freq_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_H) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Freq_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Freq_H
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Freq_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_H) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Freq_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Freq_H
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance void 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_point_by_bisection() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_point_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_lin) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_point_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_lin,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_point_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_lin,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_up) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_point_by_bisection(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_point_by_bisection(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_lin) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_point_by_bisection(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_lin,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_point_by_bisection(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_lin,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_up) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc_up
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance void 
          sub_find_the_nearest_point_by_bisection(int32 numArgsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                  class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_point_by_bisection"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_point_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_sector_by_bisection() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_sector_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_sector_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_sector_by_bisection(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_sector_by_bisection(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_sector_by_bisection(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance void 
          sub_find_the_nearest_sector_by_bisection(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_sector_by_bisection"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_sector_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_segment_by_bisection() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_segment_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_the_nearest_segment_by_bisection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_segment_by_bisection(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_segment_by_bisection(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_the_nearest_segment_by_bisection(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ii) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance void 
          sub_find_the_nearest_segment_by_bisection(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_the_nearest_segment_by_bisection"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_find_the_nearest_segment_by_bisection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wpeak
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wpeak
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wpeak
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wpeak
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance void 
          sub_find_welding_point(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wpeak
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wpeak
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_welding_point_for_highlight(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dist_weld) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wpeak
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    dist_weld
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wpeak
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wpeak
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd_0,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wpeak,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dist_weld) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wstd_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wpeak
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    dist_weld
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance void 
          sub_find_welding_point_for_highlight(int32 numArgsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_find_welding_point_for_highlight"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_find_welding_point_for_highlight

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_Fourier_analysis() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_Fourier_analysis"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_Fourier_analysis(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_Fourier_analysis"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_Fourier_analysis(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_Fourier_analysis"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_Fourier_analysis(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_Fourier_analysis"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_Fourier_analysis(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_Fourier_analysis"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    dt
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_Fourier_analysis(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_Fourier_analysis"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_Fourier_analysis(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_Fourier_analysis"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_Fourier_analysis(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_Fourier_analysis"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_Fourier_analysis(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_Fourier_analysis"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Nlen
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_Fourier_analysis(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Nlen,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_Fourier_analysis"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Nlen
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    dt
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance void 
          sub_Fourier_analysis(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_Fourier_analysis"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_Fourier_analysis

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_deviation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_merge_deviation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_deviation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_dev) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_merge_deviation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_deviation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_deviation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_deviation(int32 numArgsOut,
                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_dev) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_deviation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_merge_deviation

  .method public hidebysig instance void 
          sub_merge_deviation(int32 numArgsOut,
                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_merge_deviation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterWlen_L) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    FilterWlen_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_acceleration_around_weld_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterWlen_L,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterWlen_H) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Fs
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    len_win
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    FilterWlen_L
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    FilterWlen_H
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterWlen_L) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    FilterWlen_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wacc_0,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterWlen_L,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray FilterWlen_H) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wacc_0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Fs
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    len_win
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    FilterWlen_L
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    FilterWlen_H
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance void 
          sub_preprocessing_acceleration_around_weld_point(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_acceleration_around_weld_point"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_acceleration_around_weld_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave_on_acc() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_peak) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_multi_peak
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave_on_acc(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave_on_acc(int32 numArgsOut,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave_on_acc(int32 numArgsOut,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave_on_acc(int32 numArgsOut,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_multi_wave
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave_on_acc(int32 numArgsOut,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_peak) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_multi_wave
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_multi_peak
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance void 
          sub_preprocessing_continous_multi_wave_on_acc(int32 numArgsOut,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                        class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave_on_acc"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_continous_multi_wave_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p_on_acc() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p_on_acc(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_p2p) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p_on_acc(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p_on_acc(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p_on_acc(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p_on_acc(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_p2p) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_p2p
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance void 
          sub_preprocessing_deviation_by_p2p_on_acc(int32 numArgsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p_on_acc"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_deviation_by_p2p_on_acc

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_value) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_value) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_value
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance void 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_process_abnormal_disp() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_process_abnormal_disp"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_process_abnormal_disp

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_process_abnormal_disp(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww0) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_process_abnormal_disp"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_process_abnormal_disp

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_process_abnormal_disp(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_process_abnormal_disp"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_process_abnormal_disp

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_process_abnormal_disp(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww0) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_process_abnormal_disp"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_process_abnormal_disp

  .method public hidebysig instance void 
          sub_process_abnormal_disp(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_process_abnormal_disp"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_process_abnormal_disp

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance void 
          sub_update_dispacement(int32 numArgsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement_on_curve() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement_on_curve"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement_on_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement_on_curve"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement_on_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement_on_curve"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_update_dispacement_on_curve(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement_on_curve"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement_on_curve(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement_on_curve"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement_on_curve(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement_on_curve"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement_on_curve(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement_on_curve"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_update_dispacement_on_curve(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_update_dispacement_on_curve"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance void 
          sub_update_dispacement_on_curve(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_update_dispacement_on_curve"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_update_dispacement_on_curve

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_abrupt_kilo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_abrupt_kilo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_curve) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    ww_abrupt_kilo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Fs
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    thresh_curve
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_abrupt_kilo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_abrupt_kilo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_0,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wc,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_curve) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wc
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    ww_abrupt_kilo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Fs
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    thresh_curve
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance void 
          sub_verify_kilometer(int32 numArgsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                               class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_abrupt_information() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_abrupt_information(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_abrupt_information(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_abrupt_information(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_abrupt_information(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    dt_km
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_abrupt_information(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_abrupt_information(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_abrupt_information(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_abrupt_information(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    ww_abrupt_kilo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_abrupt_information(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_new,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_abrupt_kilo,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    ww_abrupt_kilo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    dt_km
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance void 
          sub_verify_kilometer_based_on_abrupt_information(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_abrupt_information"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_abrupt_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wcurve_ref
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wcurve_ref
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    dt_km
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_verify_kilometer_based_on_curvature_one_output(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_curve) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wcurve_ref
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    dt_km
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    thresh_curve
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_ref
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_ref
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wcurve_ref
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_ref
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wcurve_ref
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    dt_km
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_mes,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wcurve_ref,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray dt_km,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_curve) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wdisp_ref
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wcurve_ref
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    dt_km
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    thresh_curve
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance void 
          sub_verify_kilometer_based_on_curvature_one_output(int32 numArgsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  ldstr      "sub_verify_kilometer_based_on_curvature_one_output"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method AccelerateNewClass::sub_verify_kilometer_based_on_curvature_one_output

  .method public hidebysig instance void 
          WaitForFiguresToDie() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR AccelerateNew.AccelerateNewClass::mcr
    IL_0005:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::WaitForFiguresToDie()
    IL_000a:  ret
  } // end of method AccelerateNewClass::WaitForFiguresToDie

} // end of class AccelerateNew.AccelerateNewClass


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 H:\工作文件汇总\铁科院\程序\离线加速度\AccelerationOffLine\BatProcess\Libs_sign\AccelerateNew.res
