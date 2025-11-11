# Install script for directory: /a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/kalata23/.espressif/tools/riscv32-esp-elf/esp-14.2.0_20241119/riscv32-esp-elf/bin/riscv32-esp-elf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/build_info.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_dependencies.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/a/esp-idf/esp-idf-c5/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

