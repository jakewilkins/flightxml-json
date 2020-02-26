# frozen_string_literal: true
#
# This file was generated via `rake flightxml:generate`
#
# Any changes made here will be overwritten.
#

require_relative "../basic_object"

module Flightxml
  module V2
    module Types

      class AircraftTypeResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AircraftTypeResult, required: true, array: false, type: :AircraftTypeStruct}, 
        ]
      end

      class AircraftTypeStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :manufacturer, required: true, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :description, required: true, array: false, type: :string}, 
        ]
      end

      class AirlineFlightInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirlineFlightInfoResult, required: true, array: false, type: :AirlineFlightInfoStruct}, 
        ]
      end

      class AirlineFlightInfoStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :faFlightID, required: true, array: false, type: :string}, 
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :codeshares, required: true, array: true, type: :string}, 
          {name: :tailnumber, required: true, array: false, type: :string}, 
          {name: :meal_service, required: true, array: false, type: :string}, 
          {name: :gate_orig, required: true, array: false, type: :string}, 
          {name: :gate_dest, required: true, array: false, type: :string}, 
          {name: :terminal_orig, required: true, array: false, type: :string}, 
          {name: :terminal_dest, required: true, array: false, type: :string}, 
          {name: :bag_claim, required: true, array: false, type: :string}, 
          {name: :seats_cabin_first, required: true, array: false, type: :int}, 
          {name: :seats_cabin_business, required: true, array: false, type: :int}, 
          {name: :seats_cabin_coach, required: true, array: false, type: :int}, 
        ]
      end

      class AirlineFlightSchedulesResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirlineFlightSchedulesResult, required: true, array: false, type: :ArrayOfAirlineFlightScheduleStruct}, 
        ]
      end

      class AirlineFlightScheduleStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :actual_ident, required: true, array: false, type: :string}, 
          {name: :departuretime, required: true, array: false, type: :int}, 
          {name: :arrivaltime, required: true, array: false, type: :int}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :meal_service, required: true, array: false, type: :string}, 
          {name: :seats_cabin_first, required: true, array: false, type: :int}, 
          {name: :seats_cabin_business, required: true, array: false, type: :int}, 
          {name: :seats_cabin_coach, required: true, array: false, type: :int}, 
        ]
      end

      class AirlineInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirlineInfoResult, required: true, array: false, type: :AirlineInfoStruct}, 
        ]
      end

      class AirlineInfoStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :name, required: true, array: false, type: :string}, 
          {name: :shortname, required: true, array: false, type: :string}, 
          {name: :callsign, required: true, array: false, type: :string}, 
          {name: :location, required: true, array: false, type: :string}, 
          {name: :country, required: true, array: false, type: :string}, 
          {name: :url, required: true, array: false, type: :string}, 
          {name: :phone, required: true, array: false, type: :string}, 
        ]
      end

      class AirlineInsightResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirlineInsightResult, required: true, array: false, type: :string}, 
        ]
      end

      class AirportInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirportInfoResult, required: true, array: false, type: :AirportInfoStruct}, 
        ]
      end

      class AirportInfoStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :name, required: true, array: false, type: :string}, 
          {name: :location, required: true, array: false, type: :string}, 
          {name: :longitude, required: true, array: false, type: :float}, 
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :timezone, required: true, array: false, type: :string}, 
        ]
      end

      class AllAirlinesResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AllAirlinesResult, required: true, array: false, type: :ArrayOfString}, 
        ]
      end

      class AllAirportsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AllAirportsResult, required: true, array: false, type: :ArrayOfString}, 
        ]
      end

      class ArrayOfAirlineFlightScheduleStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :data, required: true, array: true, type: :AirlineFlightScheduleStruct}, 
        ]
      end

      class ArrayOfCountAirlineOperationsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :data, required: true, array: true, type: :CountAirlineOperationsStruct}, 
        ]
      end

      class ArrayOfFlightRouteStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :data, required: true, array: true, type: :FlightRouteStruct}, 
        ]
      end

      class ArrayOfMetarStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :metar, required: true, array: true, type: :MetarStruct}, 
        ]
      end

      class ArrayOfRoutesBetweenAirportsExStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :data, required: true, array: true, type: :RoutesBetweenAirportsExStruct}, 
        ]
      end

      class ArrayOfRoutesBetweenAirportsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :data, required: true, array: true, type: :RoutesBetweenAirportsStruct}, 
        ]
      end

      class ArrayOfString
        include Flightxml::BasicObject

        self.attributes = [
          {name: :data, required: true, array: true, type: :string}, 
        ]
      end

      class ArrayOfTrackExStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :data, required: true, array: true, type: :TrackExStruct}, 
        ]
      end

      class ArrayOfTrackStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :data, required: true, array: true, type: :TrackStruct}, 
        ]
      end

      class ArrivalFlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :actualdeparturetime, required: true, array: false, type: :int}, 
          {name: :actualarrivaltime, required: true, array: false, type: :int}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :originName, required: true, array: false, type: :string}, 
          {name: :originCity, required: true, array: false, type: :string}, 
          {name: :destinationName, required: true, array: false, type: :string}, 
          {name: :destinationCity, required: true, array: false, type: :string}, 
        ]
      end

      class ArrivalStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :arrivals, required: true, array: true, type: :ArrivalFlightStruct}, 
        ]
      end

      class ArrivedResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ArrivedResult, required: true, array: false, type: :ArrivalStruct}, 
        ]
      end

      class BlockIdentCheckResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :BlockIdentCheckResult, required: true, array: false, type: :int}, 
        ]
      end

      class CountAirlineOperationsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :icao, required: true, array: false, type: :string}, 
          {name: :name, required: true, array: false, type: :string}, 
          {name: :enroute, required: true, array: false, type: :int}, 
        ]
      end

      class CountAirportOperationsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :CountAirportOperationsResult, required: true, array: false, type: :CountAirportOperationsStruct}, 
        ]
      end

      class CountAirportOperationsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :enroute, required: true, array: false, type: :int}, 
          {name: :departed, required: true, array: false, type: :int}, 
          {name: :scheduled_departures, required: true, array: false, type: :int}, 
          {name: :scheduled_arrivals, required: true, array: false, type: :int}, 
        ]
      end

      class CountAllEnrouteAirlineOperationsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :CountAllEnrouteAirlineOperationsResult, required: true, array: false, type: :ArrayOfCountAirlineOperationsStruct}, 
        ]
      end

      class DecodeFlightRouteResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :DecodeFlightRouteResult, required: true, array: false, type: :ArrayOfFlightRouteStruct}, 
        ]
      end

      class DecodeRouteResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :DecodeRouteResult, required: true, array: false, type: :ArrayOfFlightRouteStruct}, 
        ]
      end

      class DeleteAlertResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :DeleteAlertResult, required: true, array: false, type: :int}, 
        ]
      end

      class DepartedResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :DepartedResult, required: true, array: false, type: :DepartureStruct}, 
        ]
      end

      class DepartureFlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :actualdeparturetime, required: true, array: false, type: :int}, 
          {name: :estimatedarrivaltime, required: true, array: false, type: :int}, 
          {name: :actualarrivaltime, required: true, array: false, type: :int}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :originName, required: true, array: false, type: :string}, 
          {name: :originCity, required: true, array: false, type: :string}, 
          {name: :destinationName, required: true, array: false, type: :string}, 
          {name: :destinationCity, required: true, array: false, type: :string}, 
        ]
      end

      class DepartureStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :departures, required: true, array: true, type: :DepartureFlightStruct}, 
        ]
      end

      class EnrouteFlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :actualdeparturetime, required: true, array: false, type: :int}, 
          {name: :estimatedarrivaltime, required: true, array: false, type: :int}, 
          {name: :filed_departuretime, required: true, array: false, type: :int}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :originName, required: true, array: false, type: :string}, 
          {name: :originCity, required: true, array: false, type: :string}, 
          {name: :destinationName, required: true, array: false, type: :string}, 
          {name: :destinationCity, required: true, array: false, type: :string}, 
        ]
      end

      class EnrouteResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :EnrouteResult, required: true, array: false, type: :EnrouteStruct}, 
        ]
      end

      class EnrouteStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :enroute, required: true, array: true, type: :EnrouteFlightStruct}, 
        ]
      end

      class FleetArrivedResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FleetArrivedResult, required: true, array: false, type: :ArrivalStruct}, 
        ]
      end

      class FleetScheduledResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FleetScheduledResult, required: true, array: false, type: :ScheduledStruct}, 
        ]
      end

      class FlightAlertChannel
        include Flightxml::BasicObject

        self.attributes = [
          {name: :channel_id, required: true, array: false, type: :int}, 
          {name: :channel_name, required: true, array: false, type: :string}, 
          {name: :mask_summary, required: true, array: false, type: :string}, 
          {name: :e_filed, required: true, array: false, type: :boolean}, 
          {name: :e_departure, required: true, array: false, type: :boolean}, 
          {name: :e_arrival, required: true, array: false, type: :boolean}, 
          {name: :e_diverted, required: true, array: false, type: :boolean}, 
          {name: :e_cancelled, required: true, array: false, type: :boolean}, 
          {name: :target_address, required: true, array: false, type: :string}, 
        ]
      end

      class FlightAlertEntry
        include Flightxml::BasicObject

        self.attributes = [
          {name: :alert_id, required: true, array: false, type: :int}, 
          {name: :enabled, required: true, array: false, type: :boolean}, 
          {name: :description, required: true, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :user_ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :date_start, required: true, array: false, type: :int}, 
          {name: :date_end, required: true, array: false, type: :int}, 
          {name: :channels, required: true, array: true, type: :FlightAlertChannel}, 
          {name: :alert_created, required: true, array: false, type: :int}, 
          {name: :alert_changed, required: true, array: false, type: :int}, 
        ]
      end

      class FlightAlertListing
        include Flightxml::BasicObject

        self.attributes = [
          {name: :num_alerts, required: true, array: false, type: :int}, 
          {name: :alerts, required: true, array: true, type: :FlightAlertEntry}, 
        ]
      end

      class FlightExStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :faFlightID, required: true, array: false, type: :string}, 
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :filed_ete, required: true, array: false, type: :string}, 
          {name: :filed_time, required: true, array: false, type: :int}, 
          {name: :filed_departuretime, required: true, array: false, type: :int}, 
          {name: :filed_airspeed_kts, required: true, array: false, type: :int}, 
          {name: :filed_airspeed_mach, required: true, array: false, type: :string}, 
          {name: :filed_altitude, required: true, array: false, type: :int}, 
          {name: :route, required: true, array: false, type: :string}, 
          {name: :actualdeparturetime, required: true, array: false, type: :int}, 
          {name: :estimatedarrivaltime, required: true, array: false, type: :int}, 
          {name: :actualarrivaltime, required: true, array: false, type: :int}, 
          {name: :diverted, required: true, array: false, type: :string}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :originName, required: true, array: false, type: :string}, 
          {name: :originCity, required: true, array: false, type: :string}, 
          {name: :destinationName, required: true, array: false, type: :string}, 
          {name: :destinationCity, required: true, array: false, type: :string}, 
        ]
      end

      class FlightInfoExResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FlightInfoExResult, required: true, array: false, type: :FlightInfoExStruct}, 
        ]
      end

      class FlightInfoExStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :flights, required: true, array: true, type: :FlightExStruct}, 
        ]
      end

      class FlightInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FlightInfoResult, required: true, array: false, type: :FlightInfoStruct}, 
        ]
      end

      class FlightInfoStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :flights, required: true, array: true, type: :FlightStruct}, 
        ]
      end

      class FlightRouteStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :name, required: true, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :longitude, required: true, array: false, type: :float}, 
        ]
      end

      class FlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :filed_ete, required: true, array: false, type: :string}, 
          {name: :filed_time, required: true, array: false, type: :int}, 
          {name: :filed_departuretime, required: true, array: false, type: :int}, 
          {name: :filed_airspeed_kts, required: true, array: false, type: :int}, 
          {name: :filed_airspeed_mach, required: true, array: false, type: :string}, 
          {name: :filed_altitude, required: true, array: false, type: :int}, 
          {name: :route, required: true, array: false, type: :string}, 
          {name: :actualdeparturetime, required: true, array: false, type: :int}, 
          {name: :estimatedarrivaltime, required: true, array: false, type: :int}, 
          {name: :actualarrivaltime, required: true, array: false, type: :int}, 
          {name: :diverted, required: true, array: false, type: :string}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :originName, required: true, array: false, type: :string}, 
          {name: :originCity, required: true, array: false, type: :string}, 
          {name: :destinationName, required: true, array: false, type: :string}, 
          {name: :destinationCity, required: true, array: false, type: :string}, 
        ]
      end

      class GetAlertsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :GetAlertsResult, required: true, array: false, type: :FlightAlertListing}, 
        ]
      end

      class GetFlightIDResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :GetFlightIDResult, required: true, array: false, type: :string}, 
        ]
      end

      class GetHistoricalTrackResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :GetHistoricalTrackResult, required: true, array: false, type: :ArrayOfTrackStruct}, 
        ]
      end

      class GetLastTrackResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :GetLastTrackResult, required: true, array: false, type: :ArrayOfTrackStruct}, 
        ]
      end

      class InboundFlightInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :InboundFlightInfoResult, required: true, array: false, type: :FlightExStruct}, 
        ]
      end

      class InFlightAircraftStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :faFlightID, required: true, array: false, type: :string}, 
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :prefix, required: true, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :suffix, required: true, array: false, type: :string}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :timeout, required: true, array: false, type: :string}, 
          {name: :timestamp, required: true, array: false, type: :int}, 
          {name: :departureTime, required: true, array: false, type: :int}, 
          {name: :firstPositionTime, required: true, array: false, type: :int}, 
          {name: :arrivalTime, required: true, array: false, type: :int}, 
          {name: :longitude, required: true, array: false, type: :float}, 
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :lowLongitude, required: true, array: false, type: :float}, 
          {name: :lowLatitude, required: true, array: false, type: :float}, 
          {name: :highLongitude, required: true, array: false, type: :float}, 
          {name: :highLatitude, required: true, array: false, type: :float}, 
          {name: :groundspeed, required: true, array: false, type: :int}, 
          {name: :altitude, required: true, array: false, type: :int}, 
          {name: :heading, required: true, array: false, type: :int}, 
          {name: :altitudeStatus, required: true, array: false, type: :string}, 
          {name: :updateType, required: true, array: false, type: :string}, 
          {name: :altitudeChange, required: true, array: false, type: :string}, 
          {name: :waypoints, required: true, array: false, type: :string}, 
        ]
      end

      class InFlightInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :InFlightInfoResult, required: true, array: false, type: :InFlightAircraftStruct}, 
        ]
      end

      class InFlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :aircraft, required: true, array: true, type: :InFlightAircraftStruct}, 
        ]
      end

      class LatLongsToDistanceResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :LatLongsToDistanceResult, required: true, array: false, type: :int}, 
        ]
      end

      class LatLongsToHeadingResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :LatLongsToHeadingResult, required: true, array: false, type: :int}, 
        ]
      end

      class MapFlightExResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :MapFlightExResult, required: true, array: false, type: :string}, 
        ]
      end

      class MapFlightResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :MapFlightResult, required: true, array: false, type: :string}, 
        ]
      end

      class MetarExResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :MetarExResult, required: true, array: false, type: :ArrayOfMetarStruct}, 
        ]
      end

      class MetarResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :MetarResult, required: true, array: false, type: :string}, 
        ]
      end

      class MetarStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport, required: true, array: false, type: :string}, 
          {name: :time, required: true, array: false, type: :int}, 
          {name: :cloud_friendly, required: true, array: false, type: :string}, 
          {name: :cloud_altitude, required: true, array: false, type: :int}, 
          {name: :cloud_type, required: true, array: false, type: :string}, 
          {name: :conditions, required: true, array: false, type: :string}, 
          {name: :pressure, required: true, array: false, type: :float}, 
          {name: :temp_air, required: true, array: false, type: :int}, 
          {name: :temp_dewpoint, required: true, array: false, type: :int}, 
          {name: :temp_relhum, required: true, array: false, type: :int}, 
          {name: :visibility, required: true, array: false, type: :float}, 
          {name: :wind_friendly, required: true, array: false, type: :string}, 
          {name: :wind_direction, required: true, array: false, type: :int}, 
          {name: :wind_speed, required: true, array: false, type: :int}, 
          {name: :wind_speed_gust, required: true, array: false, type: :int}, 
          {name: :raw_data, required: true, array: false, type: :string}, 
        ]
      end

      class NTafResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :NTafResult, required: true, array: false, type: :TafStruct}, 
        ]
      end

      class RegisterAlertEndpointResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :RegisterAlertEndpointResult, required: true, array: false, type: :int}, 
        ]
      end

      class RoutesBetweenAirportsExResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :RoutesBetweenAirportsExResult, required: true, array: false, type: :ArrayOfRoutesBetweenAirportsExStruct}, 
        ]
      end

      class RoutesBetweenAirportsExStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :count, required: true, array: false, type: :int}, 
          {name: :route, required: true, array: false, type: :string}, 
          {name: :filedAltitude_min, required: true, array: false, type: :int}, 
          {name: :filedAltitude_max, required: true, array: false, type: :int}, 
          {name: :last_departuretime, required: true, array: false, type: :int}, 
        ]
      end

      class RoutesBetweenAirportsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :RoutesBetweenAirportsResult, required: true, array: false, type: :ArrayOfRoutesBetweenAirportsStruct}, 
        ]
      end

      class RoutesBetweenAirportsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :count, required: true, array: false, type: :int}, 
          {name: :route, required: true, array: false, type: :string}, 
          {name: :filedAltitude, required: true, array: false, type: :int}, 
        ]
      end

      class ScheduledFlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :filed_departuretime, required: true, array: false, type: :int}, 
          {name: :estimatedarrivaltime, required: true, array: false, type: :int}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :originName, required: true, array: false, type: :string}, 
          {name: :originCity, required: true, array: false, type: :string}, 
          {name: :destinationName, required: true, array: false, type: :string}, 
          {name: :destinationCity, required: true, array: false, type: :string}, 
        ]
      end

      class ScheduledResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ScheduledResult, required: true, array: false, type: :ScheduledStruct}, 
        ]
      end

      class ScheduledStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :scheduled, required: true, array: true, type: :ScheduledFlightStruct}, 
        ]
      end

      class SearchBirdseyeInFlightResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :SearchBirdseyeInFlightResult, required: true, array: false, type: :InFlightStruct}, 
        ]
      end

      class SearchBirdseyePositionsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :SearchBirdseyePositionsResult, required: true, array: false, type: :ArrayOfTrackExStruct}, 
        ]
      end

      class SearchCountResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :SearchCountResult, required: true, array: false, type: :int}, 
        ]
      end

      class SearchResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :SearchResult, required: true, array: false, type: :InFlightStruct}, 
        ]
      end

      class SetAlertResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :SetAlertResult, required: true, array: false, type: :int}, 
        ]
      end

      class SetMaximumResultSizeResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :SetMaximumResultSizeResult, required: true, array: false, type: :int}, 
        ]
      end

      class TafResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :TafResult, required: true, array: false, type: :string}, 
        ]
      end

      class TafStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport, required: true, array: false, type: :string}, 
          {name: :timeString, required: true, array: false, type: :string}, 
          {name: :forecast, required: true, array: true, type: :string}, 
        ]
      end

      class TailOwnerResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :TailOwnerResult, required: true, array: false, type: :TailOwnerStruct}, 
        ]
      end

      class TailOwnerStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :owner, required: true, array: false, type: :string}, 
          {name: :location, required: true, array: false, type: :string}, 
          {name: :location2, required: true, array: false, type: :string}, 
          {name: :website, required: true, array: false, type: :string}, 
        ]
      end

      class TrackExStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :faFlightID, required: true, array: false, type: :string}, 
          {name: :timestamp, required: true, array: false, type: :int}, 
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :longitude, required: true, array: false, type: :float}, 
          {name: :groundspeed, required: true, array: false, type: :int}, 
          {name: :altitude, required: true, array: false, type: :int}, 
          {name: :altitudeStatus, required: true, array: false, type: :string}, 
          {name: :updateType, required: true, array: false, type: :string}, 
          {name: :altitudeChange, required: true, array: false, type: :string}, 
        ]
      end

      class TrackStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :timestamp, required: true, array: false, type: :int}, 
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :longitude, required: true, array: false, type: :float}, 
          {name: :groundspeed, required: true, array: false, type: :int}, 
          {name: :altitude, required: true, array: false, type: :int}, 
          {name: :altitudeStatus, required: true, array: false, type: :string}, 
          {name: :updateType, required: true, array: false, type: :string}, 
          {name: :altitudeChange, required: true, array: false, type: :string}, 
        ]
      end

      class ZipcodeInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ZipcodeInfoResult, required: true, array: false, type: :ZipcodeInfoStruct}, 
        ]
      end

      class ZipcodeInfoStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :longitude, required: true, array: false, type: :float}, 
          {name: :city, required: true, array: false, type: :string}, 
          {name: :state, required: true, array: false, type: :string}, 
          {name: :county, required: true, array: false, type: :string}, 
        ]
      end

    end
  end
end
