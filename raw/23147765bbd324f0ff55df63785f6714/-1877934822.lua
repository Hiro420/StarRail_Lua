local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaPoolDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPoolDetailListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPoolDetailListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaPoolDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "GachaDetailTitle"
L2_1 = "GachaDetailLightconeTitle"
L3_1 = 5
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaPoolDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._gacha_pool_data = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.panel_list
  if L1_2 then
    L1_2 = A0_2.panel_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2.panel_list
      L1_2 = L1_2[1]
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._gacha_pool_data = nil
  A0_2._avatar_list = nil
  A0_2._lightcone_list = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.GachaType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.AvatarUp
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_type
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._gacha_pool_data
    L1_2 = L1_2.GachaType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GachaType
    L2_2 = L2_2.WeaponUp
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_type
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogErrorFormat
      L2_2 = "Unsupport GachaType {1}"
      L3_2 = A0_2._gacha_pool_data
      L3_2 = L3_2.GachaType
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.panel_list = L1_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.DetailItemsRow
  L2_2 = {}
  L3_2 = {}
  L4_2 = 0
  L5_2 = L1_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = L8_2.ItemMainType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ItemMainType
    L10_2 = L10_2.AvatarCard
    if L9_2 == L10_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    else
      L9_2 = L8_2.ItemMainType
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ItemMainType
      L10_2 = L10_2.Equipment
      if L9_2 == L10_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L3_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._create_item_panel
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_item_panel
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_item_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Rarity
    L8_2 = #L8_2
    L9_2 = L2_2[L8_2]
    if L9_2 == nil then
      L9_2 = {}
      L2_2[L8_2] = L9_2
    end
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2[L8_2]
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = L3_1
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.GachaPoolDetailListPanel
      L10_2 = G
      L10_2 = L10_2.GachaPoolDetailListPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.sync_loadto
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_item_detail
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_view
      L10_2 = L2_2[L6_2]
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.get_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2._binder
      L9_2 = L9_2.scroll_rect
      L8_2.mScrollRect = L9_2
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2.panel_list
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._create_item_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2.panel_list
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.panel_list
    L6_2 = L4_2 + 1
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.get_static_list
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.SetDirectionRefListview
    L7_2 = A0_2.panel_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_static_list
    L7_2 = L7_2(L8_2)
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.EventSystems
    L8_2 = L8_2.MoveDirection
    L8_2 = L8_2.Up
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._set_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
return L0_1
