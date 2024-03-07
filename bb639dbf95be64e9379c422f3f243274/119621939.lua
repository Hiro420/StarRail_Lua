local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodReplaceDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodReplaceDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.TeamMemberSpIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.TeamMemberSpIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseBpIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseBpIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FoodUseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ItemFoodSubType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemFoodTargetType
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.AvatarModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.InventoryModule
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FoodUseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._avatar_list = L1_2
  A0_2._buff_item_no = nil
  A0_2._need_select = false
  A0_2._item = nil
  A0_2.buff_data_row = nil
  A0_2._wait_callback = false
  A0_2._use_count = 1
  A0_2._bp_count = 0
  A0_2._wait_callback_to_exit = false
  A0_2._show_bp_tag = false
  A0_2._show_sp_tag = false
  A0_2._show_hp_tag = false
  L1_2 = {}
  A0_2._select_avatars = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
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
  L1_2 = A0_2._need_select
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_enter_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone1
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.clear_cur_selected_object
    L1_2(L2_2)
  end
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_select
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._get_avatar_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_sp
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._get_sp_icon_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_bp
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._get_bp_icon_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_btn_cancel
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
  L3_2 = L3_2.btn_toggle_quick_consumable
  L4_2 = A0_2._on_click_quick_consume_toggle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FoodItemUsed
  L4_2 = L0_1._on_get_item_used
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = L0_1._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "FoodUseDialog init item is nil"
    L2_2(L3_2, L4_2)
    return
  end
  A0_2._item = A1_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.UseDataID
  A0_2._buff_item_no = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseBuffDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._buff_item_no
  L2_2 = L2_2(L3_2)
  A0_2.buff_data_row = L2_2
  L2_2 = A0_2.buff_data_row
  L2_2 = L2_2.MazeBuffID
  L3_2 = G
  L3_2 = L3_2.BuffUtils
  L3_2 = L3_2.GetMazeBuffData
  L4_2 = L2_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.maze_buff_row = L3_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.buff_data_row
  L1_2 = L1_2.ConsumeTag
  A0_2.tag_count = 0
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemFoodUseTag
    L7_2 = L7_2.HP
    if L6_2 == L7_2 then
      A0_2._show_hp_tag = true
      L7_2 = A0_2.tag_count
      L7_2 = L7_2 + 1
      A0_2.tag_count = L7_2
    else
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.ItemFoodUseTag
      L7_2 = L7_2.BP
      if L6_2 == L7_2 then
        A0_2._show_bp_tag = true
        L7_2 = A0_2.tag_count
        L7_2 = L7_2 + 1
        A0_2.tag_count = L7_2
      else
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.ItemFoodUseTag
        L7_2 = L7_2.SP
        if L6_2 == L7_2 then
          A0_2._show_sp_tag = true
          L7_2 = A0_2.tag_count
          L7_2 = L7_2 + 1
          A0_2.tag_count = L7_2
        end
      end
    end
  end
end
L0_1._init_buff_tag = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buff_item_no
  if L1_2 then
    L1_2 = A0_2.buff_data_row
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2
  L1_2 = A0_2._init_select_param
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_buff_tag
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quick_consumable_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_all_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_detail
  L1_2(L2_2)
end
L0_1._init_all = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_count_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A0_2._item
  L5_2 = L5_2.Count
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_item_count = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_count_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Inventory_ItemUse_LeftCount"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_count
  L1_2(L2_2)
  L1_2 = A0_2.buff_data_row
  L1_2 = L1_2.IsShowItemDesc
  L2_2 = A0_2.maze_buff_row
  if L2_2 ~= nil then
    L2_2 = A0_2._item
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_item_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_item_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2._item
      L4_2 = L4_2.Row
      L4_2 = L4_2.ItemDesc
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._show_sp_tag
  L4_2 = A0_2._show_bp_tag
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
end
L0_1._show_buff_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_all
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buff_data_row
  L2_2 = A0_2._item
  L2_2 = L2_2.UseMethod
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseMethod
  L3_2 = L3_2.TeamFoodBenefit
  L3_2 = #L3_2
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._item
    L2_2 = L2_2.UseMethod
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemUseMethod
    L3_2 = L3_2.ExternalSystemFoodBenefit
    L3_2 = #L3_2
    if L2_2 ~= L3_2 then
      goto lbl_24
    end
  end
  A0_2._need_select = false
  goto lbl_37
  ::lbl_24::
  L2_2 = A0_2._item
  L2_2 = L2_2.UseMethod
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseMethod
  L3_2 = L3_2.TeamSpecificFoodBenefit
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    A0_2._need_select = true
    L2_2 = L1_2.UseTargetType
    A0_2._select_type = L2_2
  end
  ::lbl_37::
  L2_2 = L1_2.UseTargetType
  L3_2 = L2_1.Dead
  L2_2 = L2_2 == L3_2
  A0_2._is_revive = L2_2
end
L0_1._init_select_param = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._show_sp_tag
  if L2_2 then
    L3_2 = A1_2
    L2_2 = A1_2.CheckMask
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TeamDataRefreshMask
    L4_2 = L4_2.MemberSP
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_sp
      L2_2(L3_2)
    end
  end
end
L0_1._on_team_data_refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._avatar_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L3_1
    L7_2 = L6_2
    L6_2 = L6_2.GetCurrentTeam
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.GetMemberDataByID
    L8_2 = L5_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = A0_2._sp_panel_list
      L7_2 = L7_2[L4_2]
      L8_2 = L7_2
      L7_2 = L7_2.refresh_sp
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_sp = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A1_2 ~= nil then
    L2_2 = A0_2._item
    if L2_2 ~= nil then
      L2_2 = A0_2._item
      L2_2 = L2_2.ConfigID
      if L2_2 == A1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseBuffDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._buff_item_no
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L2_2 = L3_2.UseEffect
  end
  L4_2 = A0_2._need_select
  if not L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_btn_confirm
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_btn_cancel
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    A0_2._wait_callback_to_exit = true
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.UI
  L6_2 = "FoodUseDialog effect_str"
  L7_2 = L2_2 or L7_2
  if not L2_2 or not L2_2 then
    L7_2 = "str nil"
  end
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  A0_2._wait_callback = true
  L4_2 = pairs
  L5_2 = A0_2._select_avatars
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = A0_2
    L9_2 = A0_2.get_selected_idx
    L11_2 = A0_2._avatar_list
    L12_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L11_2 = A0_2
    L10_2 = A0_2.check_avatar_play_effect
    L12_2 = L8_2
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      if L9_2 ~= nil and L2_2 ~= nil and L2_2 ~= "" then
        L12_2 = A0_2._binder
        L12_2 = L12_2.scroll_avatar
        L13_2 = L12_2
        L12_2 = L12_2.GetShownItemByItemIndex
        L14_2 = L9_2 - 1
        L12_2 = L12_2(L13_2, L14_2)
        if L12_2 ~= nil then
          L13_2 = L12_2.UserObjectData
          L15_2 = L13_2
          L14_2 = L13_2.play_effect
          L16_2 = L2_2
          function L17_2()
            local L0_3, L1_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3._on_anim_end_callback
            L0_3(L1_3)
          end
          L14_2(L15_2, L16_2, L17_2)
        end
      end
    else
      L12_2 = G
      L12_2 = L12_2.NotifyManager
      L12_2 = L12_2.notify
      L13_2 = G
      L13_2 = L13_2.CS
      L13_2 = L13_2.NotifyType
      L13_2 = L13_2.UIPileToastMessageTextID
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
  L4_2 = ipairs
  L5_2 = A0_2._avatar_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = A0_2
    L9_2 = A0_2._refresh_local_avatar_by_idx
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_item_count
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_bp
  L4_2(L5_2)
end
L0_1._on_get_item_used = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._show_sp_tag
  if L2_2 then
    L2_2 = A1_2.UltraSkillType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarSpecialUltraType
    L3_2 = L3_2.SpecialSP
    if L2_2 == L3_2 then
      L2_2 = A0_2._select_avatars
      L2_2 = #L2_2
      if 1 < L2_2 then
        L2_2 = false
        L3_2 = nil
        return L2_2, L3_2
      end
    end
  end
  L2_2 = true
  L3_2 = nil
  return L2_2, L3_2
end
L0_1.check_avatar_play_effect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_callback
  if not L1_2 then
    return
  end
  A0_2._wait_callback = false
  A0_2._wait_callback_to_exit = false
  L1_2 = A0_2._need_select
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._item
  L1_2 = L1_2.Count
  if L1_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_confirm_button
  L2_2(L3_2)
end
L0_1._on_anim_end_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._avatar_list = L1_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MemberDatas
  L1_2 = L1_2.Length
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L2_2
    L7_2 = L2_2.GetMemberData
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = G
      L8_2 = L8_2.AvatarUtils
      L8_2 = L8_2.get_avatar_data_by_member_data
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = A0_2._avatar_list
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L3_2 = A0_2._need_select
  if L3_2 then
    L3_2 = {}
    A0_2._select_avatars = L3_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._select_avatars
    L5_2 = A0_2._avatar_list
    L5_2 = L5_2[1]
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._avatar_list
    A0_2._select_avatars = L3_2
  end
end
L0_1._get_avatar_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_avatar_data
  L1_2(L2_2)
  L1_2 = {}
  A0_2._sp_panel_list = L1_2
  L1_2 = {}
  A0_2._bp_panel_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatar_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sp_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_bp_panel
  L1_2(L2_2)
end
L0_1._setup_all_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_sp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_sp_tag
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._show_sp_tag
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_sp
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._avatar_list
    L3_2 = #L3_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ipairs
    L2_2 = A0_2._avatar_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L3_1
      L7_2 = L6_2
      L6_2 = L6_2.GetCurrentTeam
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.GetMemberDataByID
      L8_2 = L5_2.ID
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = A0_2._sp_panel_list
      L7_2 = L7_2[L4_2]
      if L7_2 ~= nil and L6_2 ~= nil then
        L7_2 = A0_2._sp_panel_list
        L7_2 = L7_2[L4_2]
        L8_2 = L7_2
        L7_2 = L7_2.setup_view
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1._setup_sp_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_bp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._show_bp_tag
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._show_bp_tag
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_bp
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = L1_2.MPMax
    L6_2 = L5_2
    L5_2 = L5_2.ToFloat
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L1_2.MP
    L4_2 = L3_2
    L3_2 = L3_2.ToFloat
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    A0_2._bp_count = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_bp
    L2_2(L3_2)
  end
end
L0_1._setup_bp_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._show_bp_tag
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2.MPMax
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A0_2._bp_count
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L1_2.MP
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2._bp_count = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2.buff_data_row
  L5_2 = L5_2.PreviewSkillPoint
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A0_2._bp_count
  L6_2 = L6_2 + L4_2
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 1
  L7_2 = L2_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    if 1 <= L9_2 and L3_2 >= L9_2 then
      L10_2 = A0_2._bp_panel_list
      L10_2 = L10_2[L9_2]
      L11_2 = L10_2
      L10_2 = L10_2.set_normal
      L10_2(L11_2)
    else
      L10_2 = A0_2._bp_count
      if L9_2 <= L10_2 and L3_2 < L9_2 then
        L10_2 = A0_2._bp_panel_list
        L10_2 = L10_2[L9_2]
        L11_2 = L10_2
        L10_2 = L10_2.set_remind
        L10_2(L11_2)
      else
        L10_2 = A0_2._wait_callback_to_exit
        if not L10_2 and L9_2 <= L5_2 then
          L10_2 = A0_2._bp_count
          if L9_2 > L10_2 then
            L10_2 = A0_2._bp_panel_list
            L10_2 = L10_2[L9_2]
            L11_2 = L10_2
            L10_2 = L10_2.set_ready
            L10_2(L11_2)
        end
        else
          L10_2 = A0_2._bp_panel_list
          L10_2 = L10_2[L9_2]
          L11_2 = L10_2
          L10_2 = L10_2.set_empty
          L10_2(L11_2)
        end
      end
    end
  end
end
L0_1._refresh_bp = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarSelectIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSelectIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._avatar_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._set_item_panel
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  function L6_2(A0_3, A1_3, ...)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_avatar_click
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_show_hp
  L9_2 = true
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._get_avatar_item = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TeamMemberSpIconPanel
    L8_2 = G
    L8_2 = L8_2.TeamMemberSpIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = A0_2._sp_panel_list
    L6_2 = A2_2 + 1
    L5_2[L6_2] = L4_2
  end
  return L3_2
end
L0_1._get_sp_icon_item = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FoodUseBpIconPanel
    L8_2 = G
    L8_2 = L8_2.FoodUseBpIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = A0_2._bp_panel_list
    L6_2 = A2_2 + 1
    L5_2[L6_2] = L4_2
  end
  return L3_2
end
L0_1._get_bp_icon_item = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "_on_avatar_click "
  L5_2 = " "
  if A1_2 == nil then
    L6_2 = "nil"
    if L6_2 then
      goto lbl_15
    end
  end
  L6_2 = "false"
  ::lbl_15::
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._need_select
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_selected_idx
  L4_2 = A0_2._select_avatars
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.UI
  L5_2 = "_on_avatar_click index"
  L6_2 = " "
  if L2_2 == nil then
    L7_2 = "nil"
    if L7_2 then
      goto lbl_39
    end
  end
  L7_2 = L2_2
  ::lbl_39::
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    return
  else
    L4_2 = A0_2
    L3_2 = A0_2.get_selected_idx
    L5_2 = A0_2._avatar_list
    L6_2 = A0_2._select_avatars
    L6_2 = L6_2[1]
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = {}
    A0_2._select_avatars = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._select_avatars
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.get_selected_idx
    L6_2 = A0_2._avatar_list
    L7_2 = A0_2._select_avatars
    L7_2 = L7_2[1]
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._refresh_local_avatar_by_idx
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._refresh_local_avatar_by_idx
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1._on_avatar_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatar
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = A0_2._avatar_list
    L4_2 = L4_2[A1_2]
    L6_2 = A0_2
    L5_2 = A0_2._set_item_panel
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._show_sp_tag
  if L3_2 then
    L3_2 = A0_2._sp_panel_list
    L3_2 = L3_2[A1_2]
    if L3_2 ~= nil then
      L3_2 = A0_2._sp_panel_list
      L3_2 = L3_2[A1_2]
      L4_2 = L3_2
      L3_2 = L3_2.set_preview
      L5_2 = false
      L6_2 = 0
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._refresh_local_avatar_by_idx = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = true
  L4_2 = A0_2._need_select
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.get_selected_idx
    L6_2 = A0_2._select_avatars
    L7_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2 ~= nil
  end
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentTeam
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetMemberDataByID
  L6_2 = A2_2.ID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.LeftHPRatio
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.SuperDebug
  L6_2 = L6_2.LogFormatWithTag
  L7_2 = G
  L7_2 = L7_2.LogTag
  L7_2 = L7_2.UI
  L8_2 = "_get_avatar_item id"
  L9_2 = A2_2.ID
  L10_2 = " index"
  L11_2 = " hp"
  L12_2 = L5_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.setup_view
  L8_2 = A2_2
  L9_2 = false
  L10_2 = L3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A1_2
  L6_2 = A1_2.setup_dead_view
  L8_2 = L5_2 <= 0
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.set_black_mask
  L8_2 = L5_2 <= 0
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.set_preview_blood
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.set_select_anim_enable
  L8_2 = A0_2._need_select
  L6_2(L7_2, L8_2)
end
L0_1._set_item_panel = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      return L6_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_selected_idx = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.buff_data_row
  L1_2 = L1_2.ConsumeType
  A0_2.consume_type = L1_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.can_be_quick_consumed_by_item_id
  L2_2 = A0_2._item
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  A0_2.can_open_quick_consume = L1_2
  L1_2 = A0_2.consume_type
  L2_2 = FoodConsumeType
  L2_2 = L2_2.Attack
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.consume_type
    L2_2 = FoodConsumeType
    L2_2 = L2_2.Defend
  end
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.enable_quick_use_func
  L1_2 = L1_2 == L2_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_quick_consumable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2.can_open_quick_consume
    if L2_2 then
      L2_2 = L5_1
      L3_2 = L2_2
      L2_2 = L2_2.IsQuickConsumableTurnSwitchOpen
      L4_2 = A0_2.consume_type
      L2_2 = L2_2(L3_2, L4_2)
      A0_2.consume_toggle_open = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_toggle_quick_consumable
      L3_2 = L2_2
      L2_2 = L2_2.SetChecked
      L4_2 = A0_2.consume_toggle_open
      L2_2(L3_2, L4_2)
  end
  else
    A0_2.consume_toggle_open = false
  end
end
L0_1._init_quick_consumable_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.can_open_quick_consume
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_QuickConsumable_NotAvailible"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2.consume_toggle_open
  L1_2 = not L1_2
  A0_2.consume_toggle_open = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle_quick_consumable
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2.consume_toggle_open
  L1_2(L2_2, L3_2)
end
L0_1._on_click_quick_consume_toggle = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_confirm_button
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2._select_avatars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.get_selected_idx
    L8_2 = A0_2._avatar_list
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_avatar
      L8_2 = L7_2
      L7_2 = L7_2.GetShownItemByItemIndex
      L9_2 = L6_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L8_2 = L7_2.UserObjectData
        L9_2 = L3_1
        L10_2 = L9_2
        L9_2 = L9_2.GetCurrentTeam
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2
        L9_2 = L9_2.GetMemberDataByID
        L11_2 = L5_2.ID
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = A0_2.buff_data_row
        L10_2 = L10_2.PreviewHPRecoveryPercent
        L11_2 = L9_2.AvatarData
        L12_2 = L11_2
        L11_2 = L11_2.GetHPMax
        L11_2 = L11_2(L12_2)
        L12_2 = L11_2
        L11_2 = L11_2.ToFloat
        L11_2 = L11_2(L12_2)
        L12_2 = A0_2.buff_data_row
        L12_2 = L12_2.PreviewHPRecoveryValue
        L13_2 = L12_2 / L11_2
        L14_2 = L10_2 + L13_2
        if L14_2 ~= 0.0 then
          L14_2 = L9_2.LeftHPRatio
          L15_2 = L14_2
          L14_2 = L14_2.ToFloat
          L14_2 = L14_2(L15_2)
          L15_2 = L10_2 + L13_2
          L16_2 = A0_2._use_count
          L15_2 = L15_2 * L16_2
          L15_2 = L14_2 + L15_2
          L16_2 = math
          L16_2 = L16_2.min
          L17_2 = 1.0
          L18_2 = L15_2
          L16_2 = L16_2(L17_2, L18_2)
          L15_2 = L16_2
          L16_2 = math
          L16_2 = L16_2.max
          L17_2 = 0.001
          L18_2 = L15_2
          L16_2 = L16_2(L17_2, L18_2)
          L15_2 = L16_2
          L17_2 = L8_2
          L16_2 = L8_2.set_black_mask
          L18_2 = L14_2 <= 0.0
          L16_2(L17_2, L18_2)
          L16_2 = A0_2._wait_callback_to_exit
          if L16_2 then
            L15_2 = L14_2
          end
          if L14_2 > L15_2 then
            L17_2 = L8_2
            L16_2 = L8_2.set_preview_blood
            L18_2 = L14_2
            L19_2 = L15_2
            L16_2(L17_2, L18_2, L19_2)
          else
            L17_2 = L8_2
            L16_2 = L8_2.set_preview_blood
            L18_2 = L14_2
            L19_2 = L15_2
            L16_2(L17_2, L18_2, L19_2)
          end
        end
        L14_2 = A0_2.buff_data_row
        L14_2 = L14_2.PreviewPowerPercent
        L15_2 = A0_2._show_sp_tag
        if L15_2 and 0.0 < L14_2 then
          L15_2 = A0_2._sp_panel_list
          L15_2 = L15_2[L6_2]
          if L15_2 ~= nil then
            L15_2 = A0_2._sp_panel_list
            L15_2 = L15_2[L6_2]
            L16_2 = L15_2
            L15_2 = L15_2.set_preview
            L17_2 = true
            L18_2 = L14_2
            L15_2(L16_2, L17_2, L18_2)
          end
        end
      end
    end
  end
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._wait_callback_to_exit
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._full_check
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
  if not L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_confirm_button = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel = L6_1
L6_1 = "UIText_ItemCompose_HPMax_Tip"
L7_1 = "UIText_ItemCompose_SPMax_Tip"
L8_1 = "UIText_ItemCompose_BPMax_Tip"
L9_1 = "UIText_ItemUse_Invalid_Label"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._wait_callback
  if L1_2 then
    return
  end
  L1_2 = A0_2._need_select
  if L1_2 then
    L1_2 = A0_2._select_avatars
    L1_2 = L1_2[1]
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentTeam
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.GetMemberDataByID
    L4_2 = L1_2.ID
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._alive_check
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._buff_replace_check
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._rpc_use_item
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._select_type
  L3_2 = L2_1.ALL
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._select_type
    L3_2 = L2_1.Dead
    if L2_2 == L3_2 then
      L2_2 = A1_2.IsAlive
      if L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.ConfirmDialogUtil
        L2_2 = L2_2.ShowOkHint
        L3_2 = "UIText_Inventory_ItemUse_UseForDead"
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.TextID
        L4_2 = L4_2.empty
        L2_2(L3_2, L4_2)
        L2_2 = false
        return L2_2
    end
    else
      L2_2 = A0_2._select_type
      L3_2 = L2_1.Alive
      if L2_2 == L3_2 then
        L2_2 = A1_2.IsAlive
        if not L2_2 then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.ConfirmDialogUtil
          L2_2 = L2_2.ShowOkHint
          L3_2 = "UIText_Inventory_ItemUse_UseForAlive"
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.Client
          L4_2 = L4_2.TextID
          L4_2 = L4_2.empty
          L2_2(L3_2, L4_2)
          L2_2 = false
          return L2_2
        end
      end
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._alive_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._need_hp_check
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._full_hp_check
    L2_2 = L2_2(L3_2)
  end
  L3_2 = A0_2._show_sp_tag
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._full_sp_check
    L3_2 = L3_2(L4_2)
  end
  L4_2 = A0_2._show_bp_tag
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._full_bp_check
    L4_2 = L4_2(L5_2)
  end
  L5_2 = A0_2._show_sp_tag
  L5_2 = A0_2._show_bp_tag
  L5_2 = not L1_2 and L5_2
  if L2_2 or L3_2 or L4_2 or L5_2 then
    L6_2 = true
    return L6_2
  end
  L6_2 = A0_2._show_sp_tag
  if L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._special_sp_check
    L6_2 = L6_2(L7_2)
  end
  L7_2 = nil
  L8_2 = A0_2.buff_data_row
  L8_2 = L8_2.IsCheckHP
  if L8_2 and not L2_2 then
    L7_2 = L6_1
  else
    L8_2 = A0_2._show_sp_tag
    if L8_2 and not L6_2 then
      L7_2 = L9_1
    else
      L8_2 = A0_2._show_sp_tag
      if L8_2 and not L3_2 then
        L7_2 = L7_1
      else
        L8_2 = A0_2._show_bp_tag
        if L8_2 and not L4_2 then
          L7_2 = L8_1
        end
      end
    end
  end
  L8_2 = false
  L9_2 = L7_2
  return L8_2, L9_2
end
L0_1._full_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buff_data_row
  L1_2 = L1_2.IsCheckHP
  L2_2 = A0_2.buff_data_row
  L2_2 = L2_2.PreviewHPRecoveryPercent
  L3_2 = A0_2._show_hp_tag
  L3_2 = L1_2 or L3_2
  L3_2 = L3_2 and L1_2 and 0.0 < L2_2
  return L3_2
end
L0_1._need_hp_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._show_hp_tag
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._select_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L3_1
    L8_2 = L7_2
    L7_2 = L7_2.GetCurrentTeam
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.GetMemberDataByID
    L9_2 = L6_2.ID
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2.buff_data_row
    L8_2 = L8_2.IsCheckHP
    L9_2 = L7_2.LeftHPRatio
    L10_2 = L9_2
    L9_2 = L9_2.ToFloat
    L9_2 = L9_2(L10_2)
    if L8_2 and 1.0 <= L9_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._select_avatars
  L2_2 = #L2_2
  if L2_2 == L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L0_1._full_hp_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._show_bp_tag
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2.MP
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L1_2.MPMax
  L5_2 = L4_2
  L4_2 = L4_2.ToFloat
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  if L2_2 >= L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = true
  return L4_2
end
L0_1._full_bp_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._show_sp_tag
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._select_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L3_1
    L8_2 = L7_2
    L7_2 = L7_2.GetCurrentTeam
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.GetMemberDataByID
    L9_2 = L6_2.ID
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.LeftSPRatio
    L9_2 = L8_2
    L8_2 = L8_2.ToFloat
    L8_2 = L8_2(L9_2)
    if not (1.0 <= L8_2) then
      L9_2 = L6_2.UltraSkillType
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.AvatarSpecialUltraType
      L10_2 = L10_2.SpecialSP
      if L9_2 ~= L10_2 then
        goto lbl_31
      end
    end
    L1_2 = L1_2 + 1
    ::lbl_31::
  end
  L2_2 = A0_2._select_avatars
  L2_2 = #L2_2
  if L2_2 == L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L0_1._full_sp_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._show_sp_tag
  if not L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2._select_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.UltraSkillType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AvatarSpecialUltraType
    L8_2 = L8_2.SpecialSP
    if L7_2 == L8_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._select_avatars
  L2_2 = #L2_2
  if L2_2 == L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L0_1._special_sp_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.maze_buff_row
  L1_2 = L1_2.MazeBuffPool
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.BuffPoolType
  L2_2 = L2_2.Env
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.get_modifier_by_maze_buff_pool
  L2_2 = A0_2.maze_buff_row
  L2_2 = L2_2.MazeBuffPool
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Inventory.ItemUse.FoodReplaceDialog"
  L4_2 = L1_2
  L5_2 = A0_2._rpc_use_item
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = false
  return L2_2
end
L0_1._buff_replace_check = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "FoodUseDialog _rpc_use_item,id:"
  L4_2 = A0_2._item
  L4_2 = L4_2.ConfigID
  L5_2 = " count:"
  L6_2 = A0_2._use_count
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._need_select
  if L1_2 then
    L1_2 = A0_2._select_avatars
    L1_2 = L1_2[1]
    L1_2 = L1_2.ID
    L2_2 = A0_2._select_avatars
    L2_2 = L2_2[1]
    L2_2 = L2_2.ID
    L3_2 = L3_1
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentTeam
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.GetMemberDataByID
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogFormatWithTag
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.UI
    L7_2 = "FoodUseDialog _rpc_use_item,id:"
    L8_2 = A0_2._item
    L8_2 = L8_2.ConfigID
    L9_2 = " count:"
    L10_2 = A0_2._use_count
    L11_2 = "avatar_id"
    L12_2 = L2_2
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L5_2(L6_2, L7_2)
    L5_2 = L5_1
    L6_2 = L5_2
    L5_2 = L5_2.UseFoodItem
    L7_2 = A0_2._item
    L7_2 = L7_2.ConfigID
    L8_2 = A0_2._use_count
    L9_2 = L2_2
    L10_2 = L4_2.AvatarType
    L11_2 = A0_2.consume_toggle_open
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L1_2 = L5_1
    L2_2 = L1_2
    L1_2 = L1_2.UseFoodItem
    L3_2 = A0_2._item
    L3_2 = L3_2.ConfigID
    L4_2 = A0_2._use_count
    L5_2 = 0
    L6_2 = CS
    L6_2 = L6_2.LHLCMODLJCB
    L6_2 = L6_2.EOMHNMFOPCP
    L7_2 = A0_2.consume_toggle_open
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._rpc_use_item = L10_1
return L0_1
