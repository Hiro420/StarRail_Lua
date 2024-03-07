local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Friend.AssistHistoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.AssistHistoryItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendAssistTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.PlayerModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AvatarModule
L4_1 = "SpriteOutput/TabIcon/Camera/SupportIcon.png"
L5_1 = "#909090"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Assist_Reward_Coin_Num"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._single_reward_num = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_edit_assist_avatar
  L4_2 = A0_2._on_btn_edit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetAssistReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDisPlayAvatarChanged
  L4_2 = A0_2._setup_cur_assist
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.assist_history_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_history_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AssistReward"
  L4_2 = 0
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = "UIText_Assist_History_Title"
  return L1_2
end
L0_1.get_sub_title = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L4_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FriendRewardTab"
  L4_2 = 0
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_assist_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.assist_history_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_assist
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_assist_reward
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.AssistHistoryDataList
  L1_2 = L1_2(L2_2)
  A0_2._assist_history_list = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._assist_history_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.TimeUtils
    L2_3 = L2_3.DateTimeToTimeStampInSeconds
    L3_3 = A0_3.Time
    L2_3 = L2_3(L3_3)
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.Client
    L3_3 = L3_3.TimeUtils
    L3_3 = L3_3.DateTimeToTimeStampInSeconds
    L4_3 = A1_3.Time
    L3_3 = L3_3(L4_3)
    L4_3 = L2_3 > L3_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.assist_history_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._assist_history_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.assist_history_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_history
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._assist_history_list
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
end
L0_1._refresh_list = L6_1
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
    L7_2 = L7_2.AssistHistoryItemPanel
    L8_2 = G
    L8_2 = L8_2.AssistHistoryItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._assist_history_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_get_history_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.PlayerBoardInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetAssistAvatarData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_assist_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_assist_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_avatar_img
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_avatar_rarity
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_avatar_rarity
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L5_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_assist_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Assist_History_Times"
  L5_2 = L1_1.AssistTotalCount
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_cur_assist = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A1_2.Row
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.LineItemRarityColor
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar_rarity
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColorWithOriginAlpha
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_avatar_rarity
  L7_2 = L7_2.color
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.color = L5_2
end
L0_1._setup_avatar_rarity = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_cur_assist_avatar
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_cur_assist_avatar_bg
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = L2_2
  L7_2 = A1_2.AvatarCutinImgPath
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = L3_2
  L7_2 = A1_2.AvatarCutinBgImgPath
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_offset
  L6_2 = A1_2.AssistOffset
  L7_2 = L2_2.transform
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_offset
  L6_2 = A1_2.Row
  L6_2 = L6_2.AssistBgOffset
  L7_2 = L3_2.transform
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_avatar_img = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L3_2 = A1_2.Length
    if L3_2 == 3 then
      L3_2 = A1_2[0]
      L4_2 = A1_2[1]
      L5_2 = A1_2[2]
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector3
      L7_2 = L5_2
      L8_2 = L5_2
      L9_2 = 1
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A2_2.localScale = L6_2
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector3
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = A2_2.localPosition
      L9_2 = L9_2.z
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A2_2.localPosition = L6_2
    end
  end
end
L0_1._setup_offset = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_reward_total_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.AssistRewardDayLimit
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_reward_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.AssistDayCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_reward_item_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._single_reward_num
  L4_2 = L1_1.AssistRewardCount
  L3_2 = L3_2 * L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  L2_2 = L1_1.AssistRewardCount
  L2_2 = 0 < L2_2
  L1_2.interactable = L2_2
end
L0_1._setup_assist_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.CDLJIDDCBFG
  L1_2(L2_2)
end
L0_1._on_btn_reward_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.PlayerInfoPage"
  L3_2 = L2_1.PlayerBoardInfo
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_edit_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_reward_item_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reward
  L2_2.interactable = false
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.show_reward_dialog
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_get_reward = L6_1
return L0_1
