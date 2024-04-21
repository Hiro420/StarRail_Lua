local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.ActivityMonopolyJackpotProgressDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyJackpotProgressDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyJackpotProgressDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.JackpotInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetProgressPhaseIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._normal_item_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.Progress
  A0_2._current_progress = L1_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.IsProgressExtra
  A0_2._in_extra = L1_2
end
L1_1._update_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Common_PercentValue"
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.1f"
  L6_2 = A0_2._current_progress
  L6_2 = L6_2 / 10
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._in_extra
  if L3_2 then
    L3_2 = "UIText_ActivityMonopoly_RewardDetail_ProgressExtra"
  end
  L4_2 = "UIText_ActivityMonopoly_RewardDetail_ProgressTips"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_in_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._in_extra
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_extra
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._in_extra
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bar_normal_percent
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = 1
  L4_2 = A0_2._current_progress
  L5_2 = L0_1.JackpotInfo
  L5_2 = L5_2.NormalMaxProgress
  L4_2 = L4_2 / L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.value = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_normal_items
  L1_2(L2_2)
  L1_2 = A0_2._in_extra
  if L1_2 then
    L1_2 = A0_2._current_progress
    L2_2 = L0_1.JackpotInfo
    L2_2 = L2_2.NormalMaxProgress
    L1_2 = L1_2 - L2_2
    L2_2 = L0_1.JackpotInfo
    L2_2 = L2_2.ExtraMaxProgress
    L3_2 = L0_1.JackpotInfo
    L3_2 = L3_2.NormalMaxProgress
    L2_2 = L2_2 - L3_2
    L1_2 = L1_2 / L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.bar_extra_percent
    L3_2 = math
    L3_2 = L3_2.min
    L4_2 = 1
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.value = L3_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_extra_items
    L2_2(L3_2)
  end
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_zero_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_normal_items
  L1_2 = #L1_2
  L2_2 = A0_2._normal_item_ids
  L2_2 = #L2_2
  if L1_2 < L2_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "MonopolyServerRewardPreviewDialog.prefab: lack point"
    L1_2(L2_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_normal_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._normal_item_ids
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2 ~= nil
    L9_2 = L5_2
    L8_2 = L5_2.safe_set_active
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MonopolyPhaseRewardExcelTable
      L8_2 = L8_2.GetData
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2.ProgressValue
      L10_2 = L8_2.RewardID
      L12_2 = L5_2
      L11_2 = L5_2.setup_view
      L13_2 = L9_2
      L14_2 = L10_2
      L11_2(L12_2, L13_2, L14_2)
      L12_2 = L5_2
      L11_2 = L5_2.show_reward
      L13_2 = A0_2._in_extra
      L13_2 = not L13_2
      L11_2(L12_2, L13_2)
    end
  end
end
L1_1._refresh_normal_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1.JackpotInfo
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_extra_items
  L2_2 = #L2_2
  L3_2 = L1_2.JackpotMaxLevel
  if L2_2 < L3_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "MonopolyServerRewardPreviewDialog.prefab: lack point"
    L2_2(L3_2)
  end
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_extra_items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2.JackpotMaxLevel
    L7_2 = L5_2 <= L7_2
    L9_2 = L6_2
    L8_2 = L6_2.safe_set_active
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L8_2 = L1_2.ExtraMaxProgress
      L9_2 = L1_2.NormalMaxProgress
      L8_2 = L8_2 - L9_2
      L8_2 = L8_2 * L5_2
      L9_2 = L1_2.JackpotMaxLevel
      L8_2 = L8_2 / L9_2
      L9_2 = L1_2.NormalMaxProgress
      L8_2 = L8_2 + L9_2
      L10_2 = L6_2
      L9_2 = L6_2.setup_view
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L1_1._refresh_extra_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._in_extra
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_normal_items
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._on_enter_zoom = L2_1
return L1_1
