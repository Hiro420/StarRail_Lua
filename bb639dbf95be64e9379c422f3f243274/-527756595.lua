local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftSubmitPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityMonsterResearchModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PenaconyGiftSubmitPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PenaconyGiftSubmitPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._is_material_enough = true
  A0_2._is_submit = false
  A0_2._is_normal_exit = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._research_id = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetResearchData
  L4_2 = A0_2._research_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._research_data = L2_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  A0_2._research_row = L2_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.QuestionDataRow
  A0_2._question_row = L2_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchSubmitMaterial
  L4_2 = A0_2._on_submit_material
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_submit
  L4_2 = A0_2._on_btn_submit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gift_book
  L4_2 = A0_2._on_btn_gift_book
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._exit_notify
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_item_by_index
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._research_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_gift_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_material_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_submit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._is_material_enough
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchSubmitMaterial
  L4_2 = A0_2._on_submit_material
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = {}
    L3_2 = A0_2._config_ids
    L2_2.items = L3_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
  if A1_2 == "Menu_UnchangeY" then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = A0_2._research_data
    L3_2 = L3_2.ResearchRow
    L3_2 = L3_2.MaterialList
    L2_2 = L2_2(L3_2)
    L3_2 = {}
    L4_2 = 1
    L5_2 = #L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L3_2
      L10_2 = L2_2[L7_2]
      L10_2 = L10_2.ItemID
      L8_2(L9_2, L10_2)
    end
    L4_2 = {}
    L4_2.items = L3_2
    L5_2 = G
    L5_2 = L5_2.InventoryUtils
    L5_2 = L5_2.show_item_detail_display_dialog_for_gamepad
    L6_2 = L4_2
    L5_2(L6_2)
  end
end
L2_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_close
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_normal_exit = true
  L1_2 = A0_2._is_submit
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L2_1._on_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_normal_exit
  if L1_2 then
    L1_2 = A0_2._is_submit
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.MonsterResearchSubmitCanceled
      L3_2 = A0_2._research_id
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.MonsterResearchSubmitInterrupted
    L3_2 = A0_2._research_id
    L1_2(L2_2, L3_2)
  end
end
L2_1._exit_notify = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftMainPage"
  L3_2 = ""
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_gift_book = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.CMJJNPMDKAM
  L3_2 = A0_2._research_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.KDIJDKABKGL
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_submit = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_submit = true
  L2_2 = A0_2._research_id
  if A1_2 ~= L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogWarningFormat
    L3_2 = "PenaconyGiftSubmitPage : \229\174\140\230\136\144\230\143\144\228\186\164\231\160\148\231\169\182ID<"
    L4_2 = A1_2
    L5_2 = ">\229\146\140\229\189\147\229\137\141Task\231\154\132\231\160\148\231\169\182ID<"
    L6_2 = A0_2._research_id
    L7_2 = ">\228\184\141\228\184\128\232\135\180"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2(L3_2)
  end
  A0_2._is_normal_exit = true
  L3_2 = A0_2
  L2_2 = A0_2.set_exit_after_transition
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftTransportDialog"
  L4_2 = A0_2._research_id
  L2_2(L3_2, L4_2)
end
L2_1._on_submit_material = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L2_1._on_get_item_by_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._material_data_list
  L3_2 = L3_2[A2_2]
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = L3_2.ItemID
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = L3_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.set_count_with_total
  L7_2 = L4_2
  L8_2 = L3_2.ItemNum
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2.ItemNum
  if L4_2 < L5_2 then
    A0_2._is_material_enough = false
  end
end
L2_1._on_panel_setup = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_gift
  L4_2 = A0_2._question_row
  L4_2 = L4_2.ImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._question_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._question_row
  L3_2 = L3_2.Question
  L1_2(L2_2, L3_2)
end
L2_1._setup_gift_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._research_row
  L2_2 = L2_2.MaterialList
  L1_2 = L1_2(L2_2)
  A0_2._material_data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.RewardItemIconLite"
  L6_2 = "Ui.Common.RewardItemIconLiteBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._node_list = L1_2
  L1_2 = A0_2._node_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_material
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._node_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_panel_setup
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._node_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._material_data_list
  L4_2 = nil
  L5_2 = nil
  L6_2 = NavigationType
  L6_2 = L6_2.Horizontal
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_material_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._research_row
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  A0_2._reward_data = L1_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._setup_reward_list = L3_1
return L2_1
