# frozen_string_literal: true
#
# This file was generated via `rake flightxml:generate`
#
# Any changes made here will be overwritten.
#

module Flightxml
  module V3
    module Operations

      def aircraft_type(type:)
        command = Command.new(
          command: :AircraftType,
          result: Types::AircraftTypeResults,
          version: 3,
          parameters: {type: type}
        )
        perform_operation(command)
      end

      def airline_flight_schedules(start_date:, end_date:, origin: nil, destination: nil, airline: nil, flightno: nil, exclude_codeshare: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :AirlineFlightSchedules,
          result: Types::AirlineFlightSchedulesResults,
          version: 3,
          parameters: {start_date: start_date, end_date: end_date, origin: origin, destination: destination, airline: airline, flightno: flightno, exclude_codeshare: exclude_codeshare, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def airline_info(airline_code:)
        command = Command.new(
          command: :AirlineInfo,
          result: Types::AirlineInfoResults,
          version: 3,
          parameters: {airline_code: airline_code}
        )
        perform_operation(command)
      end

      def airport_boards(airport_code:, include_ex_data: nil, filter: nil, type: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :AirportBoards,
          result: Types::AirportBoardsResults,
          version: 3,
          parameters: {airport_code: airport_code, include_ex_data: include_ex_data, filter: filter, type: type, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def airport_delays(airport_code: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :AirportDelays,
          result: Types::AirportDelaysResults,
          version: 3,
          parameters: {airport_code: airport_code, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def airport_info(airport_code:)
        command = Command.new(
          command: :AirportInfo,
          result: Types::AirportInfoResults,
          version: 3,
          parameters: {airport_code: airport_code}
        )
        perform_operation(command)
      end

      def block_ident_check(ident:)
        command = Command.new(
          command: :BlockIdentCheck,
          result: Types::BlockIdentCheckResults,
          version: 3,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      def count_airport_operations(airport_code:)
        command = Command.new(
          command: :CountAirportOperations,
          result: Types::CountAirportOperationsResults,
          version: 3,
          parameters: {airport_code: airport_code}
        )
        perform_operation(command)
      end

      def count_all_enroute_airline_operations()
        command = Command.new(
          command: :CountAllEnrouteAirlineOperations,
          result: Types::CountAllEnrouteAirlineOperationsResults,
          version: 3,
          parameters: {}
        )
        perform_operation(command)
      end

      def decode_flight_route(faFlightID:)
        command = Command.new(
          command: :DecodeFlightRoute,
          result: Types::DecodeFlightRouteResults,
          version: 3,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      def decode_route(origin:, route:, destination:)
        command = Command.new(
          command: :DecodeRoute,
          result: Types::DecodeRouteResults,
          version: 3,
          parameters: {origin: origin, route: route, destination: destination}
        )
        perform_operation(command)
      end

      def find_flight(origin:, destination:, include_ex_data: nil, type: nil, filter: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FindFlight,
          result: Types::FindFlightResults,
          version: 3,
          parameters: {origin: origin, destination: destination, include_ex_data: include_ex_data, type: type, filter: filter, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def fleet_boards(fleet_code:, include_ex_data: nil, type: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FleetBoards,
          result: Types::FleetBoardsResults,
          version: 3,
          parameters: {fleet_code: fleet_code, include_ex_data: include_ex_data, type: type, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def flight_cancellation_statistics(time_period:, type_matching:, ident_filter: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FlightCancellationStatistics,
          result: Types::FlightCancellationStatisticsResults,
          version: 3,
          parameters: {time_period: time_period, type_matching: type_matching, ident_filter: ident_filter, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def flight_info_status(ident:, include_ex_data: nil, filter: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :FlightInfoStatus,
          result: Types::FlightInfoStatusResults,
          version: 3,
          parameters: {ident: ident, include_ex_data: include_ex_data, filter: filter, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def get_flight_track(ident:, include_position_estimates: nil)
        command = Command.new(
          command: :GetFlightTrack,
          result: Types::GetFlightTrackResults,
          version: 3,
          parameters: {ident: ident, include_position_estimates: include_position_estimates}
        )
        perform_operation(command)
      end

      def lat_longs_to_distance(lat1:, lon1:, lat2:, lon2:)
        command = Command.new(
          command: :LatLongsToDistance,
          result: Types::LatLongsToDistanceResults,
          version: 3,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      def lat_longs_to_heading(lat1:, lon1:, lat2:, lon2:)
        command = Command.new(
          command: :LatLongsToHeading,
          result: Types::LatLongsToHeadingResults,
          version: 3,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      def nearby_airports(latitude: nil, longitude: nil, airport_code: nil, radius:, only_iap: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :NearbyAirports,
          result: Types::NearbyAirportsResults,
          version: 3,
          parameters: {latitude: latitude, longitude: longitude, airport_code: airport_code, radius: radius, only_iap: only_iap, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def routes_between_airports(origin:, destination:, max_file_age:, sort_by:, howMany: nil, offset: nil)
        command = Command.new(
          command: :RoutesBetweenAirports,
          result: Types::RoutesBetweenAirportsResults,
          version: 3,
          parameters: {origin: origin, destination: destination, max_file_age: max_file_age, sort_by: sort_by, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def tail_owner(ident:)
        command = Command.new(
          command: :TailOwner,
          result: Types::TailOwnerResults,
          version: 3,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      def weather_conditions(airport_code:, weather_date: nil, temperature_units: nil, return_nearby_weather: nil, howMany: nil, offset: nil)
        command = Command.new(
          command: :WeatherConditions,
          result: Types::WeatherConditionsResults,
          version: 3,
          parameters: {airport_code: airport_code, weather_date: weather_date, temperature_units: temperature_units, return_nearby_weather: return_nearby_weather, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def weather_forecast(airport_code:, weather_date: nil, return_nearby_weather: nil)
        command = Command.new(
          command: :WeatherForecast,
          result: Types::WeatherForecastResults,
          version: 3,
          parameters: {airport_code: airport_code, weather_date: weather_date, return_nearby_weather: return_nearby_weather}
        )
        perform_operation(command)
      end

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
