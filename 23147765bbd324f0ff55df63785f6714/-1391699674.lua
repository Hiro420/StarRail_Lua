local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageUpGradePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageUpGradePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherUI3D.AetherSpiritUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUpgradePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._spirit_ui3d = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._spirit_data = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._upgrade_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnPromote
  L4_2 = L0_1._on_spirit_promote
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUpgradePageInfoPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritUpgradePageInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._info_panel = L1_2
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_promotion_change_callback
  L3_2 = A0_2._on_promotion_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUpgradePageUpGradePanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritUpgradePageUpGradePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._upgrade_panel = L1_2
  L1_2 = A0_2._upgrade_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_upgrade_callback
  L3_2 = A0_2._on_click_upgrade
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._upgrade_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_upgrade_panel
  L1_2(L2_2, L3_2)
  A0_2._selected_common_material_count = 0
  A0_2._selected_spirit_frag = 0
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui3d = L1_2
  L1_2 = {}
  A0_2._bonus_table = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_res_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_active_material_or_max_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L1_2 = A0_2._ui3d
  L2_2 = L1_2
  L1_2 = L1_2.reset_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._update_res_bar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_upgrade_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.MaxPromotion
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.MaxPromotion
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._set_active_material_or_max_hint_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
end
L0_1._on_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.GMEBHPLICEL
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._selected_common_material_count
  L5_2 = A0_2._selected_spirit_frag
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_click_upgrade = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.PromotionBeforeData
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.deep_copy
  L4_2 = A0_2._bonus_table
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.Promotion
  L5_2 = L2_2.PromotionBefore
  if L4_2 > L5_2 then
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_async_show
    L5_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradeResult.AetherSpiritUpgradeResultDialog"
    L6_2 = A0_2._spirit_data
    L7_2 = L2_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_active_material_or_max_hint_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._on_refresh
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_res_bar
  L4_2(L5_2)
end
L0_1._on_spirit_promote = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.Promotion
  if A1_2 > L2_2 then
    L2_2 = A0_2._spirit_data
    L3_2 = L2_2
    L2_2 = L2_2.GetNeedExpToPromotion
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._selected_common_material_count = L2_2
    L2_2 = A0_2._upgrade_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_badge_and_mat_enough
    L4_2 = A0_2._info_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_is_badge_enough
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._info_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_is_mat_enough
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._upgrade_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._spirit_data
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_ui_navigation
    L2_2(L3_2)
  end
end
L0_1._on_promotion_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
