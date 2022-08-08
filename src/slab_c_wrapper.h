#pragma once

struct SlabData {

  // Release Gas Properties
  double source_gas_molecular_weight;
  double vapor_heat_capacity;
  double source_gas_temperature;
  double source_gas_density;
  double boiling_point_temperature;
  double liquid_mass_fraction;
  double liquid_heat_capacity;
  double heat_of_vaporization;
  double source_liquid_density;
  double saturation_pressure_constant_a;
  double saturation_pressure_constant_b;
  double saturation_pressure_constant_c;
  
  // Spill Characteristics
  int spill_type;
  double mass_source_rate;
  double continuous_source_duration;
  double continuous_source_mass;
  double instantaneous_source_mass;
  double source_area;
  double vertical_vapor_velocity;
  double source_half_weight;
  double source_height;
  double horizontal_vapor_velocity;
  
  // Field Parameters
  double concentration_averaging_time;
  double concentration_measurement_height_1;
  double concentration_measurement_height_2;
  double concentration_measurement_height_3;
  double concentration_measurement_height_4;
  
  // Ambient Meteorological Properties
  double ambient_air_molecular_properties;
  double ambient_air_heat_capacity;
  double ambient_air_density;
  double ambient_measurement_height;
  double ambient_atmospheric_pressure;
  double ambient_wind_speed;
  double ambient_temperature;
  double relative_humidity;
  double ambient_friction_velocity;
  double atmospheric_stability_class_value;
  double inverse_monin_obukhov_length;
  double surface_roughness_height;

  // Additional Parameters
  int substep_multiplier;
  int num_calculation_substeps;
  double gravitational_constant;
  double gas_constant;
  double von_karman_constant;
  
};


#ifdef __cplusplus
extern "C" {
#endif

void dostuff();

void run_test_case(int *test_number);

#ifdef __cplusplus
}
#endif
