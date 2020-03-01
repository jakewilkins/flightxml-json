# frozen_string_literal: true
#
# This file was generated via `rake flightxml:generate`
#
# Any changes made here will be overwritten.
 
module Flightxml
  # Perform operations using Version 2 of the API.
  module V2
    module Operations

      # Perform a AircraftType request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AircraftType AircraftType Documentaion
      #
      # @param type [String] 
      # @return [Hash] A Hash containing a AircraftTypeResults response
      def aircraft_type(type:)
        command = Command.new(
          command: :AircraftType,
          result: Types::AircraftTypeResults,
          version: 2,
          parameters: {type: type}
        )
        perform_operation(command)
      end

      # Perform a AirlineFlightInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AirlineFlightInfo AirlineFlightInfo Documentaion
      #
      # @param faFlightID [String] 
      # @return [Hash] A Hash containing a AirlineFlightInfoResults response
      def airline_flight_info(faFlightID:)
        command = Command.new(
          command: :AirlineFlightInfo,
          result: Types::AirlineFlightInfoResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      # Perform a AirlineFlightSchedules request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AirlineFlightSchedules AirlineFlightSchedules Documentaion
      #
      # @param startDate [Int] 
      # @param endDate [Int] 
      # @param origin [String] 
      # @param destination [String] 
      # @param airline [String] 
      # @param flightno [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a AirlineFlightSchedulesResults response
      def airline_flight_schedules(startDate:, endDate:, origin:, destination:, airline:, flightno:, howMany:, offset:)
        command = Command.new(
          command: :AirlineFlightSchedules,
          result: Types::AirlineFlightSchedulesResults,
          version: 2,
          parameters: {startDate: startDate, endDate: endDate, origin: origin, destination: destination, airline: airline, flightno: flightno, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a AirlineInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AirlineInfo AirlineInfo Documentaion
      #
      # @param airlineCode [String] 
      # @return [Hash] A Hash containing a AirlineInfoResults response
      def airline_info(airlineCode:)
        command = Command.new(
          command: :AirlineInfo,
          result: Types::AirlineInfoResults,
          version: 2,
          parameters: {airlineCode: airlineCode}
        )
        perform_operation(command)
      end

      # Perform a AirlineInsight request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AirlineInsight AirlineInsight Documentaion
      #
      # @return [Hash] A Hash containing a AirlineInsightResults response
      def airline_insight()
        command = Command.new(
          command: :AirlineInsight,
          result: Types::AirlineInsightResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      # Perform a AirportInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AirportInfo AirportInfo Documentaion
      #
      # @param airportCode [String] 
      # @return [Hash] A Hash containing a AirportInfoResults response
      def airport_info(airportCode:)
        command = Command.new(
          command: :AirportInfo,
          result: Types::AirportInfoResults,
          version: 2,
          parameters: {airportCode: airportCode}
        )
        perform_operation(command)
      end

      # Perform a AllAirlines request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AllAirlines AllAirlines Documentaion
      #
      # @return [Hash] A Hash containing a AllAirlinesResults response
      def all_airlines()
        command = Command.new(
          command: :AllAirlines,
          result: Types::AllAirlinesResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      # Perform a AllAirports request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_AllAirports AllAirports Documentaion
      #
      # @return [Hash] A Hash containing a AllAirportsResults response
      def all_airports()
        command = Command.new(
          command: :AllAirports,
          result: Types::AllAirportsResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      # Perform a Arrived request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Arrived Arrived Documentaion
      #
      # @param airport [String] 
      # @param howMany [Int] 
      # @param filter [String] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a ArrivedResults response
      def arrived(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Arrived,
          result: Types::ArrivedResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a BlockIdentCheck request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_BlockIdentCheck BlockIdentCheck Documentaion
      #
      # @param ident [String] 
      # @return [Hash] A Hash containing a BlockIdentCheckResults response
      def block_ident_check(ident:)
        command = Command.new(
          command: :BlockIdentCheck,
          result: Types::BlockIdentCheckResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      # Perform a CountAirportOperations request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_CountAirportOperations CountAirportOperations Documentaion
      #
      # @param airport [String] 
      # @return [Hash] A Hash containing a CountAirportOperationsResults response
      def count_airport_operations(airport:)
        command = Command.new(
          command: :CountAirportOperations,
          result: Types::CountAirportOperationsResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      # Perform a CountAllEnrouteAirlineOperations request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_CountAllEnrouteAirlineOperations CountAllEnrouteAirlineOperations Documentaion
      #
      # @return [Hash] A Hash containing a CountAllEnrouteAirlineOperationsResults response
      def count_all_enroute_airline_operations()
        command = Command.new(
          command: :CountAllEnrouteAirlineOperations,
          result: Types::CountAllEnrouteAirlineOperationsResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      # Perform a DecodeFlightRoute request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_DecodeFlightRoute DecodeFlightRoute Documentaion
      #
      # @param faFlightID [String] 
      # @return [Hash] A Hash containing a DecodeFlightRouteResults response
      def decode_flight_route(faFlightID:)
        command = Command.new(
          command: :DecodeFlightRoute,
          result: Types::DecodeFlightRouteResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      # Perform a DecodeRoute request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_DecodeRoute DecodeRoute Documentaion
      #
      # @param origin [String] 
      # @param route [String] 
      # @param destination [String] 
      # @return [Hash] A Hash containing a DecodeRouteResults response
      def decode_route(origin:, route:, destination:)
        command = Command.new(
          command: :DecodeRoute,
          result: Types::DecodeRouteResults,
          version: 2,
          parameters: {origin: origin, route: route, destination: destination}
        )
        perform_operation(command)
      end

      # Perform a DeleteAlert request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_DeleteAlert DeleteAlert Documentaion
      #
      # @param alert_id [Int] 
      # @return [Hash] A Hash containing a DeleteAlertResults response
      def delete_alert(alert_id:)
        command = Command.new(
          command: :DeleteAlert,
          result: Types::DeleteAlertResults,
          version: 2,
          parameters: {alert_id: alert_id}
        )
        perform_operation(command)
      end

      # Perform a Departed request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Departed Departed Documentaion
      #
      # @param airport [String] 
      # @param howMany [Int] 
      # @param filter [String] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a DepartedResults response
      def departed(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Departed,
          result: Types::DepartedResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a Enroute request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Enroute Enroute Documentaion
      #
      # @param airport [String] 
      # @param howMany [Int] 
      # @param filter [String] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a EnrouteResults response
      def enroute(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Enroute,
          result: Types::EnrouteResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a FleetArrived request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_FleetArrived FleetArrived Documentaion
      #
      # @param fleet [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FleetArrivedResults response
      def fleet_arrived(fleet:, howMany:, offset:)
        command = Command.new(
          command: :FleetArrived,
          result: Types::FleetArrivedResults,
          version: 2,
          parameters: {fleet: fleet, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a FleetScheduled request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_FleetScheduled FleetScheduled Documentaion
      #
      # @param fleet [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FleetScheduledResults response
      def fleet_scheduled(fleet:, howMany:, offset:)
        command = Command.new(
          command: :FleetScheduled,
          result: Types::FleetScheduledResults,
          version: 2,
          parameters: {fleet: fleet, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a FlightInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_FlightInfo FlightInfo Documentaion
      #
      # @param ident [String] 
      # @param howMany [Int] 
      # @return [Hash] A Hash containing a FlightInfoResults response
      def flight_info(ident:, howMany:)
        command = Command.new(
          command: :FlightInfo,
          result: Types::FlightInfoResults,
          version: 2,
          parameters: {ident: ident, howMany: howMany}
        )
        perform_operation(command)
      end

      # Perform a FlightInfoEx request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_FlightInfoEx FlightInfoEx Documentaion
      #
      # @param ident [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a FlightInfoExResults response
      def flight_info_ex(ident:, howMany:, offset:)
        command = Command.new(
          command: :FlightInfoEx,
          result: Types::FlightInfoExResults,
          version: 2,
          parameters: {ident: ident, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a GetAlerts request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_GetAlerts GetAlerts Documentaion
      #
      # @return [Hash] A Hash containing a GetAlertsResults response
      def get_alerts()
        command = Command.new(
          command: :GetAlerts,
          result: Types::GetAlertsResults,
          version: 2,
          parameters: {}
        )
        perform_operation(command)
      end

      # Perform a GetFlightID request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_GetFlightID GetFlightID Documentaion
      #
      # @param ident [String] 
      # @param departureTime [Int] 
      # @return [Hash] A Hash containing a GetFlightIDResults response
      def get_flight_i_d(ident:, departureTime:)
        command = Command.new(
          command: :GetFlightID,
          result: Types::GetFlightIDResults,
          version: 2,
          parameters: {ident: ident, departureTime: departureTime}
        )
        perform_operation(command)
      end

      # Perform a GetHistoricalTrack request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_GetHistoricalTrack GetHistoricalTrack Documentaion
      #
      # @param faFlightID [String] 
      # @return [Hash] A Hash containing a GetHistoricalTrackResults response
      def get_historical_track(faFlightID:)
        command = Command.new(
          command: :GetHistoricalTrack,
          result: Types::GetHistoricalTrackResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      # Perform a GetLastTrack request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_GetLastTrack GetLastTrack Documentaion
      #
      # @param ident [String] 
      # @return [Hash] A Hash containing a GetLastTrackResults response
      def get_last_track(ident:)
        command = Command.new(
          command: :GetLastTrack,
          result: Types::GetLastTrackResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      # Perform a InboundFlightInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_InboundFlightInfo InboundFlightInfo Documentaion
      #
      # @param faFlightID [String] 
      # @return [Hash] A Hash containing a InboundFlightInfoResults response
      def inbound_flight_info(faFlightID:)
        command = Command.new(
          command: :InboundFlightInfo,
          result: Types::InboundFlightInfoResults,
          version: 2,
          parameters: {faFlightID: faFlightID}
        )
        perform_operation(command)
      end

      # Perform a InFlightInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_InFlightInfo InFlightInfo Documentaion
      #
      # @param ident [String] 
      # @return [Hash] A Hash containing a InFlightInfoResults response
      def in_flight_info(ident:)
        command = Command.new(
          command: :InFlightInfo,
          result: Types::InFlightInfoResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      # Perform a LatLongsToDistance request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_LatLongsToDistance LatLongsToDistance Documentaion
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
          version: 2,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      # Perform a LatLongsToHeading request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_LatLongsToHeading LatLongsToHeading Documentaion
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
          version: 2,
          parameters: {lat1: lat1, lon1: lon1, lat2: lat2, lon2: lon2}
        )
        perform_operation(command)
      end

      # Perform a MapFlight request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_MapFlight MapFlight Documentaion
      #
      # @param ident [String] 
      # @param mapHeight [Int] 
      # @param mapWidth [Int] 
      # @return [Hash] A Hash containing a MapFlightResults response
      def map_flight(ident:, mapHeight:, mapWidth:)
        command = Command.new(
          command: :MapFlight,
          result: Types::MapFlightResults,
          version: 2,
          parameters: {ident: ident, mapHeight: mapHeight, mapWidth: mapWidth}
        )
        perform_operation(command)
      end

      # Perform a MapFlightEx request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_MapFlightEx MapFlightEx Documentaion
      #
      # @param faFlightID [String] 
      # @param mapHeight [Int] 
      # @param mapWidth [Int] 
      # @param layer_on [String] 
      # @param layer_off [String] 
      # @param show_data_blocks [Boolean] 
      # @param show_airports [Boolean] 
      # @param airports_expand_view [Boolean] 
      # @param latlon_box [Float] 
      # @return [Hash] A Hash containing a MapFlightExResults response
      def map_flight_ex(faFlightID:, mapHeight:, mapWidth:, layer_on:, layer_off:, show_data_blocks:, show_airports:, airports_expand_view:, latlon_box:)
        command = Command.new(
          command: :MapFlightEx,
          result: Types::MapFlightExResults,
          version: 2,
          parameters: {faFlightID: faFlightID, mapHeight: mapHeight, mapWidth: mapWidth, layer_on: layer_on, layer_off: layer_off, show_data_blocks: show_data_blocks, show_airports: show_airports, airports_expand_view: airports_expand_view, latlon_box: latlon_box}
        )
        perform_operation(command)
      end

      # Perform a Metar request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Metar Metar Documentaion
      #
      # @param airport [String] 
      # @return [Hash] A Hash containing a MetarResults response
      def metar(airport:)
        command = Command.new(
          command: :Metar,
          result: Types::MetarResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      # Perform a MetarEx request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_MetarEx MetarEx Documentaion
      #
      # @param airport [String] 
      # @param startTime [Int] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a MetarExResults response
      def metar_ex(airport:, startTime:, howMany:, offset:)
        command = Command.new(
          command: :MetarEx,
          result: Types::MetarExResults,
          version: 2,
          parameters: {airport: airport, startTime: startTime, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a NTaf request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_NTaf NTaf Documentaion
      #
      # @param airport [String] 
      # @return [Hash] A Hash containing a NTafResults response
      def n_taf(airport:)
        command = Command.new(
          command: :NTaf,
          result: Types::NTafResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      # Perform a RegisterAlertEndpoint request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_RegisterAlertEndpoint RegisterAlertEndpoint Documentaion
      #
      # @param address [String] 
      # @param format_type [String] 
      # @return [Hash] A Hash containing a RegisterAlertEndpointResults response
      def register_alert_endpoint(address:, format_type:)
        command = Command.new(
          command: :RegisterAlertEndpoint,
          result: Types::RegisterAlertEndpointResults,
          version: 2,
          parameters: {address: address, format_type: format_type}
        )
        perform_operation(command)
      end

      # Perform a RoutesBetweenAirports request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_RoutesBetweenAirports RoutesBetweenAirports Documentaion
      #
      # @param origin [String] 
      # @param destination [String] 
      # @return [Hash] A Hash containing a RoutesBetweenAirportsResults response
      def routes_between_airports(origin:, destination:)
        command = Command.new(
          command: :RoutesBetweenAirports,
          result: Types::RoutesBetweenAirportsResults,
          version: 2,
          parameters: {origin: origin, destination: destination}
        )
        perform_operation(command)
      end

      # Perform a RoutesBetweenAirportsEx request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_RoutesBetweenAirportsEx RoutesBetweenAirportsEx Documentaion
      #
      # @param origin [String] 
      # @param destination [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @param maxDepartureAge [String] 
      # @param maxFileAge [String] 
      # @return [Hash] A Hash containing a RoutesBetweenAirportsExResults response
      def routes_between_airports_ex(origin:, destination:, howMany:, offset:, maxDepartureAge:, maxFileAge:)
        command = Command.new(
          command: :RoutesBetweenAirportsEx,
          result: Types::RoutesBetweenAirportsExResults,
          version: 2,
          parameters: {origin: origin, destination: destination, howMany: howMany, offset: offset, maxDepartureAge: maxDepartureAge, maxFileAge: maxFileAge}
        )
        perform_operation(command)
      end

      # Perform a Scheduled request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Scheduled Scheduled Documentaion
      #
      # @param airport [String] 
      # @param howMany [Int] 
      # @param filter [String] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a ScheduledResults response
      def scheduled(airport:, howMany:, filter:, offset:)
        command = Command.new(
          command: :Scheduled,
          result: Types::ScheduledResults,
          version: 2,
          parameters: {airport: airport, howMany: howMany, filter: filter, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a Search request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Search Search Documentaion
      #
      # @param query [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a SearchResults response
      def search(query:, howMany:, offset:)
        command = Command.new(
          command: :Search,
          result: Types::SearchResults,
          version: 2,
          parameters: {query: query, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a SearchBirdseyeInFlight request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_SearchBirdseyeInFlight SearchBirdseyeInFlight Documentaion
      #
      # @param query [String] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a SearchBirdseyeInFlightResults response
      def search_birdseye_in_flight(query:, howMany:, offset:)
        command = Command.new(
          command: :SearchBirdseyeInFlight,
          result: Types::SearchBirdseyeInFlightResults,
          version: 2,
          parameters: {query: query, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a SearchBirdseyePositions request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_SearchBirdseyePositions SearchBirdseyePositions Documentaion
      #
      # @param query [String] 
      # @param uniqueFlights [Boolean] 
      # @param howMany [Int] 
      # @param offset [Int] 
      # @return [Hash] A Hash containing a SearchBirdseyePositionsResults response
      def search_birdseye_positions(query:, uniqueFlights:, howMany:, offset:)
        command = Command.new(
          command: :SearchBirdseyePositions,
          result: Types::SearchBirdseyePositionsResults,
          version: 2,
          parameters: {query: query, uniqueFlights: uniqueFlights, howMany: howMany, offset: offset}
        )
        perform_operation(command)
      end

      # Perform a SearchCount request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_SearchCount SearchCount Documentaion
      #
      # @param query [String] 
      # @return [Hash] A Hash containing a SearchCountResults response
      def search_count(query:)
        command = Command.new(
          command: :SearchCount,
          result: Types::SearchCountResults,
          version: 2,
          parameters: {query: query}
        )
        perform_operation(command)
      end

      # Perform a SetAlert request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_SetAlert SetAlert Documentaion
      #
      # @param alert_id [Int] 
      # @param ident [String] 
      # @param origin [String] 
      # @param destination [String] 
      # @param aircrafttype [String] 
      # @param date_start [Int] 
      # @param date_end [Int] 
      # @param channels [String] 
      # @param enabled [Boolean] 
      # @param max_weekly [Int] 
      # @return [Hash] A Hash containing a SetAlertResults response
      def set_alert(alert_id:, ident:, origin:, destination:, aircrafttype:, date_start:, date_end:, channels:, enabled:, max_weekly:)
        command = Command.new(
          command: :SetAlert,
          result: Types::SetAlertResults,
          version: 2,
          parameters: {alert_id: alert_id, ident: ident, origin: origin, destination: destination, aircrafttype: aircrafttype, date_start: date_start, date_end: date_end, channels: channels, enabled: enabled, max_weekly: max_weekly}
        )
        perform_operation(command)
      end

      # Perform a SetMaximumResultSize request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_SetMaximumResultSize SetMaximumResultSize Documentaion
      #
      # @param max_size [Int] 
      # @return [Hash] A Hash containing a SetMaximumResultSizeResults response
      def set_maximum_result_size(max_size:)
        command = Command.new(
          command: :SetMaximumResultSize,
          result: Types::SetMaximumResultSizeResults,
          version: 2,
          parameters: {max_size: max_size}
        )
        perform_operation(command)
      end

      # Perform a Taf request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_Taf Taf Documentaion
      #
      # @param airport [String] 
      # @return [Hash] A Hash containing a TafResults response
      def taf(airport:)
        command = Command.new(
          command: :Taf,
          result: Types::TafResults,
          version: 2,
          parameters: {airport: airport}
        )
        perform_operation(command)
      end

      # Perform a TailOwner request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_TailOwner TailOwner Documentaion
      #
      # @param ident [String] 
      # @return [Hash] A Hash containing a TailOwnerResults response
      def tail_owner(ident:)
        command = Command.new(
          command: :TailOwner,
          result: Types::TailOwnerResults,
          version: 2,
          parameters: {ident: ident}
        )
        perform_operation(command)
      end

      # Perform a ZipcodeInfo request
      # @see http://flightxml.flightaware.com/soap/FlightXML2/doc#op_ZipcodeInfo ZipcodeInfo Documentaion
      #
      # @param zipcode [String] 
      # @return [Hash] A Hash containing a ZipcodeInfoResults response
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
