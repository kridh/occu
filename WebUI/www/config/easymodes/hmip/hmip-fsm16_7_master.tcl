#!/bin/tclsh

source [file join $env(DOCUMENT_ROOT) config/easymodes/etc/hmipWeeklyProgram.tcl]

source [file join /www/config/easymodes/em_common.tcl]

#Namen der EasyModes tauchen nicht mehr auf. Der Durchg�ngkeit werden sie hier noch definiert.
set PROFILES_MAP(0)  "Experte"
set PROFILES_MAP(1)  "TheOneAndOnlyEasyMode"

proc set_htmlParams {iface address pps pps_descr special_input_id peer_type} {

  global env iface_url psDescr
  
  upvar PROFILES_MAP  PROFILES_MAP
  upvar HTML_PARAMS   HTML_PARAMS
  upvar PROFILE_PNAME PROFILE_PNAME
  upvar $pps          ps
  upvar $pps_descr    psDescr

  upvar PROFILE_1     PROFILE_1

  append HTML_PARAMS(separate_1) "<table class=\"ProfileTbl\">"

    append HTML_PARAMS(separate_1) [getWeeklyProgram $address ps]

  append HTML_PARAMS(separate_1) "</table>"

}

constructor