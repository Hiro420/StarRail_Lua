local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = 4
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ResidentActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = {}
  A0_2._order_id_2_good_ids = L1_2
  A0_2._is_new_day = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_activity_new_day_reddot
  L1_2(L2_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._order_id_2_good_ids = nil
end
L0_1.dtor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = "AlleyEntrance"
  return L1_2
end
L0_1.get_associate_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyActivityGoClicked
  L4_2 = L0_1._refresh_activity_new_day_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = L0_1._refresh_activity_new_day_reddot
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyActivityGoClicked
  L4_2 = L0_1._refresh_activity_new_day_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = L0_1._refresh_activity_new_day_reddot
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_activity_panel_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_event
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_renown_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_transport_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_pack_event_new_order
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_pack_new_stage
  L1_2(L2_2)
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurTrackMissionID
  L1_2 = L1_2(L2_2)
  A0_2._track_mission_id = L1_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.IsRedDotMission
  L3_2 = A0_2._track_mission_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyActivityNewMission"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_new_day
  if L1_2 then
    L1_2 = L1_1.MaxFinishedMainEventStage
    L2_2 = L1_1.MainEvents
    L2_2 = L2_2.Count
    if L1_2 < L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_ModuleManager
      L1_2 = L1_2.ActivityModule
      L2_2 = L1_2
      L1_2 = L1_2.GetAlleyActivityData
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L1_2 = G
        L1_2 = L1_2.RedDotModule
        L1_2 = L1_2.Instance
        L2_2 = L1_2
        L1_2 = L1_2.update_reddot
        L3_2 = "AlleyActivityNewDay"
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._refresh_activity_panel_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.AlleyAvatarRewardSeen
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyAvatarNew"
    L1_2(L2_2, L3_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CanReceiveAvatarReward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyAvatarReward"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_avatar_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.AlleyQuestRewardSeen
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyQuestNew"
    L1_2(L2_2, L3_2)
  end
  L1_2 = 0
  L2_2 = L1_1.TransportRewardRows
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.CanReceiveTabQuestReward
    L7_2 = 1
    L8_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L5_2 = G
      L5_2 = L5_2.RedDotModule
      L5_2 = L5_2.Instance
      L6_2 = L5_2
      L5_2 = L5_2.update_reddot
      L7_2 = "AlleyTransportQuestReward"
      L8_2 = L4_2 + 1
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L1_2 = 0
  L2_2 = L1_1.GoodsRewardRows
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.CanReceiveTabQuestReward
    L7_2 = 2
    L8_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L5_2 = G
      L5_2 = L5_2.RedDotModule
      L5_2 = L5_2.Instance
      L6_2 = L5_2
      L5_2 = L5_2.update_reddot
      L7_2 = "AlleyGoodsQuestReward"
      L8_2 = L4_2 + 1
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1._refresh_quest_tab = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckHasUnseenStageInfoPage
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyEventNew"
    L1_2(L2_2, L3_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFinishedEventIDs
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "AlleyEventReward"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._try_update_activity_new_content_reddot
    L6_2(L7_2)
  end
end
L0_1._refresh_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CanPayStamp
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyRenownReward"
    L4_2 = 1
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CanReceiveRenownReward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyRenownReward"
    L4_2 = 2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_renown_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetUnlockAlleyMapLayerList
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L1_2[L6_2]
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.GetAlleyMapIDByLayer
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.CheckHasNewShopTipByMapID
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = L1_1
        L10_2 = L9_2
        L9_2 = L9_2.CheckHasNewBuffTipByMapID
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = L1_1
          L10_2 = L9_2
          L9_2 = L9_2.CheckHasNewUnClickedBuffTipByMapID
          L11_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2)
          if not L9_2 then
            goto lbl_49
          end
        end
      end
      L9_2 = G
      L9_2 = L9_2.RedDotModule
      L9_2 = L9_2.Instance
      L10_2 = L9_2
      L9_2 = L9_2.update_reddot
      L11_2 = string
      L11_2 = L11_2.format
      L12_2 = "AlleyTransportMapLayer_%s"
      L13_2 = L7_2
      L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = L3_1
      if L7_2 ~= L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2._try_update_activity_new_content_reddot
        L9_2(L10_2)
      end
      ::lbl_49::
    end
  end
end
L0_1._refresh_transport_tab = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPackUnSeenOrderEventID
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.update_reddot
  L4_2 = "AlleyPackOrderEvent"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_update_activity_new_content_reddot
  L2_2(L3_2)
  L2_2 = L1_1.CurOrderData
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_new_good_ids
  L5_2 = L2_2.OrderID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = G
    L9_2 = L9_2.RedDotModule
    L9_2 = L9_2.Instance
    L10_2 = L9_2
    L9_2 = L9_2.update_reddot
    L11_2 = "AlleyPackGoodNew"
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1._refresh_pack_event_new_order = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._order_id_2_good_ids
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._order_id_2_good_ids
    L2_2 = L2_2[A1_2]
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetNewGoodsIDs
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._order_id_2_good_ids
  L3_2[A1_2] = L2_2
  return L2_2
end
L0_1._get_new_good_ids = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ShowPackUnSeenStage
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyPackNewStage"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_pack_new_stage = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.AlleyActivityGoTimeStamp
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_TimeManager
  L3_2 = L2_2
  L2_2 = L2_2.TimeStampCrossDailyUpdate
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._is_new_day = L2_2
end
L0_1._refresh_activity_new_day_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsFinishConditionsCompleted
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._track_mission_id
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AlleyActivityNewContent"
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_update_activity_new_content_reddot = L4_1
return L0_1
