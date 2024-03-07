local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.MailModule.MailData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.MailModule.MailFactory"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ItemFactory
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MailModule"
L4_1 = "Logic.BaseModule"
L2_1 = L2_1(L3_1, L4_1)
L2_1._max_mail_count = 1000
L2_1._max_end_id = 999
L2_1._default_error_num = 20
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  A0_2._mails = L1_2
  A0_2._mail_total_num = 0
  A0_2._error_num = 0
  L1_2 = {}
  A0_2._mails_after_login = L1_2
  A0_2.reddot_new_mail = false
  A0_2._reconnected_after_last_req_mail = false
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mails
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = A0_2._mails
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._mails
  L1_2(L2_2)
end
L2_1.dtor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ODAAPCLKABP
  L4_2 = L2_1._on_cmd_get_mail_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1.InitNotify = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ModuleManager
  L1_2 = L1_2.RegistModuleInitRequest
  L2_2 = CS
  L2_2 = L2_2.NIJNBICAPPA
  L2_2 = L2_2.DJMHKICCAPL
  L3_2 = A0_2
  L4_2 = L2_1._on_init_req
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PCLOJMMGEGN
  L4_2 = L2_1._on_cmd_del_mail_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.OGFACJENAID
  L4_2 = L2_1._on_cmd_take_mail_attachment_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.JAOFONDNFMN
  L4_2 = L2_1._on_cmd_new_mail_sc_notify
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1.Init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_mails
  L1_2(L2_2)
  A0_2._init_req_finish = false
  A0_2._reconnected_after_last_req_mail = true
  L2_2 = A0_2
  L1_2 = A0_2._on_init_req
  L1_2(L2_2)
end
L2_1.OnReconnect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_mails
  L1_2(L2_2)
end
L2_1.clear_old_mails = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.MGIKMKEDHEJ
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L2_1.delete_mail_read = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.MGIKMKEDHEJ
  L4_2 = {}
  L5_2 = A1_2
  L4_2[1] = L5_2
  L2_2(L3_2, L4_2)
end
L2_1.delete_mail = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L5_2 = L3_2
  L4_2 = L3_2.Add
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_NetworkManager
  L5_2 = L4_2
  L4_2 = L4_2.HFNDIGIHOAI
  L6_2 = L3_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L2_1.get_mail_attachment = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._try_get_mail
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if nil == L2_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "Mail not exists, mailID: "
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.delete_mail_new
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.IsRead
  if not L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.has_reward
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L2_2.IsRead = true
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_NetworkManager
      L4_2 = L3_2
      L3_2 = L3_2.KIKBJNABBKO
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L2_1.read_mail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.HFNDIGIHOAI
  L3_2 = nil
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.get_all_attachment = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if nil == A2_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = L2_1._default_error_num
    L5_2 = A0_2._error_num
    L3_2 = L3_2(L4_2, L5_2)
    A2_2 = L3_2
    A0_2._error_num = 0
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_local_mail_count
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 - A2_2
  L4_2 = A0_2._has_new_mail
  if not L4_2 then
    L4_2 = A0_2._reconnected_after_last_req_mail
    if not L4_2 then
      goto lbl_22
    end
  end
  A0_2._has_new_mail = false
  L3_2 = 0
  goto lbl_28
  ::lbl_22::
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = L3_2
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  ::lbl_28::
  L4_2 = L3_2 + A1_2
  L4_2 = L4_2 + A2_2
  L4_2 = L4_2 - 1
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L4_2
  L7_2 = L2_1._max_end_id
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.get_mail
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L2_1.request_load_more_mail = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Log
  L4_2 = "[Mail] get_mail, startId:"
  L5_2 = A1_2
  L6_2 = " endId:"
  L7_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.IDDMKHMPAGE
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1.get_mail = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._mail_total_num
  return L1_2
end
L2_1.get_total_num = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._has_new_mail
  return L1_2
end
L2_1.get_has_new_mail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._mails
  L2_2 = L1_2
  L1_2 = L1_2.GetData
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_is_expired
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  L5_2 = L2_1._mail_sort_function
  L3_2(L4_2, L5_2)
  return L2_2
end
L2_1.get_mail_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._try_get_mail
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L2_1.get_mail_data_by_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mails
  L2_2 = L1_2
  L1_2 = L1_2.GetData
  return L1_2(L2_2)
end
L2_1.get_origin_mail_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.ID
    L8_2 = L6_2.ID
    if L7_2 == L8_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L2_1._find = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.get_mail_data
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.has_reward
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L2_1.has_reward_mail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.get_mail_data
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.has_optional_reward
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L2_1.has_optional_reward_mail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_mail_data
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsRead
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L2_1.has_mail_read = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == "OpenURL1" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLInExternalBrowser
    L5_2 = A2_2
    L6_2 = A3_2
    L4_2(L5_2, L6_2)
  elseif A1_2 == "OpenURL2" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLInEmbeddedBrowser
    L5_2 = A2_2
    L6_2 = A3_2
    L4_2(L5_2, L6_2)
  elseif A1_2 == "OpenURL3" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLDirect
    L5_2 = A2_2
    L6_2 = true
    L4_2(L5_2, L6_2)
  elseif A1_2 == "OpenURL4" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLDirect
    L5_2 = A2_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  elseif A1_2 == "None" then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogFormat
    L5_2 = "DO NOTHIING"
    L4_2(L5_2)
  else
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormatFormat
    L5_2 = "NO THIS TYPE "
    L6_2 = tostring
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
  end
end
L2_1.open_url = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A1_2
  L2_2 = A1_2.delete_new
  L2_2(L3_2)
  L2_2 = A0_2._mails_after_login
  L3_2 = A1_2.ID
  L2_2[L3_2] = nil
end
L2_1.delete_mail_new = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_sort_code
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.get_sort_code
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 - L3_2
  if L2_2 ~= 0 then
    L3_2 = L2_2 < 0
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.is_star
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.is_star
  L4_2 = L4_2(L5_2)
  if L3_2 ~= L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.is_star
    return L3_2(L4_2)
  end
  L3_2 = A1_2.RecieveTime
  L4_2 = A0_2.RecieveTime
  L3_2 = L3_2 < L4_2
  return L3_2
end
L2_1._mail_sort_function = L3_1
L3_1 = G
L3_1 = L3_1.new
L4_1 = G
L4_1 = L4_1.MailFactory
L3_1 = L3_1(L4_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.create_mail
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L2_1._create_mail = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._mails
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A1_2.ID
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._add_mail = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mails
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._mails
    L3_2 = L2_2
    L2_2 = L2_2.Value
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = nil
  return L2_2
end
L2_1._try_get_mail = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.create_mail
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2.IsNewAfterLogin = A3_2
  L5_2 = A0_2._mails
  L6_2 = L5_2
  L5_2 = L5_2.Add
  L7_2 = A1_2.ID
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L2_1._update_mail = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mails
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._delete_mail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mails
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L2_1._clear_mails = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mails
  L2_2 = L1_2
  L1_2 = L1_2.Count
  return L1_2(L2_2)
end
L2_1._get_local_mail_count = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._try_get_mail
    L9_2 = L6_2.Id
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = nil == L7_2
    if L8_2 then
      L10_2 = A0_2
      L9_2 = A0_2._create_mail
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2
      L9_2 = A0_2._mails_after_login
      L10_2 = L6_2.Id
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L7_2.IsNewAfterLogin = true
      end
      L10_2 = A0_2
      L9_2 = A0_2._add_mail
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._update_mail
      L11_2 = L7_2
      L12_2 = L6_2
      L13_2 = A0_2._mails_after_login
      L14_2 = L6_2.Id
      L13_2 = L13_2[L14_2]
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L2_1._update_mails = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._init_req_finish
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.request_load_more_mail
  L3_2 = L2_1._default_error_num
  L1_2(L2_2, L3_2)
end
L2_1._on_init_req = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetMailScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = L2_2.Retcode
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._update_mails
  L5_2 = L2_2.MailList
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.TotalNum
  A0_2._mail_total_num = L3_2
  L3_2 = L2_2.IsEnd
  A0_2._is_end = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._update_mails
  L5_2 = L2_2.NoticeMailList
  L3_2(L4_2, L5_2)
  A0_2.reddot_new_mail = false
  A0_2._init_req_finish = true
  A0_2._reconnected_after_last_req_mail = false
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.MailUpdated
  L3_2(L4_2)
end
L2_1._on_cmd_get_mail_sc_rsp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "MailModule get rsp: CmdMarkReadMailScRsp"
  L1_2(L2_2)
end
L2_1._on_cmd_mark_read_mail_sc_rsp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "MailModule get rsp: CmdTakeMailAttachmentScRsp"
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "TakeMailAttachmentScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = L2_2.Retcode
    L3_2(L4_2)
    return
  end
  L3_2 = pairs
  L4_2 = L2_2.SuccMailIdList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._try_get_mail
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if nil ~= L8_2 then
      L8_2.IsRead = true
      L10_2 = A0_2
      L9_2 = A0_2.delete_mail_new
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = {}
  L4_2 = L2_2.Attachment
  if L4_2 ~= nil then
    L4_2 = pairs
    L5_2 = L2_2.Attachment
    L5_2 = L5_2.ItemList_
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L0_1.CreateDisplayItemData
      L10_2 = L8_2.ItemId
      L11_2 = L8_2.Num
      L12_2 = L8_2.Level
      L13_2 = L8_2.UniqueId
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.MailGetItems
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L2_1._on_cmd_take_mail_attachment_sc_rsp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "NewMailScNotify"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = L2_2.MailIdList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._mails_after_login
    L8_2[L7_2] = true
  end
  A0_2._has_new_mail = true
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = L2_1._max_mail_count
  L5_2 = A0_2._mail_total_num
  L5_2 = L5_2 + 1
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._mail_total_num = L3_2
  L3_2 = L2_2.MailIdList
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  A0_2.reddot_new_mail = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.MailNoticeNew
  L3_2(L4_2)
end
L2_1._on_cmd_new_mail_sc_notify = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "MailModule get rsp: CmdDelMailScRsp"
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "DelMailScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowNetMsgHint
    L4_2 = L2_2.Retcode
    L3_2(L4_2)
    return
  end
  L3_2 = pairs
  L4_2 = L2_2.IdList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._delete_mail
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._mail_total_num
    L8_2 = L8_2 - 1
    A0_2._mail_total_num = L8_2
    L8_2 = A0_2._error_num
    L8_2 = L8_2 + 1
    A0_2._error_num = L8_2
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.MailUpdated
  L3_2(L4_2)
end
L2_1._on_cmd_del_mail_sc_rsp = L4_1
return L2_1
