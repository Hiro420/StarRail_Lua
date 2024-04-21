local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffRewardRowTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffRewardRowTitlePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookCollectionRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._config_id_list = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad
  L4_2 = A0_2._on_btn_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._create_title_panel
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._quest_data = A1_2
  L3_2 = A0_2._quest_data
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._title_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_desc
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._title_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_num
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.TotalProgress
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.RewardID
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateConfigIDList
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2._config_id_list = L4_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTable
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
  end
  A0_2._reward_table = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._reward_table
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_in_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Status
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.KBBBFCIHJPC
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_gotten
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Status
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.CMOFEAFMGAK
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Status
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.JKFPIINHGPD
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._get_reward_cbk = A1_2
  A0_2._get_reward_cbk_self = A2_2
end
L0_1.register_get_reward_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._get_reward_cbk
  L3_2 = A0_2._get_reward_cbk_self
  L4_2 = A0_2._quest_data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_get_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_star_text_prefab_meta
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[1]
  L4_2 = A0_2._binder
  L4_2 = L4_2.title_star_text_root
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueHandbookBuffRewardRowTitlePanel
  L5_2 = G
  L5_2 = L5_2.RogueHandbookBuffRewardRowTitlePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._title_panel = L2_2
  L2_2 = A0_2._title_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._create_title_panel = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_gamepad
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.get_in_control_button
  L1_2.ActionEnabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.get_in_control_tip
  L1_2.IsShowTip = true
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_gamepad
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.get_in_control_button
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.get_in_control_tip
  L1_2.IsShowTip = false
end
L0_1._on_btn_root_deselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.InventoryUtils
    L1_2 = L1_2.show_item_detail_display_dialog_for_gamepad
    L2_2 = {}
    L3_2 = A0_2._config_id_list
    L2_2.items = L3_2
    L1_2(L2_2)
  end
end
L0_1._on_btn_gamepad_click = L1_1
return L0_1
