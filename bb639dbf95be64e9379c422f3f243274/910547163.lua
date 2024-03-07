local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionIncrementIcon"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueCabinetDetailInfoBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueCabinetDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/Rogue/DLC/Dice/MissionTree/IconRogueDlcPathQuestIconUnlock.png"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.get_reward_btn
  L4_2 = A0_2._on_get_reward_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_image
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_increments
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rewards
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_hints
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_scroll_rect
  return L1_2
end
L0_1.get_scroll_rect_ref = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ItemFactory
  L2_2 = L2_2.CreateDisplayItemDataFromReward
  L3_2 = A0_2._data
  L3_2 = L3_2.RewardID
  L2_2 = L2_2(L3_2)
  A0_2._item_display_data_lst = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._item_display_data_lst
  L2_2 = L2_2(L3_2)
  A0_2._item_display_data_table = L2_2
  L2_2 = A0_2._data
  L2_2 = L2_2.IsFinished
  if not L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.IsRewardTaken
  end
  A0_2._is_finish_or_close = L2_2
end
L0_1._setup_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.get_reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsFinished
  if L3_2 then
    L3_2 = A0_2._data
    L3_2 = L3_2.IsRewardTaken
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsRewardTaken
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mission_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_condition_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_bar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish_or_close
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress_finish_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish_or_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_finish_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish_or_close
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChessRogueCabinetItem"
  L4_2 = A0_2._data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.normal_icon
    L4_2 = L1_1
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_icon
  L4_2 = A0_2._data
  L4_2 = L4_2.CabinetIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_image = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.mission_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.Title
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_condition_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.MissionDesc
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.create_lua_table_from_cs_array
    L6_2 = A0_2._data
    L6_2 = L6_2.MissionDescParams
    L5_2, L6_2 = L5_2(L6_2)
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlock_condition_desc
    L1_2 = L1_2.color
    L2_2 = A0_2._is_finish_or_close
    if L2_2 then
      L2_2 = 0.2
      if L2_2 then
        goto lbl_36
      end
    end
    L2_2 = 1
    ::lbl_36::
    L1_2.a = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.unlock_condition_desc
    L2_2.color = L1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.ip_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._data
    L4_2 = L4_2.IPDesc
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChessRogueCabinetType
    L2_2 = L2_2.Hide
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.empty_txt
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_RogueDLC_Cabinet_Unlock_Normal"
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.empty_txt
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_RogueDLC_Cabinet_Unlock_Special"
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.mission_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_RogueDLC_Cabinet_LockedName"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.QuestData
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_progress_img
  L2_2 = A0_2._data
  L2_2 = L2_2.QuestData
  L2_2 = L2_2.Progress
  L3_2 = A0_2._data
  L3_2 = L3_2.QuestData
  L3_2 = L3_2.TotalProgress
  L2_2 = L2_2 / L3_2
  L1_2.fillAmount = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_progress_ttl
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.QuestData
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlock_progress_cur
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.QuestData
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.increment_list_view
  L2_2 = L1_2
  L1_2 = L1_2.rebind_child_node
  L3_2 = A0_2._data
  L3_2 = L3_2.DimensionIncrementsConfigArray
  L3_2 = L3_2.Length
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.increment_list_view
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._data
  L4_2 = L4_2.DimensionIncrementsConfigArray
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_increments = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_display_data_table
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_rewards = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.hidden_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChessRogueCabinetType
  L4_2 = L4_2.Hide
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.general_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.Type
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChessRogueCabinetType
  L4_2 = L4_2.Hide
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_hints = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ChessRogueDimensionIncrementIcon
    L8_2 = G
    L8_2 = L8_2.ChessRogueDimensionIncrementIconBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._data
  L7_2 = L7_2.DimensionIncrementsConfigArray
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_increment_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_by_display_data
  L7_2 = A0_2._item_display_data_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_attachment_getted
  L7_2 = A0_2._data
  L7_2 = L7_2.IsRewardTaken
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.AMFNHGKACLB
  L3_2 = A0_2._data
  L3_2 = L3_2.QuestData
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_get_reward_btn_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = {}
    L3_2 = ipairs
    L4_2 = A0_2._item_display_data_table
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2.ConfigID
      L8_2(L9_2, L10_2)
    end
    L3_2 = {}
    L3_2.items = L2_2
    L4_2 = G
    L4_2 = L4_2.InventoryUtils
    L4_2 = L4_2.show_item_detail_display_dialog_for_gamepad
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L0_1._on_in_control_action_click = L2_1
return L0_1
