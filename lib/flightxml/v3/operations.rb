# frozen_string_literal: true
#
# This file was generated via `rake flightxml:generate`
#
# Any changes made here will be overwritten.
 
module Flightxml
  # Perform operations using Version 3 of the API.
  module V3
    module Operations

      # Perform a AircraftType request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_AircraftType AircraftType Documentaion
      #
      # @param type [String] 
      # @return [Hash] A Hash containing a AircraftTypeResults response
      def aircraft_type(type:)
        command = Command.new(
          command: :AircraftType,
          result: Types::AircraftTypeResults,
          version: 3,
          parameters: {type: type}
        )
        perform_operation(command)
      end

      # Perform a AirlineFlightSchedules request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_AirlineFlightSchedules AirlineFlightSchedules Documentaion
      #
      # @param start_date [Int] 
      # @param end_date [Int] 
      # @param origin [String] 
      # @param destination [String] 
      # @param airline [String] 
      # @param flightno [String] 
      # @param exclude_codeshare [Boolean] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a AirlineFlightSchedulesResults response
      def airline_flight_schedules(start_date:, end_date:, origin: nil, destination: nil, airline: nil, flightno: nil, exclude_codeshare: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :AirlineFlightSchedules,
          result: Types::AirlineFlightSchedulesResults,
          version: 3,
          parameters: {start_date: start_date, end_date: end_date, origin: origin, destination: destination, airline: airline, flightno: flightno, exclude_codeshare: exclude_codeshare, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a AirlineInfo request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_AirlineInfo AirlineInfo Documentaion
      #
      # @param airline_code [String] 
      # @return [Hash] A Hash containing a AirlineInfoResults response
      def airline_info(airline_code:)
        command = Command.new(
          command: :AirlineInfo,
          result: Types::AirlineInfoResults,
          version: 3,
          parameters: {airline_code: airline_code}
        )
        perform_operation(command)
      end

      # Perform a AirportBoards request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_AirportBoards AirportBoards Documentaion
      #
      # @param airport_code [String] 
      # @param include_ex_data [Boolean] 
      # @param filter [String] 
      # @param type [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a AirportBoardsResults response
      def airport_boards(airport_code:, include_ex_data: nil, filter: nil, type: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :AirportBoards,
          result: Types::AirportBoardsResults,
          version: 3,
          parameters: {airport_code: airport_code, include_ex_data: include_ex_data, filter: filter, type: type, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a AirportDelays request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_AirportDelays AirportDelays Documentaion
      #
      # @param airport_code [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a AirportDelaysResults response
      def airport_delays(airport_code: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :AirportDelays,
          result: Types::AirportDelaysResults,
          version: 3,
          parameters: {airport_code: airport_code, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a AirportInfo request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_AirportInfo AirportInfo Documentaion
      #
      # @param airport_code [String] 
      # @return [Hash] A Hash containing a AirportInfoResults response
      def airport_info(airport_code:)
        command = Command.new(
          command: :AirportInfo,
          result: Types::AirportInfoResults,
          version: 3,
          parameters: {airport_code: airport_code}
        )
        perform_operation(command)
      end

      # Perform a BlockIdentCheck request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_BlockIdentCheck BlockIdentCheck Documentaion
      #
      # @param ident [String] 
      # @return [Hash] A Hash containing a BlockIdentCheckResults response
      def block_ident_check(ident:)
        command = Command.new(
          command: :BlockIdentCheck,
          result: Types::BlockIdentCheckResults,
          version: 3,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      # Perform a CountAirportOperations request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_CountAirportOperations CountAirportOperations Documentaion
      #
      # @param airport_code [String] 
      # @return [Hash] A Hash containing a CountAirportOperationsResults response
      def count_airport_operations(airport_code:)
        command = Command.new(
          command: :CountAirportOperations,
          result: Types::CountAirportOperationsResults,
          version: 3,
          parameters: {airport_code: airport_code}
        )
        perform_operation(command)
      end

      # Perform a CountAllEnrouteAirlineOperations request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_CountAllEnrouteAirlineOperations CountAllEnrouteAirlineOperations Documentaion
      #
      # @return [Hash] A Hash containing a CountAllEnrouteAirlineOperationsResults response
      def count_all_enroute_airline_operations()
        command = Command.new(
          command: :CountAllEnrouteAirlineOperations,
          result: Types::CountAllEnrouteAirlineOperationsResults,
          version: 3,
          parameters: {}
        )
        perform_operation(command)
      end

      # Perform a DecodeFlightRoute request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_DecodeFlightRoute DecodeFlightRoute Documentaion
      #
      # @param faFlightID [String] 
      # @return [Hash] A Hash containing a DecodeFlightRouteResults response
      def decode_flight_route(faFlightID:)
        command = Command.new(
          command: :DecodeFlightRoute,
          result: Types::DecodeFlightRouteResults,
          version: 3,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      # Perform a DecodeRoute request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_DecodeRoute DecodeRoute Documentaion
      #
      # @param origin [String] 
      # @param route [String] 
      # @param destination [String] 
      # @return [Hash] A Hash containing a DecodeRouteResults response
      def decode_route(origin:, route:, destination:)
        command = Command.new(
          command: :DecodeRoute,
          result: Types::DecodeRouteResults,
          version: 3,
          parameters: {origin: origin, route: route, destination: destination}
        )
        perform_operation(command)
      end

      # Perform a FindFlight request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_FindFlight FindFlight Documentaion
      #
      # @param origin [String] 
      # @param destination [String] 
      # @param include_ex_data [Boolean] 
      # @param type [String] 
      # @param filter [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FindFlightResults response
      def find_flight(origin:, destination:, include_ex_data: nil, type: nil, filter: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FindFlight,
          result: Types::FindFlightResults,
          version: 3,
          parameters: {origin: origin, destination: destination, include_ex_data: include_ex_data, type: type, filter: filter, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a FleetBoards request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_FleetBoards FleetBoards Documentaion
      #
      # @param fleet_code [String] 
      # @param include_ex_data [Boolean] 
      # @param type [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FleetBoardsResults response
      def fleet_boards(fleet_code:, include_ex_data: nil, type: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FleetBoards,
          result: Types::FleetBoardsResults,
          version: 3,
          parameters: {fleet_code: fleet_code, include_ex_data: include_ex_data, type: type, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a FlightCancellationStatistics request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_FlightCancellationStatistics FlightCancellationStatistics Documentaion
      #
      # @param time_period [String] 
      # @param type_matching [String] 
      # @param ident_filter [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FlightCancellationStatisticsResults response
      def flight_cancellation_statistics(time_period:, type_matching:, ident_filter: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FlightCancellationStatistics,
          result: Types::FlightCancellationStatisticsResults,
          version: 3,
          parameters: {time_period: time_period, type_matching: type_matching, ident_filter: ident_filter, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a FlightInfoStatus request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_FlightInfoStatus FlightInfoStatus Documentaion
      #
      # @param ident [String] 
      # @param include_ex_data [Boolean] 
      # @param filter [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FlightInfoStatusResults response
      def flight_info_status(ident:, include_ex_data: nil, filter: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FlightInfoStatus,
          result: Types::FlightInfoStatusResults,
          version: 3,
          parameters: {ident: ident, include_ex_data: include_ex_data, filter: filter, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a GetFlightTrack request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_GetFlightTrack GetFlightTrack Documentaion
      #
      # @param ident [String] 
      # @param include_position_estimates [Boolean] 
      # @return [Hash] A Hash containing a GetFlightTrackResults response
      def get_flight_track(ident:, include_position_estimates: nil)
        command = Command.new(
          command: :GetFlightTrack,
          result: Types::GetFlightTrackResults,
          version: 3,
          parameters: {ident: ident, include_position_estimates: include_position_estimates}
        )
        perform_operation(command)
      end

      # Perform a LatLongsToDistance request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_LatLongsToDistance LatLongsToDistance Documentaion
      #
      # @param lat1 [Float] 
      # @param lon1 [Float] 
      # @param lat2 [Float] 
      # @param lon2 [Float] 
      # @return [Hash] A Hash containing a LatLongsToDistanceResults response
      def lat_longs_to_distance(lat1:, lon1:, lat2:, lon2:)
        command = Command.new(
          command: :LatLongsToDistance,
          result: Types::LatLongsToDistanceResults,
          version: 3,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      # Perform a LatLongsToHeading request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_LatLongsToHeading LatLongsToHeading Documentaion
      #
      # @param lat1 [Float] 
      # @param lon1 [Float] 
      # @param lat2 [Float] 
      # @param lon2 [Float] 
      # @return [Hash] A Hash containing a LatLongsToHeadingResults response
      def lat_longs_to_heading(lat1:, lon1:, lat2:, lon2:)
        command = Command.new(
          command: :LatLongsToHeading,
          result: Types::LatLongsToHeadingResults,
          version: 3,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      # Perform a NearbyAirports request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_NearbyAirports NearbyAirports Documentaion
      #
      # @param latitude [Float] 
      # @param longitude [Float] 
      # @param airport_code [String] 
      # @param radius [Int] 
      # @param only_iap [Boolean] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a NearbyAirportsResults response
      def nearby_airports(latitude: nil, longitude: nil, airport_code: nil, radius:, only_iap: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :NearbyAirports,
          result: Types::NearbyAirportsResults,
          version: 3,
          parameters: {latitude: latitude, longitude: longitude, airport_code: airport_code, radius: radius, only_iap: only_iap, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a RoutesBetweenAirports request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_RoutesBetweenAirports RoutesBetweenAirports Documentaion
      #
      # @param origin [String] 
      # @param destination [String] 
      # @param max_file_age [String] 
      # @param sort_by [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a RoutesBetweenAirportsResults response
      def routes_between_airports(origin:, destination:, max_file_age:, sort_by:, howMany: nil, offset: nil)
        command = Command.new(
          command: :RoutesBetweenAirports,
          result: Types::RoutesBetweenAirportsResults,
          version: 3,
          parameters: {origin: origin, destination: destination, max_file_age: max_file_age, sort_by: sort_by, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a TailOwner request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_TailOwner TailOwner Documentaion
      #
      # @param ident [String] 
      # @return [Hash] A Hash containing a TailOwnerResults response
      def tail_owner(ident:)
        command = Command.new(
          command: :TailOwner,
          result: Types::TailOwnerResults,
          version: 3,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      # Perform a WeatherConditions request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_WeatherConditions WeatherConditions Documentaion
      #
      # @param airport_code [String] 
      # @param weather_date [Int] 
      # @param temperature_units [String] 
      # @param return_nearby_weather [Boolean] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a WeatherConditionsResults response
      def weather_conditions(airport_code:, weather_date: nil, temperature_units: nil, return_nearby_weather: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :WeatherConditions,
          result: Types::WeatherConditionsResults,
          version: 3,
          parameters: {airport_code: airport_code, weather_date: weather_date, temperature_units: temperature_units, return_nearby_weather: return_nearby_weather, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a WeatherForecast request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_WeatherForecast WeatherForecast Documentaion
      #
      # @param airport_code [String] 
      # @param weather_date [Int] 
      # @param return_nearby_weather [Boolean] 
      # @return [Hash] A Hash containing a WeatherForecastResults response
      def weather_forecast(airport_code:, weather_date: nil, return_nearby_weather: nil)
        command = Command.new(
          command: :WeatherForecast,
          result: Types::WeatherForecastResults,
          version: 3,
          parameters: {airport_code: airport_code, weather_date: weather_date, return_nearby_weather: return_nearby_weather}
        )
        perform_operation(command)
      end

      # Perform a ZipcodeInfo request
      # @see https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_ZipcodeInfo ZipcodeInfo Documentaion
      #
      # @param zipcode [String] 
      # @return [Hash] A Hash containing a ZipcodeInfoResults response
      def zipcode_info(zipcode:)
        command = Command.new(
          command: :ZipcodeInfo,
          result: Types::ZipcodeInfoResults,
          version: 3,
          parameters: {zipcode: zipcode}
        )
        perform_operation(command)
      end

    end
  end
end
