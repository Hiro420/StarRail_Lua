local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QuickConsumableConfirmDialog"
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
  A0_2.buff_data_row = nil
  A0_2._wait_callback = false
  A0_2._use_count = 1
  A0_2._bp_count = 0
  A0_2._wait_callback_to_exit = false
  L1_2 = {}
  A0_2._select_avatars = L1_2
  A0_2._need_select = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._confirm_callback = A1_2
  A0_2._confirm_callback_self = A2_2
end
L0_1.register_confirm_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._get_avatar_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MCKAHECKMPC
  L4_2 = L0_1._on_cmd_sync_buff_change
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_all_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_buff_detail
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_nodes
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_sp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_QuickConsumable_SetConsumableCheck"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_tip_bg
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#FFCF70"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tip
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#000000"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
end
L0_1._init_nodes = L6_1
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
end
L0_1._show_buff_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_avatar_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatar_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_all_list = L6_1
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
  L3_2 = A0_2._avatar_list
  A0_2._select_avatars = L3_2
end
L0_1._get_avatar_data = L6_1
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
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = true
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentTeam
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetMemberDataByID
  L6_2 = A2_2.ID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.SatietyRatio
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.LeftHPRatio
  L7_2 = L6_2
  L6_2 = L6_2.ToFloat
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.SuperDebug
  L7_2 = L7_2.LogFormatWithTag
  L8_2 = G
  L8_2 = L8_2.LogTag
  L8_2 = L8_2.UI
  L9_2 = "_get_avatar_item id"
  L10_2 = A2_2.ID
  L11_2 = " index"
  L12_2 = " sp"
  L13_2 = L5_2
  L14_2 = " hp"
  L15_2 = L6_2
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.setup_view
  L9_2 = A2_2
  L10_2 = false
  L11_2 = L3_2
  L12_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2
  L7_2 = A1_2.setup_dead_view
  L9_2 = L6_2 <= 0
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_black_mask
  L9_2 = L6_2 <= 0
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_preview_blood
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_select_anim_enable
  L9_2 = A0_2._need_select
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.buff_data_row
  if L7_2 ~= nil then
    L7_2 = A0_2.buff_data_row
    L7_2 = L7_2.SatietyValue
    if L7_2 == 0 then
      L8_2 = A1_2
      L7_2 = A1_2.set_satiety_progress
      L9_2 = false
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._set_item_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._is_playing_effect = true
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseBuffDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._buff_item_no
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L1_2 = L2_2.UseEffect
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_cancel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  A0_2._wait_callback = true
  L3_2 = pairs
  L4_2 = A0_2._select_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.index_of_item
    L9_2 = A0_2._avatar_list
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil and L1_2 ~= nil and L1_2 ~= "" then
      L9_2 = A0_2._binder
      L9_2 = L9_2.scroll_avatar
      L10_2 = L9_2
      L9_2 = L9_2.GetShownItemByItemIndex
      L11_2 = L8_2 - 1
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 ~= nil then
        L10_2 = L9_2.UserObjectData
        L12_2 = L10_2
        L11_2 = L10_2.play_effect
        L13_2 = L1_2
        function L14_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._on_anim_end_callback
          L0_3(L1_3)
        end
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_item_count
  L3_2(L4_2)
end
L0_1._play_effect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_playing_effect
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.try_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._wait_callback
  if not L1_2 then
    return
  end
  A0_2._wait_callback = false
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_anim_end_callback = L6_1
function L6_1(A0_2)
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
  L2_2 = L1_2.BuffID
  L3_2 = A0_2.buff_data_row
  L3_2 = L3_2.MazeBuffID
  if L2_2 ~= L3_2 then
    L2_2 = L1_2.BuffID
    L3_2 = A0_2.buff_data_row
    L3_2 = L3_2.MazeBuffID2
    if L2_2 ~= L3_2 then
      goto lbl_33
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_33::
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Inventory.ItemUse.FoodReplaceDialog"
  L4_2 = L1_2
  L5_2 = A0_2._call_confirm_callback
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = false
  return L2_2
end
L0_1._quick_consumable_check = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_effect
  L1_2(L2_2)
end
L0_1._on_cmd_sync_buff_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._quick_consumable_check
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._call_confirm_callback
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._confirm_callback
  if L1_2 then
    L1_2 = A0_2._confirm_callback
    L2_2 = A0_2._confirm_callback_self
    L1_2(L2_2)
  end
end
L0_1._call_confirm_callback = L6_1
return L0_1
