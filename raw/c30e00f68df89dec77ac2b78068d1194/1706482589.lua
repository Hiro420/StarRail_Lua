local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RewardPreview.OptionAvatarRewardSelectDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RewardPreview.OptionAvatarRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RewardPreview.OptionAvatarRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OptionAvatarRewardSelectDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.OptionAvatarRewardSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._title_icon_path = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.QuestModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetQuestData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._quest_data = L3_2
  A0_2._title = A2_2
  A0_2._select_id = nil
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
  A0_2._title_icon_path = A1_2
end
L0_1.set_title_icon_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_get_quest_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_avatar_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemUseDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item_row
  L2_2 = L2_2.UseDataID
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.UseParam
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.RewardExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L1_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = #L2_2
    L8_2 = L8_2 + 1
    L9_2 = L7_2.ItemID_1
    L2_2[L8_2] = L9_2
  end
  return L2_2
end
L0_1._get_avatar_id_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.OptionalRewardQuestExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.OptionalGiftItemID
  L2_2 = L2_2(L3_2)
  A0_2._item_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_avatar_id_list
  L2_2 = L2_2(L3_2)
  A0_2._select_avatar_id_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.AutoSetPosition
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._quest_data
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_remain_time
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A0_2._title_icon_path
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_title_icon
    L5_2 = A0_2._title_icon_path
    L2_2(L3_2, L4_2, L5_2)
  end
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_remain_timer
    L3_2 = L2_2
    L2_2 = L2_2.SetTargetTimeByTimeStamp
    L4_2 = L1_2.EndTimeStamp
    L5_2 = A0_2._on_time_expire
    L6_2 = A0_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_item_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._item_row
  L3_2 = L3_2.ItemName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  if L1_2 ~= L2_2 then
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = "OptionalAvatarReward_Phase_Tips"
    L3_2 = G
    L3_2 = L3_2.QuestUtils
    L3_2 = L3_2.get_title_text
    L4_2 = A0_2._quest_data
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_quest_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_cur_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.Progress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_total_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._quest_data
    L4_2 = L4_2.TotalProgress
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "OptionalAvatarReward_AvatarReceive"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_quest_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_basic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_own_info_panel
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._select_avatar_id_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._refresh_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_receive_btn_interactable
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_receive_btn_interactable
  L3_2 = A0_2._select_id
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btn_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_id
  if L1_2 ~= nil then
    L1_2 = A0_2._select_id
    if 0 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_own_info
      L2_2 = L1_2
      L1_2 = L1_2.safe_set_active
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_own_info
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._select_id
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_own_info
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_own_info_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_receive_btn_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_selected_panel = A1_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_cur_selected_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.OptionAvatarRewardPanel
    L8_2 = G
    L8_2 = L8_2.OptionAvatarRewardPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_avatar_panel
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_selected_callback
    L7_2 = A0_2._on_avatar_selected
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._select_avatar_id_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._select_id
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._select_id
  if L5_2 == L6_2 then
    A0_2._cur_selected_panel = L4_2
  end
  return L3_2
end
L0_1._on_get_avatar_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_get_quest_reward = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._set_cur_selected_panel
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  A0_2._select_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_state
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_own_info_panel
  L3_2(L4_2)
end
L0_1._on_click_avatar_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._cur_selected_avatar_id = A1_2
end
L0_1._on_avatar_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L1_2 = A0_2._cur_selected_avatar_id
  else
    L1_2 = A0_2._select_id
  end
  if L1_2 == nil then
    L2_2 = A0_2._select_avatar_id_list
    L1_2 = L2_2[1]
  end
  L2_2 = A0_2._select_avatar_data_list
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.Collections
    L2_2 = L2_2.Generic
    L2_2 = L2_2.List
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarData
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._select_avatar_id_list
    L3_2 = #L3_2
    L2_2 = L2_2(L3_2)
    A0_2._select_avatar_data_list = L2_2
    L2_2 = ipairs
    L3_2 = A0_2._select_avatar_id_list
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.AvatarData
      L7_2 = L7_2.CreateGachaData
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._select_avatar_data_list
      L9_2 = L8_2
      L8_2 = L8_2.Add
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.New
  L3_2 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_show_avatar_data_list
  L5_2 = A0_2._select_avatar_data_list
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = L1_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.show
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_detail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._item_row
  L3_2 = L3_2.UseDataID
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.UseParam
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.RewardExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.ItemID_1
    if L8_2 == A1_2 then
      L8_2 = L2_2[L6_2]
      return L8_2
    end
  end
end
L0_1._get_reward_id_by_avatar_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._select_id
  if L1_2 ~= nil then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.JKFPIINHGPD
    if L1_2 == L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2._get_reward_id_by_avatar_id
  L3_2 = A0_2._select_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AvatarModule
  L3_2 = L2_2
  L2_2 = L2_2.GetAvatar
  L4_2 = A0_2._select_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = nil
  if L2_2 == nil then
    L3_2 = "UIText_OptionalRewardQuest_RewardGetConfirm_1"
  else
    L4_2 = G
    L4_2 = L4_2.AvatarUtils
    L4_2 = L4_2.is_avatar_can_rank_max
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L3_2 = "UIText_OptionalRewardQuest_RewardGetConfirm_3"
    else
      L3_2 = "UIText_OptionalRewardQuest_RewardGetConfirm_2"
    end
  end
  L4_2 = nil
  if L2_2 ~= nil then
    L4_2 = L2_2.AvatarName
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AvatarExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._select_id
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L5_2.AvatarName
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.ConfirmDialogUtil
  L5_2 = L5_2.ShowOkCancelHint
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.TextID
  L6_2 = L6_2.empty
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.TextID
  L7_2 = L7_2.empty
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    A0_2._confirm_dialog = nil
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.NetworkManager
      L1_3 = L1_3.FFOMLPONIFB
      L2_3 = L1_3
      L1_3 = L1_3.HLMOEBFOEHG
      L3_3 = A0_2._quest_data
      L3_3 = L3_3.ID
      L4_3 = L1_2
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.PBIBDHBOIGI
      L3_3 = L3_3.APLNPGIMMNJ
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2._confirm_dialog = L5_2
  L5_2 = A0_2._confirm_dialog
  L6_2 = L5_2
  L5_2 = L5_2.SetContent
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._on_btn_receive = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._confirm_dialog
  if L1_2 ~= nil then
    L1_2 = A0_2._confirm_dialog
    L2_2 = L1_2
    L1_2 = L1_2.Exit
    L1_2(L2_2)
    A0_2._confirm_dialog = nil
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_time_expire = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
return L0_1
