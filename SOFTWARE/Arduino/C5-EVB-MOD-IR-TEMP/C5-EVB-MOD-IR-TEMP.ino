/*
  Olimex ESP32-C5-EVB + MOD-IR-TEMP (MLX90614) Demo
  ---------------------------------------------------------
  Demonstrates how to read infrared temperature data from the MLX90614
  connected via the UEXT port (I2C interface).

  Hardware connections (UEXT pinout):
    UEXT Pin 3 -> SDA  -> ESP32-C5 GPIO9
    UEXT Pin 4 -> SCL  -> ESP32-C5 GPIO8
    UEXT Pin 1 -> 3.3V (sensor power)
    UEXT Pin 2 -> GND  (ground)

  Requirements:
    - Arduino IDE with ESP32 board support installed
    - Adafruit MLX90614 library (install via Library Manager)
      → Tools > Manage Libraries > search "Adafruit MLX90614"
    - Board selected: "ESP32C5 Dev Module" 

  Functionality:
    - Initializes I2C communication on GPIO2/GPIO3
    - Reads ambient and object temperature every second
    - Prints results over USB serial
    
  Date: 2025-11-13
*/

#include <Wire.h>
#include <Adafruit_MLX90614.h>

// Create MLX90614 object
Adafruit_MLX90614 mlx = Adafruit_MLX90614();

// Define I2C pins for ESP32-C5-EVB (UEXT connector)
#define SDA_PIN 9
#define SCL_PIN 8

void setup() {
  // Start serial communication
  Serial.begin(115200);
  delay(1000);
  Serial.println("\n=== Olimex ESP32-C5-EVB + MOD-IR-TEMP (MLX90614) Demo ===");
  Serial.println("Initializing I2C and MLX90614 sensor...");

  // Initialize I2C on custom pins
  Wire.begin(SDA_PIN, SCL_PIN);

  // Initialize the MLX90614 sensor
  if (!mlx.begin()) {
    Serial.println("Error: MLX90614 not detected! Check wiring and power.");
    while (true) {
      delay(1000);
      Serial.println("Retrying...");
    }
  }

  Serial.println("MLX90614 detected successfully!");
  Serial.println("-----------------------------------------------------");
  Serial.println("Ambient and Object temperatures will be printed below:");
}

void loop() {
  // Read ambient temperature (air around the sensor)
  double ambientTemp = mlx.readAmbientTempC();

  // Read object temperature (measured by IR)
  double objectTemp = mlx.readObjectTempC();

  // Print to Serial Monitor
  Serial.print("Ambient: ");
  Serial.print(ambientTemp, 2);
  Serial.print(" °C   |   Object: ");
  Serial.print(objectTemp, 2);
  Serial.println(" °C");

  // Wait before next reading
  delay(1000);
}
