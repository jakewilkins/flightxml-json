# frozen_string_literal: true
#
# This file was generated via `rake flightxml:generate`
#
# Any changes made here will be overwritten.
#

require_relative "../basic_object"

module Flightxml
  module V3
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
          {name: :engine_count, required: false, array: false, type: :int}, 
          {name: :engine_type, required: false, array: false, type: :string}, 
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
          {name: :fa_ident, required: false, array: false, type: :string}, 
          {name: :actual_ident, required: true, array: false, type: :string}, 
          {name: :departuretime, required: true, array: false, type: :int}, 
          {name: :arrivaltime, required: true, array: false, type: :int}, 
          {name: :origin, required: true, array: false, type: :string}, 
          {name: :destination, required: true, array: false, type: :string}, 
          {name: :aircrafttype, required: true, array: false, type: :string}, 
          {name: :meal_service, required: false, array: false, type: :string}, 
          {name: :seats_cabin_first, required: false, array: false, type: :int}, 
          {name: :seats_cabin_business, required: false, array: false, type: :int}, 
          {name: :seats_cabin_coach, required: false, array: false, type: :int}, 
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
          {name: :phone, required: true, array: false, type: :string}, 
          {name: :url, required: true, array: false, type: :string}, 
          {name: :wiki_url, required: false, array: false, type: :string}, 
          {name: :airbourne, required: false, array: false, type: :int}, 
          {name: :flights_last_24_hours, required: false, array: false, type: :int}, 
        ]
      end

      class AirportBoardsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirportBoardsResult, required: true, array: false, type: :AirportBoardsStruct}, 
        ]
      end

      class AirportBoardsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport, required: true, array: false, type: :string}, 
          {name: :airport_info, required: false, array: false, type: :AirportStruct}, 
          {name: :arrivals, required: false, array: false, type: :TrackAirportStruct}, 
          {name: :departures, required: false, array: false, type: :TrackAirportStruct}, 
          {name: :enroute, required: false, array: false, type: :TrackAirportStruct}, 
          {name: :scheduled, required: false, array: false, type: :TrackAirportStruct}, 
        ]
      end

      class AirportDelayEntry
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport, required: true, array: false, type: :string}, 
          {name: :color, required: true, array: false, type: :string}, 
          {name: :delay_secs, required: true, array: false, type: :int}, 
          {name: :category, required: true, array: false, type: :string}, 
          {name: :reasons_all, required: true, array: true, type: :AirportDelayReason}, 
        ]
      end

      class AirportDelayReason
        include Flightxml::BasicObject

        self.attributes = [
          {name: :reason, required: true, array: false, type: :string}, 
          {name: :category, required: true, array: false, type: :string}, 
          {name: :delay_secs, required: true, array: false, type: :int}, 
          {name: :color, required: true, array: false, type: :string}, 
        ]
      end

      class AirportDelaysResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirportDelaysResult, required: true, array: false, type: :AirportDelayStruct}, 
        ]
      end

      class AirportDelayStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :delays, required: true, array: true, type: :AirportDelayEntry}, 
        ]
      end

      class AirportDisplayStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :code, required: true, array: false, type: :string}, 
          {name: :city, required: true, array: false, type: :string}, 
          {name: :alternate_ident, required: true, array: false, type: :string}, 
          {name: :airport_name, required: true, array: false, type: :string}, 
        ]
      end

      class AirportInfoResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :AirportInfoResult, required: true, array: false, type: :AirportStruct}, 
        ]
      end

      class AirportStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport_code, required: true, array: false, type: :string}, 
          {name: :name, required: true, array: false, type: :string}, 
          {name: :distance, required: false, array: false, type: :int}, 
          {name: :elevation, required: false, array: false, type: :float}, 
          {name: :city, required: true, array: false, type: :string}, 
          {name: :state, required: false, array: false, type: :string}, 
          {name: :heading, required: false, array: false, type: :int}, 
          {name: :direction, required: false, array: false, type: :string}, 
          {name: :longitude, required: true, array: false, type: :float}, 
          {name: :latitude, required: true, array: false, type: :float}, 
          {name: :timezone, required: true, array: false, type: :string}, 
          {name: :country_code, required: false, array: false, type: :string}, 
          {name: :wiki_url, required: false, array: false, type: :string}, 
          {name: :alternate_ident, required: false, array: false, type: :string}, 
        ]
      end

      class ArrayOfAirlineFlightScheduleStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :flights, required: true, array: true, type: :AirlineFlightScheduleStruct}, 
        ]
      end

      class ArrayOfCountAirlineOperationsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :data, required: true, array: true, type: :CountAirlineOperationsStruct}, 
        ]
      end

      class ArrayOfFlightInfoStatusStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :flights, required: true, array: true, type: :FlightInfoStatusStruct}, 
        ]
      end

      class ArrayOfFlightRouteStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :route_distance, required: true, array: false, type: :string}, 
          {name: :data, required: true, array: true, type: :FlightRouteStruct}, 
        ]
      end

      class ArrayOfRoutesBetweenAirportsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :data, required: true, array: true, type: :RoutesBetweenAirportsStruct}, 
        ]
      end

      class ArrayOfTrackStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :tracks, required: true, array: true, type: :TrackStruct}, 
        ]
      end

      class BlockIdentCheckResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :BlockIdentCheckResult, required: true, array: false, type: :int}, 
        ]
      end

      class CancellationRowStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :description, required: true, array: false, type: :string}, 
          {name: :cancellations, required: true, array: false, type: :int}, 
          {name: :delays, required: true, array: false, type: :int}, 
          {name: :total, required: true, array: false, type: :int}, 
        ]
      end

      class CancellationSummaryStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :total_cancellations_worldwide, required: true, array: false, type: :int}, 
          {name: :total_cancellations_national, required: true, array: false, type: :int}, 
          {name: :total_delays_worldwide, required: true, array: false, type: :int}, 
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :type_matching, required: true, array: false, type: :string}, 
          {name: :matching, required: true, array: true, type: :CancellationRowStruct}, 
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

      class DecodedForecastStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :forecast_start, required: true, array: false, type: :int}, 
          {name: :forecast_end, required: true, array: false, type: :int}, 
          {name: :forecast_lines, required: true, array: true, type: :ForecastLineStruct}, 
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

      class FindFlightMatch
        include Flightxml::BasicObject

        self.attributes = [
          {name: :num_segments, required: true, array: false, type: :int}, 
          {name: :segments, required: true, array: true, type: :FlightInfoStatusStruct}, 
        ]
      end

      class FindFlightResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FindFlightResult, required: true, array: false, type: :FindFlightStruct}, 
        ]
      end

      class FindFlightStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :num_flights, required: true, array: false, type: :int}, 
          {name: :flights, required: true, array: true, type: :FindFlightMatch}, 
          {name: :next_offset, required: true, array: false, type: :int}, 
        ]
      end

      class FleetBoardsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FleetBoardsResult, required: true, array: false, type: :FleetBoardsStruct}, 
        ]
      end

      class FleetBoardsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :fleet, required: true, array: false, type: :string}, 
          {name: :arrivals, required: false, array: false, type: :TrackFleetStruct}, 
          {name: :departures, required: false, array: false, type: :TrackFleetStruct}, 
          {name: :enroute, required: false, array: false, type: :TrackFleetStruct}, 
          {name: :scheduled, required: false, array: false, type: :TrackFleetStruct}, 
        ]
      end

      class FlightCancellationStatisticsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FlightCancellationStatisticsResult, required: true, array: false, type: :CancellationSummaryStruct}, 
        ]
      end

      class FlightInfoStatusResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :FlightInfoStatusResult, required: true, array: false, type: :ArrayOfFlightInfoStatusStruct}, 
        ]
      end

      class FlightInfoStatusStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :ident, required: true, array: false, type: :string}, 
          {name: :atc_ident, required: false, array: false, type: :string}, 
          {name: :faFlightID, required: true, array: false, type: :string}, 
          {name: :airline, required: false, array: false, type: :string}, 
          {name: :airline_iata, required: false, array: false, type: :string}, 
          {name: :flightnumber, required: false, array: false, type: :string}, 
          {name: :tailnumber, required: false, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :codeshares, required: false, array: false, type: :string}, 
          {name: :blocked, required: true, array: false, type: :boolean}, 
          {name: :diverted, required: true, array: false, type: :boolean}, 
          {name: :cancelled, required: true, array: false, type: :boolean}, 
          {name: :origin, required: false, array: false, type: :AirportDisplayStruct}, 
          {name: :destination, required: false, array: false, type: :AirportDisplayStruct}, 
          {name: :filed_ete, required: false, array: false, type: :int}, 
          {name: :route, required: false, array: false, type: :string}, 
          {name: :filed_altitude, required: false, array: false, type: :int}, 
          {name: :display_filed_altitude, required: false, array: false, type: :string}, 
          {name: :filed_airspeed_kts, required: false, array: false, type: :int}, 
          {name: :filed_airspeed_mach, required: false, array: false, type: :int}, 
          {name: :distance_filed, required: false, array: false, type: :int}, 
          {name: :filed_departure_time, required: false, array: false, type: :Timestamp}, 
          {name: :estimated_departure_time, required: false, array: false, type: :Timestamp}, 
          {name: :actual_departure_time, required: false, array: false, type: :Timestamp}, 
          {name: :departure_delay, required: false, array: false, type: :int}, 
          {name: :filed_arrival_time, required: false, array: false, type: :Timestamp}, 
          {name: :estimated_arrival_time, required: false, array: false, type: :Timestamp}, 
          {name: :actual_arrival_time, required: false, array: false, type: :Timestamp}, 
          {name: :arrival_delay, required: false, array: false, type: :int}, 
          {name: :filed_blockout_time, required: false, array: false, type: :Timestamp}, 
          {name: :estimated_blockout_time, required: false, array: false, type: :Timestamp}, 
          {name: :actual_blockout_time, required: false, array: false, type: :Timestamp}, 
          {name: :filed_blockin_time, required: false, array: false, type: :Timestamp}, 
          {name: :estimated_blockin_time, required: false, array: false, type: :Timestamp}, 
          {name: :actual_blockin_time, required: false, array: false, type: :Timestamp}, 
          {name: :status, required: false, array: false, type: :string}, 
          {name: :progress_percent, required: false, array: false, type: :int}, 
          {name: :aircrafttype, required: false, array: false, type: :string}, 
          {name: :display_aircrafttype, required: false, array: false, type: :string}, 
          {name: :full_aircrafttype, required: false, array: false, type: :string}, 
          {name: :terminal_dest, required: false, array: false, type: :string}, 
          {name: :gate_dest, required: false, array: false, type: :string}, 
          {name: :terminal_orig, required: false, array: false, type: :string}, 
          {name: :gate_orig, required: false, array: false, type: :string}, 
          {name: :bag_claim, required: false, array: false, type: :string}, 
          {name: :seats_cabin_first, required: false, array: false, type: :int}, 
          {name: :seats_cabin_business, required: false, array: false, type: :int}, 
          {name: :seats_cabin_coach, required: false, array: false, type: :int}, 
          {name: :inbound_faFlightID, required: false, array: false, type: :string}, 
          {name: :datalink, required: false, array: false, type: :boolean}, 
          {name: :adhoc, required: true, array: false, type: :boolean}, 
        ]
      end

      class FlightRouteStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :name, required: true, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :latitude, required: false, array: false, type: :float}, 
          {name: :longitude, required: false, array: false, type: :float}, 
          {name: :distance_from_origin, required: false, array: false, type: :float}, 
          {name: :distance_to_destination, required: false, array: false, type: :float}, 
          {name: :distance_this_leg, required: false, array: false, type: :float}, 
          {name: :outbound_course, required: false, array: false, type: :float}, 
        ]
      end

      class ForecastCloudsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :symbol, required: true, array: false, type: :string}, 
          {name: :coverage, required: false, array: false, type: :string}, 
          {name: :altitude, required: false, array: false, type: :string}, 
          {name: :special, required: false, array: false, type: :string}, 
        ]
      end

      class ForecastLineStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :forecast_line_type, required: true, array: false, type: :string}, 
          {name: :forecast_line_start, required: true, array: false, type: :int}, 
          {name: :forecast_line_end, required: true, array: false, type: :int}, 
          {name: :winds, required: false, array: false, type: :ForecastWindStruct}, 
          {name: :windshear, required: false, array: false, type: :ForecastWindshear}, 
          {name: :visibility, required: false, array: false, type: :ForecastVisibilityStruct}, 
          {name: :clouds, required: false, array: true, type: :ForecastCloudsStruct}, 
          {name: :turbulence_layers, required: false, array: false, type: :string}, 
          {name: :icing_layers, required: false, array: false, type: :string}, 
          {name: :barometric, required: false, array: false, type: :string}, 
          {name: :significant_weather, required: false, array: false, type: :string}, 
        ]
      end

      class ForecastVisibilityStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :symbol, required: true, array: false, type: :string}, 
          {name: :visibility, required: true, array: false, type: :string}, 
          {name: :units, required: false, array: false, type: :string}, 
        ]
      end

      class ForecastWindshear
        include Flightxml::BasicObject

        self.attributes = [
          {name: :symbol, required: true, array: false, type: :string}, 
          {name: :height, required: true, array: false, type: :string}, 
          {name: :direction, required: true, array: false, type: :string}, 
          {name: :speed, required: false, array: false, type: :string}, 
          {name: :units, required: false, array: false, type: :string}, 
        ]
      end

      class ForecastWindStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :symbol, required: true, array: false, type: :string}, 
          {name: :direction, required: true, array: false, type: :string}, 
          {name: :speed, required: true, array: false, type: :int}, 
          {name: :units, required: false, array: false, type: :string}, 
          {name: :peak_gusts, required: false, array: false, type: :int}, 
        ]
      end

      class GetFlightTrackResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :GetFlightTrackResult, required: true, array: false, type: :ArrayOfTrackStruct}, 
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

      class NearbyAirportsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :NearbyAirportsResult, required: true, array: false, type: :NearbyAirportsStruct}, 
        ]
      end

      class NearbyAirportsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :airports, required: true, array: true, type: :AirportStruct}, 
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
          {name: :filed_altitude_min, required: true, array: false, type: :int}, 
          {name: :filed_altitude_max, required: true, array: false, type: :int}, 
          {name: :last_departuretime, required: true, array: false, type: :int}, 
          {name: :route_distance, required: false, array: false, type: :string}, 
          {name: :aircrafttypes, required: true, array: false, type: :string}, 
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

      class Timestamp
        include Flightxml::BasicObject

        self.attributes = [
          {name: :epoch, required: true, array: false, type: :int}, 
          {name: :tz, required: false, array: false, type: :string}, 
          {name: :dow, required: false, array: false, type: :string}, 
          {name: :time, required: false, array: false, type: :string}, 
          {name: :date, required: false, array: false, type: :string}, 
          {name: :localtime, required: false, array: false, type: :int}, 
        ]
      end

      class TrackAirportStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :num_flights, required: true, array: false, type: :int}, 
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :flights, required: false, array: true, type: :FlightInfoStatusStruct}, 
        ]
      end

      class TrackFleetStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :num_flights, required: true, array: false, type: :int}, 
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :flights, required: false, array: true, type: :FlightInfoStatusStruct}, 
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
          {name: :altitude_status, required: true, array: false, type: :string}, 
          {name: :update_type, required: true, array: false, type: :string}, 
          {name: :altitude_change, required: true, array: false, type: :string}, 
          {name: :altitude_feet, required: false, array: false, type: :int}, 
          {name: :heading, required: false, array: false, type: :int}, 
        ]
      end

      class WeatherConditionsArrayStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :next_offset, required: true, array: false, type: :int}, 
          {name: :conditions, required: true, array: true, type: :WeatherConditionsStruct}, 
        ]
      end

      class WeatherConditionsCloudStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :symbol, required: true, array: false, type: :string}, 
          {name: :type, required: true, array: false, type: :string}, 
          {name: :altitude, required: false, array: false, type: :int}, 
        ]
      end

      class WeatherConditionsResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :WeatherConditionsResult, required: true, array: false, type: :WeatherConditionsArrayStruct}, 
        ]
      end

      class WeatherConditionsStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport_code, required: true, array: false, type: :string}, 
          {name: :time, required: true, array: false, type: :int}, 
          {name: :cloud_friendly, required: true, array: false, type: :string}, 
          {name: :clouds, required: false, array: true, type: :WeatherConditionsCloudStruct}, 
          {name: :conditions, required: true, array: false, type: :string}, 
          {name: :pressure, required: true, array: false, type: :float}, 
          {name: :pressure_units, required: true, array: false, type: :string}, 
          {name: :temp_air, required: true, array: false, type: :int}, 
          {name: :temp_dewpoint, required: true, array: false, type: :int}, 
          {name: :temp_relhum, required: true, array: false, type: :int}, 
          {name: :temp_perceived, required: true, array: false, type: :string}, 
          {name: :visibility, required: true, array: false, type: :float}, 
          {name: :visibility_units, required: true, array: false, type: :string}, 
          {name: :wind_friendly, required: true, array: false, type: :string}, 
          {name: :wind_direction, required: true, array: false, type: :int}, 
          {name: :wind_speed, required: true, array: false, type: :int}, 
          {name: :wind_speed_gust, required: true, array: false, type: :int}, 
          {name: :wind_units, required: true, array: false, type: :string}, 
          {name: :raw_data, required: true, array: false, type: :string}, 
        ]
      end

      class WeatherForecastResults
        include Flightxml::BasicObject

        self.attributes = [
          {name: :WeatherForecastResult, required: true, array: false, type: :WeatherForecastStruct}, 
        ]
      end

      class WeatherForecastStruct
        include Flightxml::BasicObject

        self.attributes = [
          {name: :airport_code, required: true, array: false, type: :string}, 
          {name: :timestring, required: true, array: false, type: :string}, 
          {name: :raw_forecast, required: true, array: true, type: :string}, 
          {name: :decoded_forecast, required: false, array: false, type: :DecodedForecastStruct}, 
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
