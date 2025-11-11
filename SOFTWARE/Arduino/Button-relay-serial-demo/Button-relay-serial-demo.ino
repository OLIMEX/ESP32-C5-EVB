/*
  Olimex ESP32-C5-EVB Relay Demo with 4-step cycle
  =================================================
  Functionality:
    - USER1 button (GPIO28, active LOW) cycles through 4 relay states:
        0: Both relays OFF
        1: Relay1 ON, Relay2 OFF
        2: Relay1 OFF, Relay2 ON
        3: Both relays ON
        4: Back to 0 (repeat)
    - Relay1 -> GPIO24
    - Relay2 -> GPIO23
    - Relay states printed over USB-UART1 every 1 second

  Board Configuration:
    - In Arduino IDE select "ESP32C5 Dev Module"
    - Default clock and USB-UART1 (Serial) settings are fine
    - No extra libraries needed

  Hardware:
    - USER1 button: GPIO28, active LOW (internal pull-up used)
    - Relay1: GPIO24
    - Relay2: GPIO23
*/

const int buttonPin = 28;   // USER1 button
const int relay1Pin = 24;   // Relay 1
const int relay2Pin = 23;   // Relay 2

// Current step in 4-step cycle (0..3)
int relayStep = 0;

// For button debouncing
bool lastButtonState = HIGH;  // previous reading
bool buttonPressed = false;   // prevents multiple toggles on long press
unsigned long lastDebounceTime = 0;
const unsigned long debounceDelay = 50;

// For periodic printing
unsigned long lastPrintTime = 0;
const unsigned long printInterval = 1000; // 1 second

void setup() {
  Serial.begin(115200);  // USB-UART1

  pinMode(buttonPin, INPUT_PULLUP);  // USER1 button active LOW
  pinMode(relay1Pin, OUTPUT);
  pinMode(relay2Pin, OUTPUT);

  // Start with both relays OFF
  digitalWrite(relay1Pin, LOW);
  digitalWrite(relay2Pin, LOW);

  Serial.println("ESP32-C5 Relay Demo Started - 4-Step Cycle");
}

void loop() {
  // --- BUTTON HANDLING ---
  int reading = digitalRead(buttonPin);

  // Detect button state change for debouncing
  if (reading != lastButtonState) {
    lastDebounceTime = millis();
  }

  if ((millis() - lastDebounceTime) > debounceDelay) {
    // Detect button press (HIGH -> LOW transition)
    if (reading == LOW && !buttonPressed) {
      // Move to next step in cycle
      relayStep = (relayStep + 1) % 4;

      // Update relay states according to step
      switch (relayStep) {
        case 0:  // Both OFF
          digitalWrite(relay1Pin, LOW);
          digitalWrite(relay2Pin, LOW);
          break;
        case 1:  // Relay1 ON, Relay2 OFF
          digitalWrite(relay1Pin, HIGH);
          digitalWrite(relay2Pin, LOW);
          break;
        case 2:  // Relay1 OFF, Relay2 ON
          digitalWrite(relay1Pin, LOW);
          digitalWrite(relay2Pin, HIGH);
          break;
        case 3:  // Both ON
          digitalWrite(relay1Pin, HIGH);
          digitalWrite(relay2Pin, HIGH);
          break;
      }

      buttonPressed = true;  // mark as handled
    }

    // Reset buttonPressed when released
    if (reading == HIGH) {
      buttonPressed = false;
    }
  }

  lastButtonState = reading;

  // --- PERIODIC PRINTING ---
  if (millis() - lastPrintTime >= printInterval) {
    lastPrintTime = millis();
    printRelayStates();
  }
}

// Print current relay states to Serial
void printRelayStates() {
  Serial.print("Relay1: ");
  Serial.print(digitalRead(relay1Pin) ? "ON" : "OFF");
  Serial.print(" | Relay2: ");
  Serial.println(digitalRead(relay2Pin) ? "ON" : "OFF");
  Serial.print("Current step: ");
  Serial.println(relayStep);
}
