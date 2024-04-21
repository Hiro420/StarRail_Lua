local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyJackpotPhaseItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._phase_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonopolyPhaseRewardExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._phase_id
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ProgressValue
  L4_2 = L0_1.JackpotInfo
  L5_2 = L4_2
  L4_2 = L4_2.IsProgressRewardTaken
  L6_2 = A0_2._phase_id
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L0_1.JackpotInfo
  L5_2 = L5_2.Progress
  L5_2 = L3_2 <= L5_2 and L5_2
  A0_2._is_available = L5_2
  L5_2 = L2_2.RewardID
  L6_2 = G
  L6_2 = L6_2.RewardUtils
  L6_2 = L6_2.CreateConfigIDList
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = {}
  end
  A0_2._config_id_list = L6_2
  L6_2 = math
  L6_2 = L6_2.modf
  L7_2 = L3_2 / 10
  L6_2 = L6_2(L7_2)
  L7_2 = pairs
  L8_2 = A0_2._binder
  L8_2 = L8_2.txts_progress
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L13_2 = L11_2
    L12_2 = L11_2.SafeSetTextID
    L14_2 = "UIText_ActivityMonopoly_Common_PercentValue"
    L15_2 = L6_2
    L12_2(L13_2, L14_2, L15_2)
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_available
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._is_available
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_taken
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_doing
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._is_available
  L9_2 = not L4_2 and L9_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_reward
  L8_2 = L7_2
  L7_2 = L7_2.setup_view_by_reward
  L9_2 = L5_2
  L10_2 = A0_2._is_available
  L11_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_reward
  L8_2 = L7_2
  L7_2 = L7_2.set_reddot
  L9_2 = A0_2._phase_id
  L7_2(L8_2, L9_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_available
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.PEDDGJFCDPP
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.SendTakeJackpotProgressRewardReq
    L3_2 = A0_2._phase_id
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._config_id_list
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L1_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L1_1._on_left_stick_button_click = L2_1
return L1_1
