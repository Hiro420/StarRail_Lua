local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumNewTurnHintDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.Target.MuseumTargetMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.Target.MuseumTargetMissionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumFundResultItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumFundResultItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumNewTurnHintDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "5034"
L2_1 = 3
L3_1 = "MuseumPopUpTip"
L4_1 = "MuseumScheduleHint_FadeIn"
L5_1 = "Begin_Fund_Add"
L6_1 = 999
L7_1 = 20000000
L8_1 = "UIText_ActivityMuseum_MaxFund"
L9_1 = CS
L9_1 = L9_1.RPG
L9_1 = L9_1.Client
L9_1 = L9_1.GlobalVars
L9_1 = L9_1.s_ModuleManager
L9_1 = L9_1.MuseumModule
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumNewTurnHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._fund_list = L1_2
  A0_2._cur_fund = 0
  A0_2._is_in_fade_in = true
end
L0_1.ctor = L10_1
function L10_1(A0_2)
  local L1_2
  L1_2 = L9_1.MuseumData
  A0_2._museum_data = L1_2
end
L0_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mission_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_mission_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_market_staff
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_staff_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event_root
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L4_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L2_1
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_turn_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fund_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_staff_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
end
L0_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event_str_notify
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_turn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2._museum_data
  L4_2 = L4_2.TurnCount
  L5_2 = L6_1
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_pre_turn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2._museum_data
  L4_2 = L4_2.TurnCount
  L4_2 = L4_2 - 1
  L5_2 = L6_1
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_turn_info = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._play_text_anim
    L2_2(L3_2)
  end
end
L0_1._on_animation_event_str_notify = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L9_1.MuseumTurnResultCache
  L2_2 = L1_2.TotalAreaFunds
  L3_2 = L1_2.BuffFunds
  L2_2 = L2_2 + L3_2
  A0_2._base_fund = L2_2
  L2_2 = L1_2.ExhibitSkillFunds
  A0_2._extra_fund = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_fund
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._extra_fund
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_fund_max
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_fund
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L8_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_extra_fund
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L8_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_fund
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_extra_fund
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_fund_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_fund_list = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_fund_max
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = L9_1.MuseumTurnResultCache
  L1_2 = L1_2.BuffFunds
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_fund_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_fund_tip
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_fund_tip
    L2_2 = L1_2
    L1_2 = L1_2.Sample
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.fund_anim
  L1_2.StartValue = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.fund_anim
  L2_2 = A0_2._base_fund
  L1_2.EndValue = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fund_anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._extra_fund
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.extra_fund_anim
    L1_2.StartValue = 0
    L1_2 = A0_2._binder
    L1_2 = L1_2.extra_fund_anim
    L2_2 = A0_2._extra_fund
    L1_2.EndValue = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.extra_fund_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
end
L0_1._play_text_anim = L10_1
function L10_1(A0_2)
  local L1_2
  A0_2._is_in_fade_in = false
end
L0_1._on_fade_in_end = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_fund_max
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_fund
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_extra_fund
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L8_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_fund
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._base_fund
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_extra_fund
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._extra_fund
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.fund_anim
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.extra_fund_anim
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
end
L0_1._skip_fade_in = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  L3_2.Name = A1_2
  L3_2.Funds = A2_2
  return L3_2
end
L0_1._create_fund_data = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._museum_data
  L1_2 = L1_2.MuseumTargetData
  L1_2 = L1_2.HaveTarget
  if L1_2 then
    L1_2 = L9_1.IsTargetUnlock
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.mission_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._museum_data
    L2_2 = L2_2.MuseumTargetData
    L2_2 = L2_2.CurTarget
    A0_2._museum_target = L2_2
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_dict
    L3_2 = A0_2._museum_target
    L3_2 = L3_2.Missions
    L2_2 = L2_2(L3_2)
    A0_2._target_missions = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mission
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._target_missions
    L4_2 = #L4_2
    L4_2 = 0 < L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._target_missions
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.mission_list
      L3_2 = L2_2
      L2_2 = L2_2.SetListItemCount
      L4_2 = A0_2._target_missions
      L4_2 = #L4_2
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.mission_list
      L3_2 = L2_2
      L2_2 = L2_2.RefreshAllShownItem
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mission
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_target_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._museum_data
  L1_2 = L1_2.MuseumRandomEventData
  L2_2 = L1_2.OnTurnEventCache
  L3_2 = L2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_market
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = {}
    A0_2._staff_datas = L4_2
    L4_2 = 0
    L5_2 = L2_2.EventTypeParameter
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L2_2.EventTypeParameter
      L8_2 = L8_2[L7_2]
      L9_2 = L9_1
      L10_2 = L9_2
      L9_2 = L9_2.GetStaffData
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._staff_datas
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_market_staff
    L5_2 = L4_2
    L4_2 = L4_2.SetListItemCount
    L6_2 = A0_2._staff_datas
    L6_2 = #L6_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_market_staff
    L5_2 = L4_2
    L4_2 = L4_2.RefreshAllShownItem
    L4_2(L5_2)
  end
end
L0_1._setup_staff_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MuseumNewTurnHintEnd
  L1_2(L2_2)
end
L0_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_fade_in
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._skip_fade_in
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_empty_close = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MuseumTargetMissionPanel
    L8_2 = G
    L8_2 = L8_2.MuseumTargetMissionPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_data
  L7_2 = A0_2._museum_target
  L8_2 = A0_2._target_missions
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_mission_item_change = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.MuseumStaffHintPanel
  L8_2 = G
  L8_2 = L8_2.MuseumStaffHintPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._staff_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_staff_item_change = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MuseumFundResultItemPanel
    L8_2 = G
    L8_2 = L8_2.MuseumFundResultItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._fund_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_fund_item_change = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._museum_data
  L1_2 = L1_2.CurFunds
  L2_2 = L7_1
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L0_1._is_fund_max = L10_1
return L0_1
