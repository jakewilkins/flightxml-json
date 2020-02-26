# frozen_string_literal: true
#
# This file was generated via `rake flightxml:generate`
#
# Any changes made here will be overwritten.
#

module Flightxml
  module V2
    module Operations

      def aircraft_type(type:)
        command = Command.new(
          command: :AircraftType,
          result: Types::AircraftTypeResults,
          version: 2,
          parameters: {type: type}
        )
        perform_operation(command)
      end

      def airline_flight_info(faFlightID:)
        command = Command.new(
          command: :AirlineFlightInfo,
          result: Types::AirlineFlightInfoResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      def airline_flight_schedules(startDate:, endDate:, origin:, destination:, airline:, flightno:, howMany:, offset:)
        command = Command.new(
          command: :AirlineFlightSchedules,
          result: Types::AirlineFlightSchedulesResults,
          version: 2,
          parameters: {startDate: startDate, endDate: endDate, origin: origin, destination: destination, airline: airline, flightno: flightno, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def airline_info(airlineCode:)
        command = Command.new(
          command: :AirlineInfo,
          result: Types::AirlineInfoResults,
          version: 2,
          parameters: {airlineCode: airlineCode}
        )
        perform_operation(command)
      end

      def airline_insight()
        command = Command.new(
          command: :AirlineInsight,
          result: Types::AirlineInsightResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      def airport_info(airportCode:)
        command = Command.new(
          command: :AirportInfo,
          result: Types::AirportInfoResults,
          version: 2,
          parameters: {airportCode: airportCode}
        )
        perform_operation(command)
      end

      def all_airlines()
        command = Command.new(
          command: :AllAirlines,
          result: Types::AllAirlinesResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      def all_airports()
        command = Command.new(
          command: :AllAirports,
          result: Types::AllAirportsResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      def arrived(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Arrived,
          result: Types::ArrivedResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      def block_ident_check(ident:)
        command = Command.new(
          command: :BlockIdentCheck,
          result: Types::BlockIdentCheckResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      def count_airport_operations(airport:)
        command = Command.new(
          command: :CountAirportOperations,
          result: Types::CountAirportOperationsResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      def count_all_enroute_airline_operations()
        command = Command.new(
          command: :CountAllEnrouteAirlineOperations,
          result: Types::CountAllEnrouteAirlineOperationsResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      def decode_flight_route(faFlightID:)
        command = Command.new(
          command: :DecodeFlightRoute,
          result: Types::DecodeFlightRouteResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      def decode_route(origin:, route:, destination:)
        command = Command.new(
          command: :DecodeRoute,
          result: Types::DecodeRouteResults,
          version: 2,
          parameters: {origin: origin, route: route, destination: destination}
        )
        perform_operation(command)
      end

      def delete_alert(alert_id:)
        command = Command.new(
          command: :DeleteAlert,
          result: Types::DeleteAlertResults,
          version: 2,
          parameters: {alert_id: alert_id}
        )
        perform_operation(command)
      end

      def departed(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Departed,
          result: Types::DepartedResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      def enroute(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Enroute,
          result: Types::EnrouteResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      def fleet_arrived(fleet:, howMany:, offset:)
        command = Command.new(
          command: :FleetArrived,
          result: Types::FleetArrivedResults,
          version: 2,
          parameters: {fleet: fleet, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def fleet_scheduled(fleet:, howMany:, offset:)
        command = Command.new(
          command: :FleetScheduled,
          result: Types::FleetScheduledResults,
          version: 2,
          parameters: {fleet: fleet, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def flight_info(ident:, howMany:)
        command = Command.new(
          command: :FlightInfo,
          result: Types::FlightInfoResults,
          version: 2,
          parameters: {ident: ident, howMany: howMany}
        )
        perform_operation(command)
      end

      def flight_info_ex(ident:, howMany:, offset:)
        command = Command.new(
          command: :FlightInfoEx,
          result: Types::FlightInfoExResults,
          version: 2,
          parameters: {ident: ident, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def get_alerts()
        command = Command.new(
          command: :GetAlerts,
          result: Types::GetAlertsResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      def get_flight_i_d(ident:, departureTime:)
        command = Command.new(
          command: :GetFlightID,
          result: Types::GetFlightIDResults,
          version: 2,
          parameters: {ident: ident, departureTime: departureTime}
        )
        perform_operation(command)
      end

      def get_historical_track(faFlightID:)
        command = Command.new(
          command: :GetHistoricalTrack,
          result: Types::GetHistoricalTrackResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      def get_last_track(ident:)
        command = Command.new(
          command: :GetLastTrack,
          result: Types::GetLastTrackResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      def inbound_flight_info(faFlightID:)
        command = Command.new(
          command: :InboundFlightInfo,
          result: Types::InboundFlightInfoResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      def in_flight_info(ident:)
        command = Command.new(
          command: :InFlightInfo,
          result: Types::InFlightInfoResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      def lat_longs_to_distance(lat1:, lon1:, lat2:, lon2:)
        command = Command.new(
          command: :LatLongsToDistance,
          result: Types::LatLongsToDistanceResults,
          version: 2,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      def lat_longs_to_heading(lat1:, lon1:, lat2:, lon2:)
        command = Command.new(
          command: :LatLongsToHeading,
          result: Types::LatLongsToHeadingResults,
          version: 2,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      def map_flight(ident:, mapHeight:, mapWidth:)
        command = Command.new(
          command: :MapFlight,
          result: Types::MapFlightResults,
          version: 2,
          parameters: {ident: ident, mapHeight: mapHeight, mapWidth: mapWidth}
        )
        perform_operation(command)
      end

      def map_flight_ex(faFlightID:, mapHeight:, mapWidth:, layer_on:, layer_off:, show_data_blocks:, show_airports:, airports_expand_view:, latlon_box:)
        command = Command.new(
          command: :MapFlightEx,
          result: Types::MapFlightExResults,
          version: 2,
          parameters: {faFlightID: faFlightID, mapHeight: mapHeight, mapWidth: mapWidth, layer_on: layer_on, layer_off: layer_off, show_data_blocks: show_data_blocks, show_airports: show_airports, airports_expand_view: airports_expand_view, latlon_box: latlon_box}
        )
        perform_operation(command)
      end

      def metar(airport:)
        command = Command.new(
          command: :Metar,
          result: Types::MetarResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      def metar_ex(airport:, startTime:, howMany:, offset:)
        command = Command.new(
          command: :MetarEx,
          result: Types::MetarExResults,
          version: 2,
          parameters: {airport: airport, startTime: startTime, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def n_taf(airport:)
        command = Command.new(
          command: :NTaf,
          result: Types::NTafResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      def register_alert_endpoint(address:, format_type:)
        command = Command.new(
          command: :RegisterAlertEndpoint,
          result: Types::RegisterAlertEndpointResults,
          version: 2,
          parameters: {address: address, format_type: format_type}
        )
        perform_operation(command)
      end

      def routes_between_airports(origin:, destination:)
        command = Command.new(
          command: :RoutesBetweenAirports,
          result: Types::RoutesBetweenAirportsResults,
          version: 2,
          parameters: {origin: origin, destination: destination}
        )
        perform_operation(command)
      end

      def routes_between_airports_ex(origin:, destination:, howMany:, offset:, maxDepartureAge:, maxFileAge:)
        command = Command.new(
          command: :RoutesBetweenAirportsEx,
          result: Types::RoutesBetweenAirportsExResults,
          version: 2,
          parameters: {origin: origin, destination: destination, howMany: howMany, offset: offset, maxDepartureAge: maxDepartureAge, maxFileAge: maxFileAge}
        )
        perform_operation(command)
      end

      def scheduled(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Scheduled,
          result: Types::ScheduledResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      def search(query:, howMany:, offset:)
        command = Command.new(
          command: :Search,
          result: Types::SearchResults,
          version: 2,
          parameters: {query: query, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def search_birdseye_in_flight(query:, howMany:, offset:)
        command = Command.new(
          command: :SearchBirdseyeInFlight,
          result: Types::SearchBirdseyeInFlightResults,
          version: 2,
          parameters: {query: query, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def search_birdseye_positions(query:, uniqueFlights:, howMany:, offset:)
        command = Command.new(
          command: :SearchBirdseyePositions,
          result: Types::SearchBirdseyePositionsResults,
          version: 2,
          parameters: {query: query, uniqueFlights: uniqueFlights, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      def search_count(query:)
        command = Command.new(
          command: :SearchCount,
          result: Types::SearchCountResults,
          version: 2,
          parameters: {query: query}
        )
        perform_operation(command)
      end

      def set_alert(alert_id:, ident:, origin:, destination:, aircrafttype:, date_start:, date_end:, channels:, enabled:, max_weekly:)
        command = Command.new(
          command: :SetAlert,
          result: Types::SetAlertResults,
          version: 2,
          parameters: {alert_id: alert_id, ident: ident, origin: origin, destination: destination, aircrafttype: aircrafttype, date_start: date_start, date_end: date_end, channels: channels, enabled: enabled, max_weekly: max_weekly}
        )
        perform_operation(command)
      end

      def set_maximum_result_size(max_size:)
        command = Command.new(
          command: :SetMaximumResultSize,
          result: Types::SetMaximumResultSizeResults,
          version: 2,
          parameters: {max_size: max_size}
        )
        perform_operation(command)
      end

      def taf(airport:)
        command = Command.new(
          command: :Taf,
          result: Types::TafResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      def tail_owner(ident:)
        command = Command.new(
          command: :TailOwner,
          result: Types::TailOwnerResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      def zipcode_info(zipcode:)
        command = Command.new(
          command: :ZipcodeInfo,
          result: Types::ZipcodeInfoResults,
          version: 2,
          parameters: {zipcode: zipcode}
        )
        perform_operation(command)
      end

    end
  end
end
