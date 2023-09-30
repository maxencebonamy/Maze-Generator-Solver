{
    values = {
        [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.37.32822\bin\HostX64\x64\cl.exe]],
        {
            "-nologo",
            "-Zi",
            "-FS",
            [[-Fdbuild\windows\x64\debug\compile.main.pdb]],
            "-Od",
            "-Isrc",
            "-DSFML_STATIC",
            "-DFLAC__NO_DLL",
            "-DAL_LIBTYPE_STATIC",
            "/EHsc",
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\s\sfml\2.6.0\ec1bfcb987bf4337b6818db71c3d7d2e\include]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\f\freetype\2.13.1\4b38630cb5424a48b390ae0205b71a8a\include\freetype2]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\z\zlib\v1.3\bccfcefde78c424c9153cc8d3007dd63\include]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\l\libflac\1.4.3\f7b7cbe18c1e4c57a040dee2ae9ea089\include]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\l\libvorbis\1.3.7\efc0df09dbea49d0b67e1f82c3d5ca21\include]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\l\libogg\v1.3.4\4e8a50f24d1f47288264c1c71acb4588\include]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\o\openal-soft\1.23.1\5fce2691e1314b50b3e02f6d76c33e11\include]],
            "-external:W0",
            [[-external:IC:\Users\maxen\AppData\Local\.xmake\packages\c\cxxopts\v3.1.1\da452aeb9ec14d16b58ffaced97bda3c\include]]
        }
    },
    files = {
        [[src\main.cpp]]
    },
    depfiles_cl_json = "{\
    \"Version\": \"1.2\",\
    \"Data\": {\
        \"Source\": \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\main.cpp\",\
        \"ProvidedModule\": \"\",\
        \"Includes\": [\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\display\\\\grid.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\config.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\vector\\\\vector2.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cmath\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\yvals.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\yvals_core.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vcruntime.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\sal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\concurrencysal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vadefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xkeycheck.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\crtdbg.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vcruntime_new_debug.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vcruntime_new.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\crtdefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\use_ansi.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cstdlib\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stdlib.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_malloc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_search.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstdlib.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\limits.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xtr1common\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\intrin0.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\intrin0.inl.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cassert\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\assert.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\iostream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\istream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\ostream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\ios\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xlocnum\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\climits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cstdio\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_stdio_config.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\iterator\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\iosfwd\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cstring\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_memory.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_memcpy_s.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\errno.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vcruntime_string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstring.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cwchar\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\wchar.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wconio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wctype.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wdirect.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_share.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wprocess.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wtime.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\sys\\\\stat.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\sys\\\\types.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xutility\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\__msvc_iter_core.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\utility\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\initializer_list\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cstddef\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\type_traits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cstdint\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\stdint.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\streambuf\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xiosbase\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\share.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\system_error\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\__msvc_system_error_abi.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cerrno\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\stdexcept\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\exception\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\malloc.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vcruntime_exception.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\eh.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_terminate.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xstring\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xmemory\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\limits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cfloat\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\float.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\isa_availability.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\new\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xatomic.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\__msvc_sanitizer_annotate_container.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xcall_once.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xerrc.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\atomic\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xthreads.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xtimec.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\ctime\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\time.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xlocale\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\memory\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\typeinfo\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vcruntime_typeinfo.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xfacet\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xlocinfo\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\__msvc_xlocinfo_types.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\cctype\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\ctype.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\clocale\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\locale.h\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\config.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\clock.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\export.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\time.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\err.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\fileinputstream.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\inputstream.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\noncopyable.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\string\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\lock.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\memoryinputstream.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\mutex.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\sleep.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\string.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\utf.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\algorithm\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\locale\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xlocbuf\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xlocmes\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xlocmon\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xloctime\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\utf.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\string.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\thread.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\thread.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\threadlocal.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\threadlocalptr.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\threadlocalptr.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\vector2.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\vector2.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\vector3.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\system\\\\vector3.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\clipboard.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\export.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\context.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\glresource.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\contextsettings.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\cursor.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\event.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\joystick.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\keyboard.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\mouse.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\sensor.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\touch.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\videomode.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\vector\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\window.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\windowbase.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\vulkan.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\windowhandle.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\window\\\\windowstyle.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\blendmode.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\export.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\circleshape.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\shape.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\drawable.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\renderstates.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\transform.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\rect.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\rect.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\transformable.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\vertexarray.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\vertex.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\color.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\primitivetype.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\convexshape.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\font.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\glyph.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\texture.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\image.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\map\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\tuple\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xtree\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\rectangleshape.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\rendertarget.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\view.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\rendertexture.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\renderwindow.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\shader.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\glsl.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\glsl.inl\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\sprite.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\text.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\s\\\\sfml\\\\2.6.0\\\\ec1bfcb987bf4337b6818db71c3d7d2e\\\\include\\\\sfml\\\\graphics\\\\vertexbuffer.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\functional\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\generation\\\\kruskal.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\generation\\\\generation.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\array\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\generation\\\\depth_first.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\generation\\\\aldous_broder.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\generation\\\\prim.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\generation\\\\hunt_and_kill.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\solve\\\\breadth_first.hpp\",\
            \"c:\\\\users\\\\maxen\\\\onedrive - eseo\\\\perso\\\\projets\\\\maze-generator-solver\\\\src\\\\solve\\\\solve.hpp\",\
            \"c:\\\\users\\\\maxen\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\c\\\\cxxopts\\\\v3.1.1\\\\da452aeb9ec14d16b58ffaced97bda3c\\\\include\\\\cxxopts.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\sstream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\unordered_map\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xhash\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\list\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\xbit_ops.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\unordered_set\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\regex\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.37.32822\\\\include\\\\optional\"\
        ],\
        \"ImportedModules\": [],\
        \"ImportedHeaderUnits\": []\
    }\
}"
}