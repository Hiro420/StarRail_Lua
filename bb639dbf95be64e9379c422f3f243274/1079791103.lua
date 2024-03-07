local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueRevivePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueReviveAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueReviveAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRevivePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = 31
L3_1 = "RogueRevivePage"
L4_1 = "#eb4d3d"
L5_1 = "#ffffff"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueRevivePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._rogue_avatars = L1_2
  L1_2 = {}
  A0_2._selected_avatars = L1_2
  A0_2._selected_count = 0
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2 = L1_2(L2_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.GPNFLDHKFHE
  L4_2 = L0_1._on_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JHLHHLLAJEE
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_select_panel
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L3_2 = L3_1
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._res_bar_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_rogue_revive_cost
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cost_and_confirm_btn
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._rogue_item_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_cost
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = tonumber
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueRogueExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "Rogue_Recover_Percent"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.ConstValue
  L2_2 = L2_2(L3_2)
  A0_2._recover_percent = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Rogue_Revive_Tips_1"
  L5_2 = A0_2._recover_percent
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._init_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cost_and_confirm_btn
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._all_avatars = nil
  A0_2._selected_avatars = nil
  A0_2._avatar_list_panel = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.unselect_all
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cost_and_confirm_btn
  L1_2(L2_2)
end
L0_1._on_refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_list_panel
  if L1_2 == nil then
    A0_2._total_cost = 0
  else
    L1_2 = A0_2._avatar_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_selected_count
    L1_2 = L1_2(L2_2)
    A0_2._selected_count = L1_2
    L1_2 = A0_2._selected_count
    L2_2 = A0_2._revive_cost
    L1_2 = L1_2 * L2_2
    A0_2._total_cost = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._total_cost
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2._rogue_item_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._current_item_num = L1_2
  L1_2 = A0_2._total_cost
  L2_2 = A0_2._current_item_num
  L1_2 = L1_2 > L2_2
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.num_cost
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextColor
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.num_cost
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextColor
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._selected_count
  L2_2 = L2_2 ~= 0 and L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_cost_and_confirm_btn = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_confirm_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_btn = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_avatar
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_avatar_item_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_avatar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = 0
  L4_2 = A0_2
  L3_2 = A0_2._get_rogue_avatar_info
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.PickAvatarIDs
    L5_2 = 0
    L6_2 = L4_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.GetAvatar
      L11_2 = L4_2[L8_2]
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 ~= nil then
        L10_2 = G
        L10_2 = L10_2.AvatarUtils
        L10_2 = L10_2.get_avatar_hp_percent
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 <= 0 then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L1_2
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
          L2_2 = L2_2 + 1
        end
      end
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  return L4_2, L5_2
end
L0_1._get_rogue_revive_avatars = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_avatar_info
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ReviveAvatarCostItems
    if L2_2 ~= nil then
      L2_2 = L1_2.ReviveAvatarCostItems
      L2_2 = L2_2.Count
      if 0 < L2_2 then
        L2_2 = L1_2.ReviveAvatarCostItems
        L2_2 = L2_2[0]
        L3_2 = L2_2.ItemID
        A0_2._rogue_item_id = L3_2
        L3_2 = L2_2.ItemNum
        A0_2._revive_cost = L3_2
    end
  end
  else
    L2_2 = L2_1
    A0_2._rogue_item_id = L2_2
    A0_2._revive_cost = 0
  end
end
L0_1._init_rogue_revive_cost = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetCurModeRogueAvatarInfo
  return L1_2()
end
L0_1._get_rogue_avatar_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueReviveSelectPanel
  L4_2 = G
  L4_2 = L4_2.RogueReviveSelectPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_list_panel = L1_2
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_select_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._create_select_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cost_and_confirm_btn
  L2_2(L3_2)
end
L0_1._on_select_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_revive_avatars
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = L2_2 == 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_avatar_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if not L3_2 then
    L4_2 = A0_2._avatar_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L1_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._init_ui_navigation
    L4_2(L5_2)
  end
  L4_2 = A0_2.short_cut_hint_panel
  if L4_2 ~= nil then
    L4_2 = A0_2.short_cut_hint_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_short_cut_hint_view
    if L3_2 then
      L6_2 = {}
      L7_2 = "Menu_Cancel"
      L6_2[1] = L7_2
      if L6_2 then
        goto lbl_42
      end
    end
    L6_2 = {}
    L7_2 = "Menu_Confirm"
    L8_2 = "Menu_Cancel"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    ::lbl_42::
    L4_2(L5_2, L6_2)
  end
end
L0_1._refresh_select_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  return L1_2
end
L0_1._avatars_to_id_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_rogue_avatar_info
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._avatar_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_all_selected_avatar_data
    L2_2 = L2_2(L3_2)
    A0_2._selected_avatars = L2_2
    L2_2 = L1_2.SendPacketCmd
    L3_2 = L2_2
    L2_2 = L2_2.SendReviveRogueAvatarCsReq
    L4_2 = A0_2._avatars_to_id_list
    L5_2 = A0_2._selected_avatars
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_confirm_btn_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_click = L6_1
return L0_1
