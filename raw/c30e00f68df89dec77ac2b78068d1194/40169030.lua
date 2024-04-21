local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerMonsterGuestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerMainEntranceGuestPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerMainEntranceGuestPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.OfferingModule
L3_1 = "UIText_DrinkMaker_MainMenu_LockGo"
L4_1 = "UIText_DrinkMaker_MainEntrancePage_Start"
L5_1 = "UIText_DrinkMaker_MainEntrancePage_Guest"
L6_1 = "UIText_DrinkMaker_MainEntrancePage_NoGuest"
L7_1 = "UIText_DrinkMaker_TipsReward_Max"
function L8_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._panel_monster_guests = L3_2
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prediction
  L4_2 = A0_2._on_btn_prediction_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_if_unlock
  L1_2(L2_2)
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_in_service_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_lock_view
    L1_2(L2_2)
  end
end
L0_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_unlock = false
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurDayRow
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionData
  L4_2 = L1_2.CanStartSubMissionID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1.DrinkMakerBar
  L3_2 = L3_2.IsFreePhase
  if not L3_2 then
    if L2_2 == nil then
      goto lbl_24
    end
    L3_2 = L2_2.IsStart
    if not L3_2 then
      goto lbl_24
    end
  end
  A0_2._is_unlock = true
  do return end
  ::lbl_24::
  L3_2 = L1_1.DrinkMakerBar
  L3_2 = L3_2.ChatID
  if L3_2 == 0 then
    L3_2 = L1_1.DrinkMakerBar
    L3_2 = L3_2.SequenceId
    if L3_2 == 0 then
      L3_2 = L1_2.FinishDaySubMissionIDList
      L3_2 = L3_2[0]
      A0_2._lock_mission_id = L3_2
  end
  else
    L3_2 = L1_2.CanStartSubMissionID
    A0_2._lock_mission_id = L3_2
  end
end
L0_1._check_if_unlock = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurSequenceIndex
  A0_2._cur_seq_index = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.DrinkMakerBar
  L2_2 = L2_2.TodayGuestRows
  L1_2 = L1_2(L2_2)
  A0_2._guest_rows = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_entry
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_guest_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_big_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_small_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_prediction
  L1_2(L2_2)
end
L0_1._setup_in_service_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_entry
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_guest_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_lock_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.DrinkMakerBar
  L1_2 = L1_2.CurGuestRow
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_monster
  L5_2 = L1_2.BigIconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_inner_line
  L5_2 = L1_2.LinePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_outer_line
  L5_2 = L1_2.LinePath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_big_icon_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._guest_rows
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._panel_monster_guests
    L5_2 = L5_2[L4_2]
    if L5_2 == nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.prefab_monsters
      L6_2 = L6_2.Prefab
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = L6_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.prefab_monsters
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.DrinkMakerMonsterGuestPanel
      L11_2 = G
      L11_2 = L11_2.DrinkMakerMonsterGuestPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L5_2 = L8_2
      L9_2 = L5_2
      L8_2 = L5_2.bind
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._panel_monster_guests
      L8_2[L4_2] = L5_2
    end
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._guest_rows
    L8_2 = L8_2[L4_2]
    L9_2 = A0_2._cur_seq_index
    L9_2 = L4_2 < L9_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._setup_small_icon_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsTipReachLimit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_tip_prediction
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L7_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_prediction_text
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = 0
  L3_2 = 0
  L4_2 = 1
  L5_2 = A0_2._guest_rows
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._guest_rows
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.GuestID
    L9_2 = G
    L9_2 = L9_2.DrinkMakerBarUtils
    L9_2 = L9_2.get_guest_expected_tips
    L10_2 = L8_2
    L9_2, L10_2 = L9_2(L10_2)
    L2_2 = L2_2 + L9_2
    L3_2 = L3_2 + L10_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_tip_prediction
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L2_2
  L7_2 = "~"
  L8_2 = L3_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_prediction = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = L1_1.DrinkMakerBar
    L1_2 = L1_2.CurChatRow
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.DrinkMakerTriggerBartend
    L4_2 = L1_2.PerformanceID
    L2_2(L3_2, L4_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L3_2 = L1_2
    L2_2 = L1_2.GetSubMissionRow
    L4_2 = A0_2._lock_mission_id
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L1_2
    L3_2 = L1_2.GetMainMissionRow
    L5_2 = L2_2.MainMissionID
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = G
    L4_2 = L4_2.GotoManager
    L4_2 = L4_2.Goto
    L5_2 = 700
    L6_2 = {}
    L7_2 = L3_2.Type
    L7_2 = #L7_2
    L8_2 = L3_2.MainMissionID
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_btn_root_clicked = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.DrinkMaker.Entrance.DrinkMakerGuestPredictionDialog"
  L1_2(L2_2)
end
L0_1._on_btn_prediction_clicked = L8_1
return L0_1
