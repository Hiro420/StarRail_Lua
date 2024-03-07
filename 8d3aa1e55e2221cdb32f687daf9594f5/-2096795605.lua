local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OperationModule"
L2_1 = "Logic.BaseModule"
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = 60
L2_1 = 5 * L1_1
L3_1 = 1
L4_1 = 3600
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.OperationModule
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.ScheduleModule
L7_1 = "cloud_game_url"
function L8_1(A0_2)
  local L1_2
  A0_2.pause = true
  A0_2._inited = false
  A0_2._need_tick_announce = false
  A0_2._time_refresh_announce = 0
  A0_2._stripe_showing = false
  A0_2._notify_showing = false
  L1_2 = L4_1
  A0_2._time_refresh_im = L1_2
  A0_2._has_seen_community = nil
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1.dtor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_need_tick_announce
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PAADGJJIBLI
  L4_2 = L0_1._refresh_need_tick_announce
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.InitNotify = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._inited = true
end
L0_1.Init = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.pause
  if not L2_2 then
    L2_2 = A0_2._inited
    if L2_2 ~= false then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2
  L2_2 = A0_2._check_tick_announce
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.tick = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L5_1
  L1_2 = L1_2 ~= nil
  A0_2._need_tick_announce = L1_2
end
L0_1._refresh_need_tick_announce = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._need_tick_announce
  if L2_2 == false then
    return
  end
  L2_2 = A0_2._time_refresh_announce
  L2_2 = L2_2 + A1_2
  A0_2._time_refresh_announce = L2_2
  L2_2 = A0_2._time_refresh_announce
  L3_2 = L3_1
  if L2_2 > L3_2 then
    L2_2 = A0_2._time_refresh_announce
    L3_2 = L3_1
    L2_2 = L2_2 - L3_2
    A0_2._time_refresh_announce = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._tick_announce_list
    L2_2(L3_2)
  end
end
L0_1._check_tick_announce = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L5_1.AnnounceDataList
  L2_2 = L1_2.Count
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TimeManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.NowTimeStamp
  L4_2 = 0
  L5_2 = L2_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    if L8_2 ~= nil then
      L10_2 = A0_2
      L9_2 = A0_2._refresh_announce
      L11_2 = L8_2
      L12_2 = L3_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L4_2 = L2_2 - 1
  L5_2 = 0
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    if L8_2 ~= nil then
      L9_2 = L8_2.EndTime
      if not (L3_2 >= L9_2) then
        goto lbl_34
      end
    end
    L10_2 = L1_2
    L9_2 = L1_2.RemoveAt
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    ::lbl_34::
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_need_tick_announce
  L4_2(L5_2)
end
L0_1._tick_announce_list = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.BeginTime
  if not (A2_2 < L3_2) then
    L3_2 = A1_2.EndTime
    if not (A2_2 >= L3_2) then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A1_2.AlreadyShowed
  if L3_2 == false then
    L4_2 = A0_2
    L3_2 = A0_2._try_to_show_announce
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A1_2
    L3_2 = A1_2.SetAlreadyShowed
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = 0
    L4_2 = A1_2.IsCenterSystemLast5EveryMinutes
    if L4_2 then
      L4_2 = A1_2.EndTime
      L5_2 = L2_1
      L4_2 = L4_2 - L5_2
      if A2_2 >= L4_2 then
        L3_2 = L1_1
    end
    else
      L4_2 = A1_2.Frequency
      L5_2 = L1_1
      L3_2 = L4_2 * L5_2
    end
    L4_2 = A1_2.LastShowTime
    L4_2 = L4_2 + L3_2
    if A2_2 >= L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._try_to_show_announce
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
      L5_2 = A1_2
      L4_2 = A1_2.SetAlreadyShowed
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._refresh_announce = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.IsStripe
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_to_show_stripe
    L4_2 = A1_2.TipText
    L5_2 = A1_2.AlreadyShowed
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_to_show_notify
    L4_2 = A1_2.TipText
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_to_show_announce = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._stripe_showing
  if L3_2 == true then
    return
  end
  A0_2._stripe_showing = true
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Operation.StripeDialog"
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2.LuaTable
  L5_2 = L4_2
  L4_2 = L4_2.set_exit_callback
  function L6_2()
    local L0_3, L1_3
    A0_2._stripe_showing = false
  end
  L4_2(L5_2, L6_2)
end
L0_1._try_to_show_stripe = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._notify_showing
  if L2_2 == true then
    return
  end
  A0_2._notify_showing = true
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Operation.OperationNotifyDialog"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3
    A0_2._notify_showing = false
  end
  L3_2(L4_2, L5_2)
end
L0_1._try_to_show_notify = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "official_community_url"
  L3_2 = A0_2
  L2_2 = A0_2._has_dispatch_url
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L4_2 = A0_2
  L3_2 = A0_2._get_dispatch_url
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.SeenOfficialCommunityURL = L3_2
end
L0_1.record_community_seen = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.LEADLGGKPEC
  if L1_2 ~= nil then
    L2_2 = L1_2.HasOfficialCommunityURL
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_14::
  L2_2 = L1_2.IOSExam
  if L2_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = "official_community_url"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L6_2 = A0_2
  L5_2 = A0_2._is_dispatch_url_new
  L7_2 = L3_2
  L8_2 = L4_2.SeenOfficialCommunityURL
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L5_2 = not L5_2
  return L5_2
end
L0_1.has_seen_community = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 then
    L2_2 = L1_2.LastSeenCommunityActivityID
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCommunityActivityScheduleData
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.ActivityID
  L1_2.LastSeenCommunityActivityID = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ReddotRefreshCommunityActivity
  L3_2(L4_2)
end
L0_1.record_community_activity_seen = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.LEADLGGKPEC
  if L1_2 ~= nil then
    L2_2 = L1_2.IOSExam
    if not L2_2 then
      goto lbl_14
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_14::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  if L2_2 then
    L3_2 = L2_2.LastSeenCommunityActivityID
    if L3_2 then
      goto lbl_26
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_26::
  L3_2 = L6_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCommunityActivityScheduleData
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.in_community_activity_schedule
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L2_2.LastSeenCommunityActivityID
  L5_2 = L3_2.ActivityID
  L4_2 = L4_2 ~= L5_2
  return L4_2
end
L0_1.has_new_community_activity = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.OAKPAFBNBAF
  L3_2 = "community_activity_url"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L6_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCommunityActivityScheduleData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L0_1.in_community_activity_schedule = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "hot_point_url"
  L3_2 = A0_2
  L2_2 = A0_2._has_dispatch_url
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L4_2 = A0_2
  L3_2 = A0_2._get_dispatch_url
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.SeenHotPointURL = L3_2
end
L0_1.record_hot_point_seen = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = "hot_point_url"
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L4_2 = A0_2
  L3_2 = A0_2._is_dispatch_url_new
  L5_2 = L1_2
  L6_2 = L2_2.SeenHotPointURL
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = not L3_2
  return L3_2
end
L0_1.has_seen_hot_point = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._has_dispatch_url
  L3_2 = L7_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L3_2 = A0_2
  L2_2 = A0_2._get_dispatch_url
  L4_2 = L7_1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.SeenCloudGameURL = L2_2
end
L0_1.record_cloud_game_seen = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L3_2 = A0_2
  L2_2 = A0_2._is_dispatch_url_new
  L4_2 = L7_1
  L5_2 = L1_2.SeenCloudGameURL
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = not L2_2
  return L2_2
end
L0_1.has_seen_cloud_game = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L2_2 = L2_2.LEADLGGKPEC
  if L2_2 ~= nil then
    L3_2 = L2_2.ServerUrlDict
    if L3_2 ~= nil then
      goto lbl_14
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_14::
  L3_2 = L2_2.ServerUrlDict
  L4_2 = L3_2
  L3_2 = L3_2.ContainsKey
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._has_dispatch_url = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._has_dispatch_url
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L2_2 = L2_2.LEADLGGKPEC
  L3_2 = L2_2.ServerUrlDict
  L4_2 = L3_2
  L3_2 = L3_2.get_Item
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._get_dispatch_url = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._has_dispatch_url
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_dispatch_url
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = A2_2 ~= L3_2
  return L4_2
end
L0_1._is_dispatch_url_new = L8_1
return L0_1
