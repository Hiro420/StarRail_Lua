local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueSelectAreaDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueAreaTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueAreaTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = "UIText_Rogue_Init_Avatar_Title"
L2_1 = "UIText_Rogue_Btn_Continue"
L3_1 = "UIText_Rogue_Btn_Quit"
L4_1 = "UIText_Rogue_Quit_Comfirm_Title"
L5_1 = "UIText_Rogue_Quit_Comfirm_Desc"
L6_1 = "Common_ConfirmDialog_Title"
L7_1 = "UIText_Rogue_EnterPage_Tip_1"
L8_1 = "9023"
L9_1 = 41
L10_1 = 51
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "RogueSelectAreaDetailDialog"
L13_1 = G
L13_1 = L13_1.UIController
L11_1 = L11_1(L12_1, L13_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectAreaDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_save_by_click = false
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._tab_control = nil
  A0_2._rogue_area_data_list = nil
  A0_2._rogue_area_data = nil
  A0_2._rogue_area_row = nil
  A0_2._monster_drop_item_table = nil
  A0_2._chest_reward_item_table = nil
  A0_2._first_reward_item_table = nil
  A0_2._first_reward_panles = nil
end
L11_1.ctor = L12_1
function L12_1(A0_2, A1_2)
  local L2_2
  A0_2._rogue_area_data_list = A1_2
  L2_2 = A1_2[0]
  A0_2._rogue_area_data = L2_2
end
L11_1.init = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._tab_control = nil
  A0_2._rogue_area_data_list = nil
  A0_2._rogue_area_data = nil
  A0_2._rogue_area_row = nil
  A0_2._monster_drop_item_table = nil
  A0_2._chest_reward_item_table = nil
  A0_2._first_reward_item_table = nil
  A0_2._first_reward_panles = nil
end
L11_1._on_dispose = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_give_up
  L4_2 = A0_2._on_btn_give_up_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_up
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_down
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro_monster
  L4_2 = A0_2._on_btn_intro_monster
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro_chest
  L4_2 = A0_2._on_btn_intro_chest
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster_drop
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_drop_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_chest_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_chest_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_reward_key_unlock
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.ResBarAreaFactory
    L1_2 = L1_2.CreateResBarArea
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_res_bar_area
    L3_2 = "RogueAreaDetailDialog"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSelectMainPagePlayDialogTransfer
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L11_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueFinish
  L4_2 = A0_2._on_rogue_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CDILNDGFPDB
  L4_2 = A0_2._on_cmd_get_rogue_info_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L11_1._add_handlers = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_hint
  L1_2(L2_2)
  L1_2 = A0_2._rogue_area_data_list
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_area_data_list
    L1_2 = L1_2.Count
    if 1 < L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_any_level_unlocked
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.TutorialTaskUnlock
        L3_2 = L8_1
        L1_2(L2_2, L3_2)
        L1_2 = A0_2.short_cut_hint_panel
        if L1_2 ~= nil then
          L1_2 = A0_2.short_cut_hint_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_short_cut_hint_view
          L3_2 = {}
          L4_2 = "ActionGroup_Switch"
          L5_2 = "ActionGroup_Select"
          L6_2 = "ActionGroup_Return"
          L3_2[1] = L4_2
          L3_2[2] = L5_2
          L3_2[3] = L6_2
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L11_1._setup_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = A0_2._rogue_area_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._rogue_area_data_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.RogueAreaStatus
    L6_2 = #L6_2
    L7_2 = G
    L7_2 = L7_2.UtilEngineWrap
    L7_2 = L7_2.ConvCsEnumToNum
    L8_2 = CS
    L8_2 = L8_2.EFHDEOKLMFI
    L8_2 = L8_2.HHOFCKOOBBI
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L11_1._is_any_level_unlocked = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.difficulty_btns_tabcontrol_root
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = nil
  L3_2 = 0
  L4_2 = A0_2._rogue_area_data_list
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._rogue_area_data_list
    L7_2 = L7_2[L6_2]
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.RogueAreaTabItem
    L11_2 = G
    L11_2 = L11_2.RogueAreaTabItemBinder
    L12_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = A0_2._binder
    L11_2 = L11_2.difficulty_btns_tabcontrol_root
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_click_callback
    L11_2 = A0_2
    L12_2 = A0_2._on_tab_item_clicked
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._tab_control
    L10_2 = L9_2
    L9_2 = L9_2.add_item
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = L7_2.RogueAreaStatus
    L9_2 = #L9_2
    L10_2 = G
    L10_2 = L10_2.UtilEngineWrap
    L10_2 = L10_2.ConvCsEnumToNum
    L11_2 = CS
    L11_2 = L11_2.EFHDEOKLMFI
    L11_2 = L11_2.ALCINCFFNII
    L10_2 = L10_2(L11_2)
    if L9_2 ~= L10_2 then
      L1_2 = L6_2 + 1
    end
    L9_2 = L7_2.IsDoing
    if L9_2 then
      L2_2 = L6_2 + 1
    end
  end
  if L2_2 ~= nil then
    L1_2 = L2_2
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.update_layout
  L3_2(L4_2)
  L3_2 = L2_2 == nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_select_up
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_select_down
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._tab_control
    L5_2 = L4_2
    L4_2 = L4_2.setup_navigation
    L6_2 = NavigationType
    L6_2 = L6_2.Vertical
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._tab_control
  L5_2 = L4_2
  L4_2 = L4_2.click_item_by_uid
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.difficulty_selection_panel_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._rogue_area_data_list
  L6_2 = L6_2.Count
  L6_2 = 1 < L6_2
  L4_2(L5_2, L6_2)
end
L11_1._init_tab_control = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rogue_area_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_area_detail_view
  L2_2(L3_2)
end
L11_1._on_tab_item_clicked = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_diff_unlocked
  L1_2 = L1_2(L2_2)
  if L1_2 <= 1 then
    return
  end
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.AreaProgressID
  L3_2 = nil
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.HintedRogueAreaDifficulty
  L6_2 = L4_2
  L5_2 = L4_2.ContainsKey
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L3_2 = L4_2[L2_2]
  end
  L5_2 = L3_2 == nil or L3_2 ~= nil and L1_2 > L3_2
  if L5_2 then
    L4_2[L2_2] = L1_2
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_show
    L7_2 = "Ui.FarmEnemy.FarmLevelUnlockDialog"
    L8_2 = L1_2
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L1_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2
    L6_2 = L6_2.play_unlock
    L6_2(L7_2)
  end
end
L11_1._try_show_unlock_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._rogue_area_data_list
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_area_data_list
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = -1
  do return L1_2 end
  ::lbl_10::
  L1_2 = -1
  L2_2 = 0
  L3_2 = A0_2._rogue_area_data_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._rogue_area_data_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.RogueAreaStatus
    L7_2 = #L7_2
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.EFHDEOKLMFI
    L9_2 = L9_2.ALCINCFFNII
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.RogueAreaRow
      if L7_2 ~= nil then
        L8_2 = math
        L8_2 = L8_2.max
        L9_2 = L1_2
        L10_2 = L7_2.Difficulty
        L8_2 = L8_2(L9_2, L10_2)
        L1_2 = L8_2
      end
    end
  end
  return L1_2
end
L11_1._get_max_diff_unlocked = L12_1
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2 ~= nil
  return L1_2
end
L11_1._is_show_difficulty_tabs = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_area_data
  L1_2 = L1_2.RogueAreaRow
  A0_2._rogue_area_row = L1_2
  L1_2 = A0_2._rogue_area_row
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_area_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_first_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_chest_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score_tip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_multiple_drop_tips
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_monster_reward_btn_navi
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L11_1._refresh_area_detail_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_area_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._rogue_area_row
  L3_2 = L3_2.AreaNameID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._rogue_area_data_list
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_difficulty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._rogue_area_row
    L2_2 = L2_2.Difficulty
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_difficulty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetRomanNumberTextID
    L6_2 = L2_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L11_1._setup_area_name = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._monster_drop_item_table = L1_2
  L1_2 = A0_2._rogue_area_row
  L1_2 = L1_2.MonsterDisplayItemList
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.ItemID
    L6_2.ItemID = L7_2
    L7_2 = L1_2[L5_2]
    L7_2 = L7_2.ItemNum
    L6_2.Count = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._monster_drop_item_table
    L9_2 = A0_2._monster_drop_item_table
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._monster_drop_item_table
  L2_2 = #L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_drop
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_monster_drop
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._monster_drop_item_table
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  if 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_monster_drop
    L4_2 = L3_2
    L3_2 = L3_2.RefreshAllShownItem
    L3_2(L4_2)
  end
end
L11_1._setup_monster_drop_view = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._monster_drop_item_table
  L8_2 = A0_2._on_monster_drop_click
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L11_1._on_monster_drop_item_change = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._rogue_area_row
  L2_2 = L2_2.FirstReward
  L1_2 = L1_2(L2_2)
  A0_2._first_reward_item_table = L1_2
  L1_2 = A0_2._first_reward_item_table
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_first_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if L1_2 <= 0 then
    return
  end
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.IsRewardTaken
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._get_or_create_first_reward_panel
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._first_reward_item_table
    L8_2 = L8_2[L6_2]
    L10_2 = L7_2
    L9_2 = L7_2.safe_set_active
    L11_2 = L8_2 ~= nil
    L9_2(L10_2, L11_2)
    if L8_2 ~= nil then
      L10_2 = L7_2
      L9_2 = L7_2.setup_view_by_reward_item
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L10_2 = L7_2
      L9_2 = L7_2.set_attachment_getted
      L11_2 = L2_2
      L9_2(L10_2, L11_2)
      L10_2 = L7_2
      L9_2 = L7_2.bind_click
      L11_2 = A0_2
      L12_2 = A0_2._on_first_reward_click
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L3_2 = A0_2._first_reward_panles
  L3_2 = #L3_2
  if L1_2 < L3_2 then
    L3_2 = L1_2 + 1
    L4_2 = A0_2._first_reward_panles
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._first_reward_panles
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2
      L7_2 = L7_2.safe_set_active
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L11_1._setup_first_reward = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._first_reward_panles
  if L2_2 == nil then
    L2_2 = {}
    A0_2._first_reward_panles = L2_2
  end
  L2_2 = A0_2._first_reward_panles
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.loader_first_reward
    L4_2 = L4_2.Prefab
    L5_2 = A0_2._binder
    L5_2 = L5_2.loader_first_reward
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLite
    L6_2 = G
    L6_2 = L6_2.RewardItemIconLiteBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = L2_2.transform
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._first_reward_panles
    L6_2 = A0_2._first_reward_panles
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    return L3_2
  else
    L2_2 = A0_2._first_reward_panles
    L2_2 = L2_2[A1_2]
    return L2_2
  end
end
L11_1._get_or_create_first_reward_panel = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.get_sorted_items_by_item_config_list
  L2_2 = A0_2._rogue_area_row
  L2_2 = L2_2.ChestDisplayItemList
  L1_2 = L1_2(L2_2)
  A0_2._chest_reward_item_table = L1_2
  L1_2 = A0_2._chest_reward_item_table
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_chest_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_chest_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._chest_reward_item_table
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if 0 < L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_chest_reward
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MultipleDropTypeConfig
  L2_2 = L2_2.ROGUE
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MultipleDropUtils
  L4_2 = L3_2.GetTopData
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 ~= nil
  if not L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_chest_double_reward_mark
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_theme_mark
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = L4_2.Theme
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_chest_double_reward_mark
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L6_2 == nil
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_theme_mark
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L6_2 ~= nil
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.double_reward_mark_text
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L4_2.LabelText
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.theme_mark_text
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L4_2.LabelText
  L7_2(L8_2, L9_2)
  if L6_2 then
    L8_2 = A0_2
    L7_2 = A0_2.async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.theme_mark_icon
    L10_2 = L6_2.IconPath
    L7_2(L8_2, L9_2, L10_2)
  end
end
L11_1._setup_chest_reward = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MultipleDropUtils
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MultipleDropTypeConfig
  L2_2 = L2_2.ROGUE
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_multiple_drop_tip
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_description
    if L3_2 ~= nil then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_remain_num
      if L3_2 ~= nil then
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_total_num
        if L3_2 ~= nil then
          goto lbl_27
        end
      end
    end
  end
  do return end
  ::lbl_27::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_multiple_drop_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._rogue_area_data
  L3_2 = L3_2.RogueAreaStatus
  L3_2 = #L3_2
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = CS
  L5_2 = L5_2.EFHDEOKLMFI
  L5_2 = L5_2.ALCINCFFNII
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 == L4_2
  L4_2 = A0_2._chest_reward_item_table
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  L5_2 = L1_2.GetTopData
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil and not L3_2 and L4_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_multiple_drop_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = L1_2.GetSignIconPath
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2.async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.icon_multiple_drop
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_description
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = L5_2.BannerText
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.special_bg
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L5_2.Multiplier
    L9_2 = L9_2 == 3
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_text_num
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = G
    L7_2 = L7_2.MultipleDropUtils
    L7_2 = L7_2.setup_tips_num
    L8_2 = L2_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_remain_num
    L10_2 = A0_2._binder
    L10_2 = L10_2.text_total_num
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = L5_2.Theme
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_theme_icon
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L7_2 ~= nil
    L8_2(L9_2, L10_2)
    if L7_2 then
      L9_2 = A0_2
      L8_2 = A0_2.async_load_sprite_to
      L10_2 = A0_2._binder
      L10_2 = L10_2.theme_icon
      L11_2 = L7_2.IconPath
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L11_1._setup_multiple_drop_tips = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_change
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._chest_reward_item_table
  L8_2 = A0_2._on_chest_reward_click
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L11_1._on_chest_reward_item_change = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLite
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLiteBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L8_2 = L6_2
  L7_2 = L6_2.setup_view_by_reward_item
  L9_2 = A2_2 + 1
  L9_2 = A3_2[L9_2]
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.bind_click
  L9_2 = A0_2
  L10_2 = A4_2
  L7_2(L8_2, L9_2, L10_2)
  return L5_2
end
L11_1._on_reward_item_change = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_Rogue_EnterPage_ScoreTip_2"
  L3_2 = L3_2(L4_2)
  L4_2 = tostring
  L5_2 = A0_2._rogue_area_data
  L6_2 = L5_2
  L5_2 = L5_2.GetMaxScore
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L11_1._setup_score_tip = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._rogue_area_data
  L1_2 = L1_2.RogueAreaStatus
  L1_2 = #L1_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.ConvCsEnumToNum
  L3_2 = CS
  L3_2 = L3_2.EFHDEOKLMFI
  L3_2 = L3_2.ALCINCFFNII
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_give_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_continue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_locked_btns
    L2_2(L3_2)
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._rogue_area_data
  L3_2 = L3_2.IsDoing
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_doing_btns
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_start_btns
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L11_1._setup_btns = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueUnlockConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.RogueAreaRow
  L2_2 = L2_2.UnlockID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_lock_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueUnlockDetail
  L2_2(L3_2, L4_2)
end
L11_1._setup_locked_btns = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_give_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_continue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_continue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_give_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.CurReachRoomNum
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueUtils
  L3_2 = L3_2.GetRogueMapDepth
  L4_2 = A0_2._rogue_area_data
  L4_2 = L4_2.MapID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_room_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L7_2 = "/"
  L8_2 = L3_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
end
L11_1._setup_doing_btns = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_recommend_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._rogue_area_row
  L4_2 = L4_2.RecommendLevel
  L2_2(L3_2, L4_2)
end
L11_1._setup_start_btns = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_when_get_rogue_info
  if L1_2 == true then
    A0_2._exit_when_get_rogue_info = false
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L11_1._on_cmd_get_rogue_info_sc_rsp = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Rogue.Finish.RogueExploreFinishPage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._exit_when_get_rogue_info = true
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.CDILNDGFPDB
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.HFBMFICCMJL
  L2_2(L3_2)
end
L11_1._on_rogue_finish = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L11_1._on_btn_close_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = L5_1
  L3_2 = L4_1
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.QuitRogue
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L11_1._on_btn_give_up_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_area_data
  L1_2 = L1_2.AreaID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueUtils
  L2_2 = L2_2.CheckRogueAreaBanWithHint
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.IsDoing
  if L2_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.EnterRogue
    L2_2(L3_2)
  end
end
L11_1._on_btn_continue_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._rogue_area_row
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2._get_resident_rogue_doing_area_data
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Rogue_EnterPage_Tip_2"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.AreaID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueUtils
  L3_2 = L3_2.CheckRogueAreaBanWithHint
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetRogueData
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Rogue.Avatar.RogueInitAvatarSelectPage"
  L6_2 = A0_2._rogue_area_data
  L4_2(L5_2, L6_2)
end
L11_1._on_btn_confirm_click = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_click
  L5_2 = A1_2
  L6_2 = A0_2._first_reward_item_table
  L3_2(L4_2, L5_2, L6_2)
end
L11_1._on_first_reward_click = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_click
  L5_2 = A1_2
  L6_2 = A0_2._monster_drop_item_table
  L3_2(L4_2, L5_2, L6_2)
end
L11_1._on_monster_drop_click = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_reward_item_click
  L5_2 = A1_2
  L6_2 = A0_2._chest_reward_item_table
  L3_2(L4_2, L5_2, L6_2)
end
L11_1._on_chest_reward_click = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.ItemDetailDialog"
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.setup_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    return
  end
  L3_2 = {}
  L4_2 = 1
  L5_2 = ipairs
  L6_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.ItemID
    if L10_2 == A1_2 then
      L4_2 = L8_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
  end
  L5_2 = #L3_2
  if 0 < L5_2 then
    L5_2 = {}
    L5_2.items = L3_2
    L5_2.init_index = L4_2
    L6_2 = G
    L6_2 = L6_2.InventoryUtils
    L6_2 = L6_2.show_item_detail_display_dialog_for_gamepad
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
L11_1._on_reward_item_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = L10_1
  L1_2(L2_2, L3_2)
end
L11_1._on_btn_intro_monster = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
end
L11_1._on_btn_intro_chest = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close_click
  L1_2(L2_2)
end
L11_1._in_control_exit_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_show_difficulty_tabs
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_tab_btn_object
    return L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_reward_first_selected_object
    return L1_2(L2_2)
  end
end
L11_1.get_first_selected_object = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_difficulty_tab_navigation
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_reward_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L11_1._on_enter_zoom = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_difficulty_tab_navigation
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L11_1._on_leave_zoom = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_show_difficulty_tabs
    return L2_2(L3_2)
  end
end
L11_1._is_can_to_zoom = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L11_1._init_ui_navigation = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_zoom_1
  if A1_2 then
    L3_2 = 0.5
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = 1
  ::lbl_9::
  L2_2.alpha = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_select_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_select_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L11_1._set_difficulty_tab_navigation = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._first_reward_item_table
  if L1_2 ~= nil then
    L1_2 = A0_2._first_reward_item_table
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = ipairs
      L2_2 = A0_2._first_reward_panles
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = L5_2
        L6_2 = L5_2.is_active_in_hierarchy
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L7_2 = L5_2
          L6_2 = L5_2.get_first_selected_object
          return L6_2(L7_2)
        end
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monster_drop
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_btn_object
    return L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_chest_reward
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_btn_object
    return L3_2(L4_2)
  end
end
L11_1._get_reward_first_selected_object = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2._get_shown_item_btns
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_monster_drop
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_shown_item_btns
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_chest_reward
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = nil
  L4_2 = A0_2._first_reward_item_table
  if L4_2 ~= nil then
    L4_2 = A0_2._first_reward_item_table
    L4_2 = #L4_2
    if 0 < L4_2 then
      L4_2 = {}
      L3_2 = L4_2
      L4_2 = ipairs
      L5_2 = A0_2._first_reward_panles
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L10_2 = L8_2
        L9_2 = L8_2.is_active_in_hierarchy
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L3_2
          L11_2 = #L3_2
          L11_2 = L11_2 + 1
          L13_2 = L8_2
          L12_2 = L8_2.get_navi_btn
          L12_2, L13_2 = L12_2(L13_2)
          L9_2(L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
  end
  if L3_2 ~= nil then
    L4_2 = #L3_2
    if L4_2 ~= 0 then
      goto lbl_49
    end
  end
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_navigation_between_two_line
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  goto lbl_66
  ::lbl_49::
  L5_2 = A0_2
  L4_2 = A0_2.setup_navigation
  L6_2 = L3_2
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_navigation_between_two_line
  L5_2 = L3_2
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_navigation_between_two_line
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  ::lbl_66::
end
L11_1._setup_monster_reward_btn_navi = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = A1_2.ItemList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.UserObjectData
    if L9_2 ~= nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L13_2 = L9_2
      L12_2 = L9_2.get_navi_btn
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  return L2_2
end
L11_1._get_shown_item_btns = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L4_2 = A0_2
      L3_2 = A0_2.get_navigation_target
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L11_1._select_prev = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.set_navigation_target
      L4_2 = A0_2
      L3_2 = A0_2.get_navigation_target
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L11_1._select_next = L12_1
return L11_1
