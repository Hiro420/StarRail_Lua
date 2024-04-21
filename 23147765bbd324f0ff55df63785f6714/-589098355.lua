local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BattlePass.BattlePassPosterPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.LightconeSelectUI3DPage"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = "BattlePass_First_in"
L2_1 = "BattlePass_Card_First_in"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "BattlePassPosterPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattlePassPosterPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_OpenWithCut
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  A0_2._pause_game = true
  A0_2._bp_row = nil
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.LightconeSelectUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui3d_lightcones = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 120
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassChanged
  L4_2 = A0_2._on_bp_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lightcone
  L4_2 = A0_2._on_btn_lightcone
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._ui3d_lightcones
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._lightcone_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_block
  L2_2 = L1_2
  L1_2 = L1_2.AddActiveListener
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_block_input
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_block
  L2_2 = L1_2
  L1_2 = L1_2.AddDeactiveListener
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_block_input
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_block_input
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._block_id
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TryUnblockFixedTime
      L4_2 = A0_2._block_id
      L2_2(L3_2, L4_2)
      A0_2._block_id = nil
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.BlockFixedTime
    L4_2 = 3
    L5_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._block_id = L2_2
  else
    L2_2 = A0_2._block_id
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TryUnblockFixedTime
      L4_2 = A0_2._block_id
      L2_2(L3_2, L4_2)
      A0_2._block_id = nil
    end
  end
end
L3_1._try_block_input = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._adjust_tip
  L1_2(L2_2)
  L1_2 = A0_2._ui3d_lightcones
  L2_2 = L1_2
  L1_2 = L1_2.set_lightcones
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = L0_1.DisplayedLightConeIDs
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_3d_in
  L1_2(L2_2)
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.Row
  A0_2._bp_row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_list_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_seen
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1.EndTimeStamp
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2
  L5_2 = A0_2.exit
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1._setup_remain_timer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._bp_row
  L2_2 = L2_2.BillboardShow
  L1_2 = L1_2(L2_2)
  A0_2._display_ids = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._display_ids
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._setup_list_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.set_auto_trigger_btn
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._display_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.BattlePassRewardDisplayExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2.RewardItem
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  return L3_2
end
L3_1._on_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui3d_lightcones
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L3_1._try_play_3d_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._ui3d_lightcones
  L2_2 = L1_2
  L1_2 = L1_2.get_bottom_position
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UI3DCamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransformUtility
  L4_2 = L4_2.ScreenPointToLocalPointInRectangle
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L6_2 = L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_UICamera
  L8_2 = nil
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_tip
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector3
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.localPosition = L7_2
end
L3_1._adjust_tip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordCurrentBattlePass
  L1_2(L2_2)
end
L3_1._record_seen = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_view
    L2_2(L3_2)
  end
end
L3_1._on_bp_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_confirm = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_lightcones
  L3_2 = L2_2
  L2_2 = L2_2.pause_idle_timer
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui3d_lightcones
  L3_2 = L2_2
  L2_2 = L2_2.enable_touth
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_view_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d_lightcones
  L2_2 = L1_2
  L1_2 = L1_2.click_lightcone
  L1_2(L2_2)
end
L3_1._on_btn_lightcone = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.BattlePass.BattlePassDisplayPage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._lightcone_clicked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_control_prev_button_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_control_next_button_click
      L2_2(L3_2)
    end
  end
end
L3_1._on_in_control_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L3_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._ui3d_lightcones
      L2_2 = L1_2
      L1_2 = L1_2.move_next_lightcone
      L1_2(L2_2)
    end
  end
end
L3_1._on_control_prev_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._ui3d_lightcones
      L2_2 = L1_2
      L1_2 = L1_2.move_last_lightcone
      L1_2(L2_2)
    end
  end
end
L3_1._on_control_next_button_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = 31
  L2_2(L3_2, L4_2)
end
L3_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_short_cut_hint_panel
  L1_2(L2_2)
end
L3_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._display_ids
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._display_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.BattlePassRewardDisplayExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.RewardItem
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L3_1._on_left_stick_button_click = L4_1
return L3_1
