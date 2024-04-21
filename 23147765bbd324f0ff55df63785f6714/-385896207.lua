local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.TreasureChallengeExitDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureChallengeExitDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureChallengeExitDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._block_input = true
  L1_2 = {}
  A0_2._special_zoom_btn_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._has_challenge_target = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsSaveRaidType
  L4_2 = L1_1.CurrentTreasureChallengeSnapShot
  L4_2 = L4_2.CurrentRaidID
  L5_2 = L1_1.CurrentTreasureChallengeSnapShot
  L5_2 = L5_2.CurrentRaidLevel
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._is_raid_save_type = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L4_2 = A0_2._on_cancel_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg_exit_btn
  L4_2 = A0_2._on_bg_exit_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2._on_close_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_setting
  L4_2 = A0_2._on_btn_setting_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_feed_back
  L4_2 = A0_2._on_btn_feed_back_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._special_zoom_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_setting
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._special_zoom_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_feed_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.create_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._side_btn_list = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._special_zoom_btn_list
      L2_2 = L2_2[1]
      L2_2 = L2_2.gameObject
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._on_btn_setting_click
      L2_2(L3_2)
      L2_2 = G
      L2_2 = L2_2.UIUtils
      L2_2 = L2_2.play_navigation_audio
      L2_2()
    end
  end
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._special_zoom_btn_list
    L1_2 = #L1_2
    L1_2 = 1 < L1_2
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._has_challenge_target
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_view_with_challenge
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_view_without_challenge
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_txt
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_targets_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_datas
  L1_2(L2_2)
end
L0_1._setup_view_with_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_targets_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view_without_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RaidConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1.CurrentTreasureChallengeSnapShot
  L2_2 = L2_2.CurrentRaidID
  L3_2 = L1_1.CurrentTreasureChallengeSnapShot
  L3_2 = L3_2.CurrentRaidLevel
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.get_format_treasure_challenge_targets
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._datas = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsSaveRaidType
  L4_2 = L1_2.RaidID
  L5_2 = L1_2.HardLevel
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._is_raid_save_type = L2_2
end
L0_1._get_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_targets
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._datas
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.challenge_targets
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.hide_rewards
    L6_2(L7_2)
  end
end
L0_1._setup_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "Common_ConfirmDialog_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_raid_save_type
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Raid_Dialog_ExitRaid_Desc"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_confirm_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Raid_Dialog_ExitRaid_ExitAndSave"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_cancel_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Raid_Dialog_ExitRaid_ExitWithoutSave"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Raid_GotoRebornPoint"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_confirm_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Common_Confirm"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_cancel_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Common_Cancel"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_txt = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_raid_save_type
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.LeaveRaid
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.OAMIMJAKLCH
    L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.LeaveRaid
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.OAMIMJAKLCH
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_confirm_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_raid_save_type
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_Raid_Dialog_ExitRaid_ExitWithoutSave_Confirm"
    L3_2 = "Common_ConfirmDialog_Title"
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = L1_1
        L2_3 = L1_3
        L1_3 = L1_3.LeaveRaid
        L3_3 = false
        L1_3(L2_3, L3_3)
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.show_full_screen_block_for_packet
        L3_3 = CS
        L3_3 = L3_3.PBIBDHBOIGI
        L3_3 = L3_3.OAMIMJAKLCH
        L1_3(L2_3, L3_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_cancel_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_bg_exit_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.Setting
  L2_2 = #L2_2
  L1_2(L2_2)
end
L0_1._on_btn_setting_click = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_btn_feed_back_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
return L0_1
