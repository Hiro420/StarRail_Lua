local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.AvatarPromotion.AvatarPromotionDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarPromotion.AvatarPromotionStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarPromotion.AvatarPromotionStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarPromotion.PromotionMaterialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarPromotion.PromotionMaterialPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.SubStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarPromotionDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AvatarPropertyType
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.PlayerModule
L5_1 = "UIText_AvatarDetail_WorldLevelRequire"
L6_1 = "UIText_AvatarDetail_PlayerLevelRequire"
L7_1 = "UIText_TitleType_Slash"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarPromotionDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  A0_2._avatar_id = L3_2
  A0_2._avatar_main_page = A2_2
end
L0_1.init = L8_1
function L8_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_close_callback = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._promotion_material_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L8_1
function L8_1(A0_2)
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
L0_1._on_left_stick_button_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 129
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_promotion
  L4_2 = A0_2._btn_promotion_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "Ui.Avatar.SubStarInfoPanel"
  L6_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._promotion_prev_stars_panel = L1_2
  L1_2 = A0_2._promotion_prev_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.promotion_prev_star_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "Ui.Avatar.SubStarInfoPanel"
  L6_2 = "Ui.Avatar.SubStarInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._promotion_next_stars_panel = L1_2
  L1_2 = A0_2._promotion_next_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.promotion_next_star_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarPromotionStatusPanel
  L4_2 = G
  L4_2 = L4_2.AvatarPromotionStatusPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._promotion_status_panel = L1_2
  L1_2 = A0_2._promotion_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.status_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PromotionMaterialPanel
  L4_2 = G
  L4_2 = L4_2.PromotionMaterialPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._promotion_material_panel = L1_2
  L1_2 = A0_2._promotion_material_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.promotion_material_panel_root
  L1_2(L2_2, L3_2)
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
  L2_2 = {}
  A0_2._material_ids = L2_2
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarPromoteFinish
  L4_2 = L0_1._on_avatar_promotion_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = A0_2._avatar_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._avatar_data = L2_2
  L2_2 = A0_2._avatar_main_page
  L3_2 = L2_2
  L2_2 = L2_2.on_click_levelup
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.PromotedBeforeData
  if L2_2 ~= nil then
    L2_2 = A0_2._avatar_data
    L2_2 = L2_2.PromotedBeforeData
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.AvatarPromotion.AvatarPromotionResultDialog"
    L5_2 = A0_2._avatar_data
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_GamePhaseManager
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentPhase
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2 or L4_2
    if L3_2 then
      L5_2 = L3_2
      L4_2 = L3_2.GetAdventureAudioManager
      L4_2 = L4_2(L5_2)
    end
    if L4_2 ~= nil then
      L6_2 = L4_2
      L5_2 = L4_2.PlayUICharacterVO
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.AdventureCharacterVOType
      L7_2 = L7_2.PromotionUp
      L8_2 = A0_2._avatar_data
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_avatar_promotion_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_promotion_star_and_level
  L1_2(L2_2)
  L1_2 = A0_2._promotion_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_materials
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_coin
  L1_2(L2_2)
  L1_2 = A0_2._res_bar_area_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "AvatarPromotionDialog"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_button
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_title
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._promotion_prev_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.MaxPromotion
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._promotion_next_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.MaxPromotion
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._promotion_next_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_preview_node
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Promotion
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Promotion
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_promotion_prev_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_promotion_prev_max_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.MaxLevel
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Promotion
  L4_2 = L4_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_promotion_next_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Level
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_promotion_next_max_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2.MaxLevel
  L3_2(L4_2, L5_2)
end
L0_1._setup_promotion_star_and_level = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Promotion
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.PromotionCostList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.PromotionCostList
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HJLLLAFEOHH
    L9_2 = L9_2.AJNPKBJMOKL
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L7_2 = {}
      L8_2 = L2_2.PromotionCostList
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.ItemID
      L7_2.ID = L8_2
      L8_2 = L2_2.PromotionCostList
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.ItemNum
      L7_2.Num = L8_2
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = A0_2._promotion_material_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  A0_2._material_ids = L3_2
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._material_ids
    L9_2 = L1_2[L6_2]
    L9_2 = L9_2.ID
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_materials = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Promotion
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.PromotionCostList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.PromotionCostList
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HJLLLAFEOHH
    L9_2 = L9_2.AJNPKBJMOKL
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = L2_2.PromotionCostList
      L7_2 = L7_2[L6_2]
      L1_2 = L7_2.ItemNum
      break
    end
  end
  L3_2 = A0_2._coin_cost_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  A0_2._need_coin = L1_2
end
L0_1._refresh_coin = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Promotion
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.Proto
  L3_2 = L3_2.ItemCost
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = 0
  L5_2 = L1_2.PromotionCostList
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
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
    L10_2 = L1_2.PromotionCostList
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.ItemID
    L9_2.ItemId = L10_2
    L9_2 = L8_2.PileItem
    L10_2 = L1_2.PromotionCostList
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.ItemNum
    L9_2.ItemNum = L10_2
    L10_2 = L2_2
    L9_2 = L2_2.Add
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = L8_2.PileItem
    L11_2 = L11_2.ItemId
    L9_2(L10_2, L11_2)
  end
  L4_2 = G
  L4_2 = L4_2.InventoryUtils
  L4_2 = L4_2.check_item_deleted
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_material_enough
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= false then
    L5_2 = A0_2
    L4_2 = A0_2._is_coin_enough
    L4_2 = L4_2(L5_2)
    if L4_2 ~= false then
      L5_2 = A0_2
      L4_2 = A0_2._is_level_enough
      L4_2 = L4_2(L5_2)
      if L4_2 then
        goto lbl_79
      end
    end
  end
  do return end
  ::lbl_79::
  L4_2 = A0_2._avatar_data
  L5_2 = L4_2
  L4_2 = L4_2.ClearPromotionBeforeData
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_NetworkManager
  L5_2 = L4_2
  L4_2 = L4_2.NDGBAPLMDFB
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.ID
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._btn_promotion_onclick = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.PileItem
    L7_2 = L7_2.ItemId
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HJLLLAFEOHH
    L9_2 = L9_2.AJNPKBJMOKL
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.GetItemCountByConfigID
      L9_2 = L6_2.PileItem
      L9_2 = L9_2.ItemId
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L6_2.PileItem
      L8_2 = L8_2.ItemNum
      if L7_2 < L8_2 then
        L8_2 = G
        L8_2 = L8_2.NotifyManager
        L8_2 = L8_2.notify
        L9_2 = G
        L9_2 = L9_2.CS
        L9_2 = L9_2.NotifyType
        L9_2 = L9_2.UIPileToastMessageTextID
        L10_2 = "RetCodeError_1304"
        L8_2(L9_2, L10_2)
        L8_2 = false
        return L8_2
      end
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._is_material_enough = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.ConvCsEnumToNum
  L4_2 = CS
  L4_2 = L4_2.HJLLLAFEOHH
  L4_2 = L4_2.AJNPKBJMOKL
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2._need_coin
  L2_2 = L1_2 >= L2_2
  if not L2_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_SkillTreeDetail_LimitSoftCoin"
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L0_1._is_coin_enough = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.IsPromotionMaxLevel
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "RetCodeError_1207"
    L2_2(L3_2, L4_2)
  end
  return L1_2
end
L0_1._is_level_enough = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._btn_back_onclick
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L8_1
function L8_1(A0_2)
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
L0_1._btn_back_onclick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPromotionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Promotion
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L4_1.PlayerData
  L3_2 = L2_2.WorldLevel
  L4_2 = L1_2.WorldLevelRequire
  if L3_2 < L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_promotion
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_promotion_disable
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L5_1
    L6_2 = L1_2.WorldLevelRequire
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_promotion_disable
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L3_2 = L2_2.Level
    L4_2 = L1_2.PlayerLevelRequire
    if L3_2 < L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_promotion
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_promotion_disable
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L6_1
      L6_2 = L1_2.PlayerLevelRequire
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_promotion_disable
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_promotion
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_promotion_disable
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._setup_button = L8_1
function L8_1(A0_2)
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
  L4_2 = L7_1
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
L0_1._setup_sub_title = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_view
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L8_1
function L8_1(A0_2)
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
L0_1._on_dispose = L8_1
return L0_1
