# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/a/esp-idf/esp-idf-c5/esp-idf/components/bootloader/subproject"
  "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader"
  "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix"
  "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix/tmp"
  "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix/src/bootloader-stamp"
  "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix/src"
  "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/kalata23/SVN/IoT/ESP32-C5-EVB/Software/trunk/WEB_files/Demo_Example_WEB_files/esp32-c5-evb-blinking-LED/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
