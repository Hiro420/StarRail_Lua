local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarLevelUpDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.LevelUpExpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.LevelUpExpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.LevelUpMaterialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.LevelUpMaterialPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompare"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.StatusDetailInfoCompareBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarLevelUpDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AvatarPropertyType
L4_1 = "UIText_RewardDialog_MaterialReturn"
L5_1 = "UIText_TitleType_Slash"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarLevelUpDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  A0_2._avatar_id = L3_2
  L3_2 = {}
  A0_2._material_selected = L3_2
  A0_2._addition_exp = 0
  A0_2._avatar_main_page = A2_2
end
L0_1.init = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_close_callback = L6_1
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
  local L1_2, L2_2
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_target
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L6_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._material_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._material_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._material_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_auto_fill
  L4_2 = A0_2._btn_auto_fill_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._btn_btn_clear_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_level_up
  L4_2 = A0_2._btn_level_up_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_left_stick_button_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LevelUpExpPanel
  L4_2 = G
  L4_2 = L4_2.LevelUpExpPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._levelup_exp_panel = L1_2
  L1_2 = A0_2._levelup_exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.levelup_exp_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._hp_compare_panel = L1_2
  L1_2 = A0_2._hp_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hp_compare_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._attack_compare_panel = L1_2
  L1_2 = A0_2._attack_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_attack_compare_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._defence_compare_panel = L1_2
  L1_2 = A0_2._defence_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_defence_compare_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LevelUpMaterialPanel
  L4_2 = G
  L4_2 = L4_2.LevelUpMaterialPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._levelup_material_panel = L1_2
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.levelup_material_panel_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_long_press
  L3_2 = A0_2._material_long_press
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.CoinCostPanel
  L4_2 = G
  L4_2 = L4_2.CoinCostPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._coin_cost_panel = L1_2
  L1_2 = A0_2._coin_cost_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin_cost_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_res_bar_area
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_res_bar_area
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ResBarAreaPanel
  L5_2 = G
  L5_2 = L5_2.ResBarAreaPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._res_bar_area_panel = L2_2
  L2_2 = A0_2._res_bar_area_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_auto_fill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_clear
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._material_ids = L2_2
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarLevelUpFinish
  L4_2 = L0_1._on_avatar_levelup_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = A0_2._avatar_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._avatar_data = L2_2
  L2_2 = pairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._material_selected
    L7_2[L5_2] = 0
  end
  L3_2 = A0_2
  L2_2 = A0_2._calculate_addition_exp
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_material_panel
  L2_2(L3_2)
  L2_2 = {}
  A0_2._reward_arg = L2_2
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._reward_arg
    L8_2 = A1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.LevelUpedBeforeData
  if L2_2 ~= nil then
    L3_2 = A0_2._levelup_exp_panel
    L4_2 = L3_2
    L3_2 = L3_2.play_exp_tween
    L5_2 = A0_2._avatar_data
    L6_2 = L2_2
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._is_loaded
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh
      L0_3(L1_3)
      L0_3 = A0_2._avatar_data
      L0_3 = L0_3.Level
      L1_3 = L2_2.LevelBefore
      if L0_3 > L1_3 then
        L0_3 = G
        L0_3 = L0_3.UIManager
        L0_3 = L0_3.load_and_show
        L1_3 = "Ui.Avatar.AvatarLevelUpResultDialog"
        L2_3 = L2_2
        L3_3 = A0_2._avatar_data
        L4_3 = A0_2
        L5_3 = A0_2._acquire_surplus_material
        L6_3 = A0_2._reward_arg
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
        L0_3 = A0_2._avatar_data
        L1_3 = L0_3
        L0_3 = L0_3.IsPromotionMaxLevel
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = A0_2._avatar_data
          L0_3 = L0_3.Promotion
          L1_3 = A0_2._avatar_data
          L1_3 = L1_3.Row
          L1_3 = L1_3.MaxPromotion
          if L0_3 == L1_3 then
            L0_3 = CS
            L0_3 = L0_3.RPG
            L0_3 = L0_3.Client
            L0_3 = L0_3.GlobalVars
            L0_3 = L0_3.s_GamePhaseManager
            L1_3 = L0_3
            L0_3 = L0_3.GetCurrentPhase
            L0_3 = L0_3(L1_3)
            L1_3 = L0_3 or L1_3
            if L0_3 then
              L2_3 = L0_3
              L1_3 = L0_3.GetAdventureAudioManager
              L1_3 = L1_3(L2_3)
            end
            if L1_3 ~= nil then
              L3_3 = L1_3
              L2_3 = L1_3.PlayUICharacterVO
              L4_3 = CS
              L4_3 = L4_3.RPG
              L4_3 = L4_3.GameCore
              L4_3 = L4_3.AdventureCharacterVOType
              L4_3 = L4_3.MaxLevel
              L5_3 = A0_2._avatar_data
              L2_3(L3_3, L4_3, L5_3)
            end
          end
        end
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._show_level_up_result_finish
        L0_3(L1_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._on_avatar_levelup_finish = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._reward_arg
  L3_2 = A0_2._reward_arg
  if L3_2 == nil then
    L2_2 = A1_2
  end
  if L2_2 ~= nil then
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = G
      L3_2 = L3_2.RewardUtils
      L3_2 = L3_2.show_reward_dialog
      L4_2 = L2_2
      L5_2 = L4_1
      L3_2(L4_2, L5_2)
    end
  end
  A0_2._reward_arg = nil
end
L0_1._acquire_surplus_material = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_fill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.IsPromotionMaxLevel
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._avatar_main_page
    L2_2 = L1_2
    L1_2 = L1_2.on_click_levelup
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._show_level_up_result_finish = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_materials
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_level_up
  L1_2.interactable = false
  L1_2 = A0_2._levelup_exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._addition_exp
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_selected
  L4_2 = A0_2._material_add_onclick
  L5_2 = A0_2._material_reduce_onclick
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_coin
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
  L1_2 = A0_2._res_bar_area_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "AvatarLevelUpDialog"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_hint
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L5_1
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2.BaseTypeText
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.Row
  L7_2 = L7_2.AvatarName
  L6_2, L7_2 = L6_2(L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_path
  L5_2 = L1_2.BaseTypeIconSmall
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_sub_title = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNewLevelByAddExp
  L3_2 = A0_2._addition_exp
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = L3_1.MaxHP
  L2_2.PropertyType = L3_2
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetHPMax
  L3_2 = L3_2(L4_2)
  L2_2.NumBefore = L3_2
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetHPMax
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Promotion
  L6_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.NumAfter = L3_2
  L3_2 = A0_2._hp_compare_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L3_1.Attack
  L3_2.PropertyType = L4_2
  L4_2 = A0_2._avatar_data
  L5_2 = L4_2
  L4_2 = L4_2.GetPropertyByType
  L6_2 = L3_1.Attack
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.NumBefore = L4_2
  L4_2 = A0_2._avatar_data
  L5_2 = L4_2
  L4_2 = L4_2.GetPropertyByType
  L6_2 = L3_1.Attack
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.Promotion
  L8_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.NumAfter = L4_2
  L4_2 = A0_2._attack_compare_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = L3_1.Defence
  L4_2.PropertyType = L5_2
  L5_2 = A0_2._avatar_data
  L6_2 = L5_2
  L5_2 = L5_2.GetPropertyByType
  L7_2 = L3_1.Defence
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.NumBefore = L5_2
  L5_2 = A0_2._avatar_data
  L6_2 = L5_2
  L5_2 = L5_2.GetPropertyByType
  L7_2 = L3_1.Defence
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.Promotion
  L9_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.NumAfter = L5_2
  L5_2 = A0_2._defence_compare_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._refresh_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._calculate_addition_exp
  L1_2(L2_2)
  L1_2 = A0_2._levelup_exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._addition_exp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_material_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_default_navigation_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_hint
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_level_up
  L2_2 = A0_2._addition_exp
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._levelup_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_material_select
  L3_2 = A0_2._material_selected
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_coin
  L1_2(L2_2)
end
L0_1._refresh_material_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Exp_SoftCoin_Cost"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._addition_exp
  L3_2 = L3_2 / L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._coin_cost_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_coin = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._addition_exp = 0
  L1_2 = pairs
  L2_2 = A0_2._material_selected
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if 0 < L5_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.AvatarExpItemConfigExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2._addition_exp
      L8_2 = L6_2.Exp
      L8_2 = L8_2 * L5_2
      L7_2 = L7_2 + L8_2
      A0_2._addition_exp = L7_2
    end
  end
end
L0_1._calculate_addition_exp = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarExpItemConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._material_selected
    L8_2 = L6_2.ItemID
    L7_2[L8_2] = 0
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._material_ids
    L9_2 = L6_2.ItemID
    L7_2(L8_2, L9_2)
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.sort_reward_item
  L3_2 = A0_2._material_ids
  L2_2(L3_2)
end
L0_1._init_materials = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNeedExpToLv
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = A0_2
  L2_2 = A0_2._calculate_addition_exp
  L2_2(L3_2)
  L2_2 = A0_2._addition_exp
  if L1_2 <= L2_2 then
    L2_2 = false
    L3_2 = pairs
    L4_2 = A0_2._material_selected
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if 0 < L7_2 then
        L2_2 = true
        break
      end
    end
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_auto_fill
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_clear
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Toast_Upgrade_ExpMax"
    L3_2(L4_2, L5_2)
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._material_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._material_selected
    L7_2[L5_2] = 0
  end
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExpItemConfigRow
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExpItemConfigExcelTable
  L3_2 = L3_2.dataDict
  L3_2 = L3_2.Values
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L2_1
    L9_2 = L8_2
    L8_2 = L8_2.GetItemCountByConfigID
    L10_2 = L7_2.ItemID
    L8_2 = L8_2(L9_2, L10_2)
    if 0 < L8_2 and 0 < L1_2 then
      L9_2 = math
      L9_2 = L9_2.ceil
      L10_2 = L7_2.Exp
      L10_2 = L1_2 / L10_2
      L9_2 = L9_2(L10_2)
      if L8_2 > L9_2 then
        L10_2 = A0_2._material_selected
        L11_2 = L7_2.ItemID
        L10_2[L11_2] = L9_2
      else
        L10_2 = A0_2._material_selected
        L11_2 = L7_2.ItemID
        L10_2[L11_2] = L8_2
      end
      L10_2 = A0_2._material_selected
      L11_2 = L7_2.ItemID
      L10_2 = L10_2[L11_2]
      L11_2 = L7_2.Exp
      L10_2 = L10_2 * L11_2
      L1_2 = L1_2 - L10_2
    end
  end
  if L1_2 < 0 then
    L3_2 = 0
    L4_2 = L2_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L8_2 = math
      L8_2 = L8_2.floor
      L9_2 = -L1_2
      L10_2 = L7_2.Exp
      L9_2 = L9_2 / L10_2
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2._material_selected
      L10_2 = L7_2.ItemID
      L9_2 = L9_2[L10_2]
      if L8_2 <= L9_2 then
        L9_2 = A0_2._material_selected
        L10_2 = L7_2.ItemID
        L11_2 = A0_2._material_selected
        L12_2 = L7_2.ItemID
        L11_2 = L11_2[L12_2]
        L11_2 = L11_2 - L8_2
        L9_2[L10_2] = L11_2
        L9_2 = L7_2.Exp
        L9_2 = L8_2 * L9_2
        L1_2 = L1_2 + L9_2
      else
        L9_2 = A0_2._material_selected
        L10_2 = L7_2.ItemID
        L9_2 = L9_2[L10_2]
        L10_2 = L7_2.Exp
        L9_2 = L9_2 * L10_2
        L1_2 = L1_2 + L9_2
        L9_2 = A0_2._material_selected
        L10_2 = L7_2.ItemID
        L9_2[L10_2] = 0
      end
    end
  end
  L3_2 = false
  L4_2 = pairs
  L5_2 = A0_2._material_selected
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if 0 < L8_2 then
      L3_2 = true
      break
    end
  end
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_auto_fill
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_clear
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
  else
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_AutoAdd_Toast_Fail"
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1._btn_auto_fill_onclick = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2._material_selected
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._material_selected
    L6_2[L4_2] = 0
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_auto_fill
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._btn_btn_clear_onclick = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.Proto
  L2_2 = L2_2.ItemCost
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._material_selected
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if 0 < L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = CS
      L8_2 = L8_2.Proto
      L8_2 = L8_2.ItemCost
      L8_2 = L8_2()
      L9_2 = CS
      L9_2 = L9_2.Proto
      L9_2 = L9_2.PileItem
      L9_2 = L9_2()
      L8_2.PileItem = L9_2
      L9_2 = L8_2.PileItem
      L9_2.ItemId = L6_2
      L9_2 = L8_2.PileItem
      L9_2.ItemNum = L7_2
      L10_2 = L1_2
      L9_2 = L1_2.Add
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.check_item_deleted
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.ClearLevelUpBeforData
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.AJADLFEPFNF
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.ID
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._btn_level_up_onclick = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._btn_back_onclick
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_main_page
  L2_2 = L1_2
  L1_2 = L1_2.on_click_levelup
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_back_onclick = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._material_selected
  L3_2 = L3_2[A1_2]
  if L2_2 > L3_2 then
    L3_2 = A0_2._avatar_data
    L4_2 = L3_2
    L3_2 = L3_2.GetNewLevelByAddExp
    L5_2 = A0_2._addition_exp
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._avatar_data
    L5_2 = L4_2
    L4_2 = L4_2.GetCurrentMaxLv
    L4_2 = L4_2(L5_2)
    if L3_2 >= L4_2 then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = "UIText_Toast_Upgrade_ExpMax"
      L4_2(L5_2, L6_2)
      return
    end
    L4_2 = A0_2._material_selected
    L5_2 = A0_2._material_selected
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2 + 1
    L4_2[A1_2] = L5_2
    L5_2 = A0_2
    L4_2 = A0_2._refresh
    L4_2(L5_2)
  end
end
L0_1._material_add_onclick = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._material_selected
  L2_2 = L2_2[A1_2]
  if 0 < L2_2 then
    L2_2 = A0_2._material_selected
    L3_2 = A0_2._material_selected
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2 - 1
    L2_2[A1_2] = L3_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1._material_reduce_onclick = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemDetailDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._material_long_press = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_selected_material_count
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Select"
    L5_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Remove"
    L5_2 = "ActionGroup_Select"
    L6_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_gamepad_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarExpItemConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._material_selected
    L9_2 = L7_2.ItemID
    L8_2 = L8_2[L9_2]
    L2_2 = L2_2 + L8_2
  end
  return L2_2
end
L0_1._get_selected_material_count = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == false then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_view_active_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_dispose = L6_1
return L0_1
