local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaPoolTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaPoolTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.GachaModule
L2_1 = 1
L3_1 = 2
L4_1 = "UI/Avatar/NewAvatarDropDialog.prefab"
L5_1 = "UI/Drawcard/GachaResultDialog.prefab"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithCut
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_ExitWithCut
  L1_2 = L1_2 | L2_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_AboveAndBelowBlack
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._default_tab_index = 1
  A0_2._performance_played = false
  A0_2._gacha_result_dialog_show = false
  A0_2._enable_close = true
  A0_2._close_protection_time = 0.5
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "GachaSwitchProtectTime"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._btn_disable_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._enable_btn_interactable
  L4_2 = A0_2._btn_disable_time
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._enable_interactable_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_close_protection_end
  L4_2 = A0_2._close_protection_time
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._init_type2tab_table
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel_without_binder
  L4_2 = G
  L4_2 = L4_2.TabControl
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._tab_control = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "GachaEndProtectTime"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.Value
    L3_2 = L3_2.FloatValue
    A0_2._close_protection_time = L3_2
  end
  A0_2._default_gacha_id = A1_2
end
L0_1.init = L6_1
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
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.Normal
  L3_2 = {}
  L4_2 = G
  L4_2 = L4_2.DefaultGachaPoolTabItem
  L5_2 = G
  L5_2 = L5_2.DefaultGachaPoolTabItemBinder
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.AvatarUp
  L3_2 = {}
  L4_2 = G
  L4_2 = L4_2.DefaultGachaPoolTabItem
  L5_2 = G
  L5_2 = L5_2.DefaultGachaPoolTabItemBinder
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.WeaponUp
  L3_2 = {}
  L4_2 = G
  L4_2 = L4_2.DefaultGachaPoolTabItem
  L5_2 = G
  L5_2 = L5_2.DefaultGachaPoolTabItemBinder
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2[L2_2] = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.Newbie
  L3_2 = {}
  L4_2 = G
  L4_2 = L4_2.DefaultGachaPoolTabItem
  L5_2 = G
  L5_2 = L5_2.DefaultGachaPoolTabItemBinder
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2[L2_2] = L3_2
  A0_2._gachaType2tabItem = L1_2
end
L0_1._init_type2tab_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gacha_pool_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_bar_area_panel
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.AddTempCacheUI
  L3_2 = L5_1
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.AddTempCacheUI
  L3_2 = L4_1
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = A0_2._gacha_tab_items
    if L2_2 then
      L2_2 = A0_2._tab_index
      if L2_2 then
        L2_2 = A0_2._gacha_tab_items
        L3_2 = A0_2._tab_index
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.reset_anim
        L2_2(L3_2)
        L2_2 = 1
        L3_2 = A0_2._gacha_tab_items
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = A0_2._tab_index
          if L5_2 ~= L6_2 then
            L6_2 = A0_2._gacha_tab_items
            L6_2 = L6_2[L5_2]
            L7_2 = L6_2
            L6_2 = L6_2.safe_set_active
            L8_2 = false
            L6_2(L7_2, L8_2)
          end
        end
      end
    end
  end
end
L0_1._on_view_active_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DoGacha
  L4_2 = A0_2._on_do_gacha
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowRspError
  L4_2 = A0_2._on_do_gacha_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GachaPoolUpdate
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FeatureSwitched
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GachaShowMask
  L4_2 = A0_2._on_mask_show
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._gacha_tab_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.dispose
    L6_2(L7_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_gacha_panel_container
    L1_2 = L1_2.childCount
    L1_2 = L1_2 - 1
    L2_2 = 0
    L3_2 = -1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2.destroy_object
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_gacha_panel_container
      L8_2 = L7_2
      L7_2 = L7_2.GetChild
      L9_2 = L4_2
      L7_2 = L7_2(L8_2, L9_2)
      L7_2 = L7_2.gameObject
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = A0_2._performance_played
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AssetMgr
    L2_2 = L1_2
    L1_2 = L1_2.UnloadUnusedAssets
    L1_2(L2_2)
  end
  A0_2._gacha_pool_datas = nil
  A0_2._gacha_tab_items = nil
  A0_2._gachaItemDatas = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.RemoveTempCacheUI
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.ADVAssetPreload
  L1_2 = L1_2.UIAssetGroup
  L2_2 = L1_2
  L1_2 = L1_2.RemoveTempCacheUI
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_gacha_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_pools_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.try_adjust_ui
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.override_click_item
  L3_2 = A0_2
  L4_2 = A0_2._on_override_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.click_item
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._button_mutex
  L3_2 = L2_2
  L2_2 = L2_2.Check
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._tab_control
    L1_3 = L0_3
    L0_3 = L0_3.click_item
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_override_tab_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_gacha_panel_container
  L2_2 = 0
  L3_2 = L1_2.childCount
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L6_2 = L1_2.GetChild
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1._hide_gacha_panels = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2._gacha_pool_datas = L1_2
  L1_2 = {}
  A0_2._gacha_tab_items = L1_2
  A0_2._default_tab_index = 1
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedGachaPoolDatas
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.IsValid
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.IsFeatureClosed
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2.sync_load_prefab
        L9_2 = L6_2.Row
        L9_2 = L9_2.PrefabPath
        L10_2 = A0_2._binder
        L10_2 = L10_2.node_gacha_panel_container
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L9_2 = A0_2
        L8_2 = A0_2.create_panel
        L10_2 = A0_2._gachaType2tabItem
        L11_2 = L6_2.GachaType
        L10_2 = L10_2[L11_2]
        L11_2 = L2_1
        L10_2 = L10_2[L11_2]
        L11_2 = A0_2._gachaType2tabItem
        L12_2 = L6_2.GachaType
        L11_2 = L11_2[L12_2]
        L12_2 = L3_1
        L11_2 = L11_2[L12_2]
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L8_2.button_prefab_index = 0
        L10_2 = L8_2
        L9_2 = L8_2.bind
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
        L10_2 = L8_2
        L9_2 = L8_2.set_tab_data
        L11_2 = L6_2
        L9_2(L10_2, L11_2)
        L10_2 = L8_2
        L9_2 = L8_2.set_time_over_callback
        L11_2 = A0_2._on_gacha_pool_time_out
        L12_2 = A0_2
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = A0_2._tab_control
        L10_2 = L9_2
        L9_2 = L9_2.add_item
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
        L9_2 = L6_2.GachaID
        L10_2 = L1_1.DefaultGachaID
        if L9_2 ~= L10_2 then
          L9_2 = A0_2._default_gacha_id
          if L9_2 == nil then
            goto lbl_70
          end
          L9_2 = L6_2.GachaID
          L10_2 = A0_2._default_gacha_id
          if L9_2 ~= L10_2 then
            goto lbl_70
          end
        end
        L9_2 = L5_2 + 1
        A0_2._default_tab_index = L9_2
        A0_2._default_gacha_id = nil
        ::lbl_70::
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = A0_2._gacha_pool_datas
        L11_2 = L6_2
        L9_2(L10_2, L11_2)
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = A0_2._gacha_tab_items
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
end
L0_1._create_pools_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.ConvCsEnumToNum
  L2_2 = CS
  L2_2 = L2_2.NIJNBICAPPA
  L2_2 = L2_2.BLGJHBHEPGA
  L1_2 = L1_2(L2_2)
  L2_2 = 8
  L3_2 = 2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ConfirmDialogUtil
  L4_2 = L4_2.ShowOkHint
  L5_2 = "GachaUpdateDialogue"
  L6_2 = "Common_ConfirmDialog_Title"
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_UIManager
    L1_3 = L0_3
    L0_3 = L0_3.BlockWaitNetPacket
    L2_3 = L1_2
    L3_3 = nil
    L4_3 = nil
    L5_3 = L2_2
    L6_3 = L3_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.NetworkManager
    L0_3 = L0_3.OOGONDGGKMI
    L1_3 = L0_3
    L0_3 = L0_3.BKHKEICCKNP
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_gacha_pool_time_out = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L1_2(L2_2)
  end
  L1_2 = A0_2._gacha_result_dialog_show
  if L1_2 then
    A0_2._enable_close = false
    A0_2._gacha_result_dialog_show = false
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  A0_2._enable_close = true
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._on_close_protection_end = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._tab_index = A1_2
  L2_2 = A0_2._gacha_pool_datas
  L2_2 = L2_2[A1_2]
  L1_1.GachaPoolDataCache = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_main_page
  L4_2 = A0_2._gacha_pool_datas
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_btn_interactable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._enable_interactable_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._enable_interactable_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = tostring
  L5_2 = A0_2._gacha_pool_datas
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.GachaID
  L4_2 = L4_2(L5_2)
  L5_2 = ""
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_tab_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_function_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.draw_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._res_bar_area_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.TypeBasicInfoRow
  L4_2 = L4_2.GachaBar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_pool_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Row
  L4_2 = L4_2.PoolName
  L2_2(L3_2, L4_2)
end
L0_1._setup_main_page = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_close_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_function_panel
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.sub_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_interactable
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.draw_panel
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.draw_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_draw_btn_interactable
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_btn_interactable = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_interactable_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_interactable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._enable_btn_interactable = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
end
L0_1._create_bar_area_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._gachaItemDatas = A1_2
  L2_2 = L1_1.EnablePerformance
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Gacha.GachaCutscene2DPage"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    A0_2._performance_played = true
    L2_2 = A0_2._gachaItemDatas
    L2_2 = L2_2.Count
    if L2_2 ~= 1 then
      A0_2._gacha_result_dialog_show = true
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._invoke_gacha_toast
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.draw_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.draw_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_screen_fade_in
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._on_do_gacha = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 1
  L2_2 = A0_2._gachaItemDatas
  L2_2 = L2_2.Count
  if L2_2 == 1 then
    L2_2 = A0_2._gachaItemDatas
    L2_2 = L2_2[0]
    L3_2 = G
    L3_2 = L3_2.PopupQueueManager
    L4_2 = L3_2
    L3_2 = L3_2.inqueue_no_skip
    L5_2 = "GachaToast"
    L6_2 = L1_2
    L7_2 = "Ui.Gacha.GachaObtainDialog"
    L8_2 = nil
    L9_2 = L2_2
    L10_2 = nil
    L11_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L2_2 = 0
  L3_2 = A0_2._gachaItemDatas
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._gachaItemDatas
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.ItemID
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.Rarity
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemRarity
    L9_2 = L9_2.SuperRare
    if L8_2 == L9_2 then
      L8_2 = L6_2.IsNew
      if L8_2 then
        L8_2 = G
        L8_2 = L8_2.PopupQueueManager
        L9_2 = L8_2
        L8_2 = L8_2.inqueue_no_skip
        L10_2 = "GachaToast"
        L11_2 = L1_2
        L12_2 = "Ui.Gacha.GachaObtainDialog"
        L13_2 = nil
        L14_2 = L6_2
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    else
      L8_2 = G
      L8_2 = L8_2.PopupQueueManager
      L9_2 = L8_2
      L8_2 = L8_2.inqueue
      L10_2 = "GachaToast"
      L11_2 = L1_2
      L12_2 = "Ui.Gacha.GachaObtainDialog"
      L13_2 = nil
      L14_2 = L6_2
      function L15_2()
        local L0_3, L1_3, L2_3
        L0_3 = G
        L0_3 = L0_3.PopupQueueManager
        L1_3 = L0_3
        L0_3 = L0_3.skip_queue
        L2_3 = "GachaToast"
        L0_3(L1_3, L2_3)
      end
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.inqueue_no_skip
  L4_2 = "GachaToast"
  L5_2 = L1_2
  L6_2 = "Ui.Gacha.GachaResultDialog"
  L7_2 = nil
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._gacha_result_dialog_show = true
end
L0_1._invoke_gacha_toast = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.draw_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_screen_fade_in
  L2_2(L3_2)
end
L0_1._on_do_gacha_fail = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_mask_show = L6_1
return L0_1
