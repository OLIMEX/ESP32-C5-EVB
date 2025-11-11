/*
  Olimex ESP32-C5-EVB Demo
  Demonstrates user button + LED feedback via USB-UART1 (CH340)

  Pins (per schematic):
    USER_LED  -> GPIO27 (active LOW)
    USER_BTN  -> GPIO28 (active LOW, pulled up)
    UART0 TXD -> GPIO11 (to CH340 RX)
    UART0 RXD -> GPIO12 (from CH340 TX)

  Board Manager Settings:
    - PSRAM: Enabled
    - USB CDC on Boot: Disabled
    - The COM port associated with the board

  Behavior for test:
    - Press the User button -> LED turns ON
    - Release the User button -> LED turns OFF
    - Serial output shows button state in real-time
*/

#include "Arduino.h"

// Pin definitions
#define USER_LED 27
#define USER_BTN 28

void setup() {
  pinMode(USER_LED, OUTPUT);        // LED output (active LOW)
  pinMode(USER_BTN, INPUT_PULLUP);  // Button input (active LOW)

  // Initialize UART0 (USB-UART1 via CH340)
  Serial.begin(115200);
  while (!Serial) {} // wait for serial to be ready (optional)
  Serial.println("ESP32-C5-EVB Button & LED Demo started");
}

void loop() {
  // Read button state (active LOW)
  bool buttonPressed = digitalRead(USER_BTN) == LOW;

  // LED logic inverted because LED is active LOW
  digitalWrite(USER_LED, buttonPressed ? LOW : HIGH);

  // Print button state over USB-UART
  if (buttonPressed) {
    Serial.println("Button pressed -> LED ON");
  } else {
    Serial.println("Button released -> LED OFF");
  }

  delay(100); // debounce & readability
}
