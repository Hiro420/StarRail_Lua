local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaAvatarItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaAvatarItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaLightConeItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaLightConeItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.ShareUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.GachaModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ShareModule
L3_1 = "GachaShareRewardText"
L4_1 = "GachaShareRewardLabel"
L5_1 = "GachaResultDialog_FadeIn"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_can_interactive = false
  A0_2._init_finish = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "GachaResultEndTime"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Value
    L2_2 = L2_2.FloatValue
    if L2_2 then
      goto lbl_31
    end
  end
  L2_2 = 1.5
  ::lbl_31::
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_protect_time_end
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._count_down_timer = L3_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  if L1_2 then
    L1_2 = A0_2._btn_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._btn_list
      L1_2 = L1_2[1]
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_can_interactive
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  A0_2._init_finish = true
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_PropertyCheck"
  L5_2 = "ActionGroup_Cancel"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.close_in_control_button
  L1_2.ActionEnabled = false
end
L0_1._on_left_stick_button_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_input_switch = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 37
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L2_1.EnableShare
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_share
    L4_2 = A0_2._on_btn_share
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.GetShareReward
    L4_2 = A0_2._on_get_share_reward
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg_close
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._gacha_item_datas = nil
  A0_2._item_panels = nil
  L1_2 = L1_1.EnablePerformance
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.GetAdventureAudioManager
      L2_2 = L2_2(L3_2)
    end
    if L2_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.StopAllUIMenuBGM
      L3_2(L4_2)
    end
  end
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshGachaPoolsData
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.GachaShowMask
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_item_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L2_1.EnableShare
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_share_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_share_reward_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.ShareRewardNum
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_share_state
  L1_2(L2_2)
end
L0_1._setup_share_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._gacha_item_datas = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L2_2 = L1_2
  L1_2 = L1_2.GetGachaRewardItemDatas
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._gacha_item_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._get_item_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._gacha_item_datas
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  A0_2._item_panels = L1_2
  L1_2 = A0_2._gacha_item_datas
  L1_2 = #L1_2
  L2_2 = {}
  A0_2._item_root_nodes = L2_2
  L2_2 = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_result
  L3_2 = L3_2.transform
  L3_2 = L3_2.childCount
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_result
    L6_2 = L6_2.transform
    L7_2 = L6_2
    L6_2 = L6_2.GetChild
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 0
    L8_2 = L6_2.transform
    L8_2 = L8_2.childCount
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._item_root_nodes
      L13_2 = L6_2.transform
      L14_2 = L13_2
      L13_2 = L13_2.GetChild
      L15_2 = L10_2
      L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
      L11_2(L12_2, L13_2, L14_2, L15_2)
    end
  end
  L2_2 = {}
  A0_2._btn_list = L2_2
  L2_2 = {}
  A0_2._animations = L2_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._gacha_item_datas
    L6_2 = L6_2[L5_2]
    L7_2 = nil
    L8_2 = L6_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemMainType
    L9_2 = L9_2.AvatarCard
    if L8_2 == L9_2 then
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.GachaAvatarItemPanel
      L11_2 = G
      L11_2 = L11_2.GachaAvatarItemPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2 = L8_2
    else
      L8_2 = L6_2.Type
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ItemMainType
      L9_2 = L9_2.Equipment
      if L8_2 == L9_2 then
        L9_2 = A0_2
        L8_2 = A0_2.create_panel
        L10_2 = G
        L10_2 = L10_2.GachaLightConeItemPanel
        L11_2 = G
        L11_2 = L11_2.GachaLightConeItemPanelBinder
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L7_2 = L8_2
      end
    end
    L9_2 = L7_2
    L8_2 = L7_2.set_button_mutex
    L10_2 = A0_2._button_mutex
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.sync_loadto
    L10_2 = A0_2._item_root_nodes
    L10_2 = L10_2[L5_2]
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._item_panels
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._btn_list
    L10_2 = L7_2._binder
    L10_2 = L10_2.btn_root
    L8_2(L9_2, L10_2)
    L8_2 = L6_2.ItemRow
    L8_2 = L8_2.Rarity
    L8_2 = #L8_2
    if L8_2 == 4 then
      L8_2 = L7_2._binder
      L9_2 = L8_2
      L8_2 = L8_2._safe_get_cmpt
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.Animation
      L11_2 = ""
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.Play
      L11_2 = "Gacha_ResultItem_R4FadeIn"
      L9_2(L10_2, L11_2)
    else
      L8_2 = L6_2.ItemRow
      L8_2 = L8_2.Rarity
      L8_2 = #L8_2
      if L8_2 == 5 then
        L8_2 = L7_2._binder
        L9_2 = L8_2
        L8_2 = L8_2._safe_get_cmpt
        L10_2 = CS
        L10_2 = L10_2.UnityEngine
        L10_2 = L10_2.Animation
        L11_2 = ""
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L10_2 = L8_2
        L9_2 = L8_2.Play
        L11_2 = "Gacha_ResultItem_R5FadeIn"
        L9_2(L10_2, L11_2)
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = A0_2._btn_list
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = {}
  L3_2 = A0_2._btn_list
  L3_2 = L3_2[1]
  L4_2 = A0_2._btn_list
  L4_2 = L4_2[4]
  L5_2 = A0_2._btn_list
  L5_2 = L5_2[2]
  L6_2 = A0_2._btn_list
  L6_2 = L6_2[5]
  L7_2 = A0_2._btn_list
  L7_2 = L7_2[8]
  L8_2 = A0_2._btn_list
  L8_2 = L8_2[3]
  L9_2 = A0_2._btn_list
  L9_2 = L9_2[6]
  L10_2 = A0_2._btn_list
  L10_2 = L10_2[9]
  L11_2 = A0_2._btn_list
  L11_2 = L11_2[7]
  L12_2 = A0_2._btn_list
  L12_2 = L12_2[10]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  A0_2._vertical_btn_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = A0_2._vertical_btn_list
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L6_2 = nil
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_item_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_interactive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_share_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg_close
  L1_2.interactable = true
end
L0_1._on_protect_time_end = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._is_can_interactive = A1_2
  L2_2 = A0_2._item_panels
  if L2_2 then
    L2_2 = ipairs
    L3_2 = A0_2._item_panels
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.set_interactive
      L9_2 = A1_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._enable_interactive = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2._is_can_interactive
    if L0_3 then
      L0_3 = ipairs
      L1_3 = A0_2._item_panels
      L0_3, L1_3, L2_3 = L0_3(L1_3)
      for L3_3, L4_3 in L0_3, L1_3, L2_3 do
        L6_3 = L4_3
        L5_3 = L4_3.dispose
        L5_3(L6_3)
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_share_state
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.ShareUtils
    L0_3 = L0_3.ShareGacha
    L1_3 = A0_2._on_share_exit
    function L2_3()
      local L0_4, L1_4, L2_4
      L0_4 = A0_2._binder
      L0_4 = L0_4.node_result
      L1_4 = L0_4
      L0_4 = L0_4.SafeSetActive
      L2_4 = false
      L0_4(L1_4, L2_4)
    end
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_share = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_share_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_result_frame
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_share_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_share_state
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_result
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_share_state
  L1_2(L2_2)
end
L0_1._on_share_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.HasAvailableShareReward
  L3_2 = L1_1.ShareID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_share_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_share_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._reward_data
  if L1_2 then
    L1_2 = A0_2._reward_data
    L1_2 = L1_2.Count
    L2_2 = {}
    L3_2 = 0
    L4_2 = L1_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = A0_2._reward_data
      L9_2 = L9_2[L6_2]
      L7_2(L8_2, L9_2)
    end
    A0_2._reward_data = nil
    L4_2 = A0_2
    L3_2 = A0_2._enable_interactive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.RewardDialog"
    L5_2 = L2_2
    L6_2 = nil
    L7_2 = true
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_exit_callback
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_interactive
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L4_2(L5_2, L6_2)
  end
end
L0_1._show_share_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._reward_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_share_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_share_reward
  L2_2(L3_2)
end
L0_1._on_get_share_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_share_state
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._show_share_reward
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_fade_in
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_view_active_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_containers
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_containers
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._on_unload = L6_1
return L0_1
