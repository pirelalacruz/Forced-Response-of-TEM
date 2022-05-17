#include "max6675.h"
#include <Wire.h>
byte res;
byte msb;
byte lsb;
int val;
float Tamb;

int ktcSO    = 8;
int ktcCS1   = 9;         //Hot Temperature _ chip select primer MAX6675
int ktcCLK   = 10;
int ktcCS2   = 11;        //Cold Temperarture _  chip select segundo MAX6675
float temp1 = 0;          //Hot Temperature _ TEM under Test
float temp2 = 0;          //Cold Temperarture _ TEM under Test
float Temperature_Differential; 
float Temperature_Average; 
float Temp_Diff;
float Temp_Ave;
float error1 = 6;
float error2 = 5;
int Pulse_Signal = 13;       // pin that connect the Power Source to TEM

//Setting Conditions

int Active = 1;
float Temp_Diff_max = 70;
float Imax = 7.6;
float Vmax = 15.9;
float Rm = 1.6;
  
MAX6675 ktc1(ktcCLK, ktcCS1, ktcSO);
MAX6675 ktc2(ktcCLK, ktcCS2, ktcSO);

void setup() {
  Serial.begin(9600);
  Wire.begin();
  pinMode(Pulse_Signal, OUTPUT);
  delay(50);

}

void loop() {

//Reading the Ambient Temperatures during the Test
do { 
   res = Wire.requestFrom(73,2); 
  if (res == 2) {
    msb = Wire.read(); /* Whole degrees */ 
    lsb = Wire.read(); /* Fractional degrees */ 
    val = ((msb) << 4);   /* MSB */
    val |= (lsb >> 4);    /* LSB */
    Tamb = val*0.0625;
    }

  
//Reading the Temperatures at the ceramic plates of the TEM under Test

  temp1 = ktc1.readCelsius(); // Read the Temperature on the Hot Side via I2C
  float hot_side = (temp1 - error1) + 273.15; // Read the Temperature on the Hot Side via I2C
  delay(50);
  temp2 = ktc2.readCelsius(); // Read the Temperature on the Cold Side via I2C
  float cold_side = (temp2 - error2) + 273.15 ; // Read the Temperature on the Cold Side via I2C
  delay(50);
  
//Calculating the Temperature Differential of the TEM under Test
   
   Temp_Diff = hot_side - cold_side;
   float Temperature_Differential = Temp_Diff ; // Units Coverter from Celcius to Kelvin
  
//Reading the Voltage at the TEM Terminals 
   
   int Sensor_Volt = analogRead(A0); //Read the DC voltage on analog pin A0
   
//Reading the Current Supplyed to the TEM under Test
   
   int Sensor_Amp = analogRead(A1); //Read the DC current on analog pin A1
   
// Converting the Analog reading (which goes from 0 - 1023) to a Voltage (0V - 50V)
   
   float Seebeck_Voltage = Sensor_Volt*(5.0/1024.0)*10; 
   
// Converting the Analog reading (which goes from 0 - 1023) to a Voltage (0V - 15V)
   
   float Current_Amp = (Sensor_Amp*(5.0/1024.0)*3)/(Rm);

// Converting the Analog reading (which goes from 0 - 1023) to a Voltage (0V - 50V)
  
   float Seebeck_Coefficient = Seebeck_Voltage / Temperature_Differential; 

//Calculating the Temperature Average of the TEM under Test

   Temperature_Average = (hot_side + cold_side)/2;
   float Temperature_Average = Temp_Ave ; // Units Coverter from Celcius to Kelvin

// Power Source activation   
  if(Temp_Diff < Temp_Diff_max)
  {    Pulse_Signal = HIGH;    }
 
  digitalWrite(Pulse_Signal, HIGH);


  //Serial.print(" Current_DC (Amp) = ");
  //Serial.println(Current_Amp,4);
  //Serial.print("  ");
  //Serial.print(ts.getCelsius(), 2);
  //Serial.print(" C / ");
  //Serial.print(ts.getFahrenheit(), 2);
  //Serial.print(" F / ");
  //Serial.print(ts.getKelvin(), 2);
  //Serial.print(" Kn");
  //Serial.println();
  //Serial.print("T_amb = ");
  //Serial.print(Tamb,4);
  Serial.print("  ");
  Serial.print("T_hot(K)= ");
  Serial.print(hot_side,4);
  Serial.print("  ");
  Serial.print("T_cold(K)= ");
  Serial.print(cold_side,4);
  Serial.print("  ");
  Serial.print("Temp_Diff(K)= ");
  Serial.print(Temperature_Differential,4);
  Serial.print("  ");
  Serial.print("Vo(Vdc)= ");
  Serial.print(Seebeck_Voltage,4);
  Serial.print("  ");
  Serial.print("Alfa(Volt/K)= ");
  Serial.println(Seebeck_Coefficient,4);
  Serial.print("  ");
  delay(50);
  }
  while ( Active = 1);
}
