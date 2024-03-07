local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.RewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ExpeditionRewardDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ExpeditionRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._reward_item_table = L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._taken_data = A1_2
  A0_2._hide_num = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reward_data
  L2_2(L3_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.get_unique_reward_table
  L2_2 = A0_2._taken_data
  L2_2 = L2_2.CommonRewardData
  L1_2 = L1_2(L2_2)
  A0_2._common_reward_item_table = L1_2
  L1_2 = A0_2._taken_data
  L1_2 = L1_2.ExtraRewardData
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  A0_2._has_extra_reward = L1_2
  L1_2 = {}
  A0_2._extra_reward_item_table = L1_2
  L1_2 = A0_2._has_extra_reward
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RewardUtils
    L1_2 = L1_2.get_unique_reward_table
    L2_2 = A0_2._taken_data
    L2_2 = L2_2.ExtraRewardData
    L1_2 = L1_2(L2_2)
    A0_2._extra_reward_item_table = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ActivityExpeditionExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._taken_data
    L2_2 = L2_2.ID
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.get_reward_item_ids
      L3_2 = L1_2.Grade3ExtraRewardID
      L2_2 = L2_2(L3_2)
      L3_2 = table
      L3_2 = L3_2.sort
      L4_2 = A0_2._extra_reward_item_table
      function L5_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3
        L2_3 = G
        L2_3 = L2_3.Utils
        L2_3 = L2_3.index_of_item
        L3_3 = L2_2
        L4_3 = A0_3.ConfigID
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = G
        L3_3 = L3_3.Utils
        L3_3 = L3_3.index_of_item
        L4_3 = L2_2
        L5_3 = A1_3.ConfigID
        L3_3 = L3_3(L4_3, L5_3)
        if L2_3 ~= nil and L3_3 ~= nil then
          L4_3 = L2_3 < L3_3
          return L4_3
        elseif L2_3 ~= nil and L3_3 == nil then
          L4_3 = true
          return L4_3
        elseif L2_3 == nil and L3_3 ~= nil then
          L4_3 = false
          return L4_3
        end
        L4_3 = A0_3.ConfigID
        L5_3 = A1_3.ConfigID
        L4_3 = L4_3 < L5_3
        return L4_3
      end
      L3_2(L4_2, L5_2)
    end
  end
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = pairs
  L2_2 = A0_2._common_reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_id_list
    L8_2 = L5_2.ConfigID
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._extra_reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_id_list
    L8_2 = L5_2.ConfigID
    L6_2(L7_2, L8_2)
  end
end
L1_1._refresh_reward_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_again
  L4_2 = A0_2._on_btn_again
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.common_reward_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_common_reward_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._has_extra_reward
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.extra_reward_view
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitGridView
    L3_2 = 0
    L4_2 = A0_2._on_extra_reward_item_change
    L5_2 = nil
    L6_2 = nil
    L7_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.common_reward_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._common_reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.common_reward_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._extra_reward_item_table
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.extra_reward_view
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._extra_reward_item_table
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.extra_reward_view
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_avatar_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_hour
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._taken_data
  L4_2 = L4_2.Duration
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_again
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._taken_data
  L4_2 = L4_2.CanAssist
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._taken_data
  L4_2 = L4_2.CanAssist
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._taken_data
  L2_2 = L2_2.CanAssist
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_rank
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = G
    L4_2 = L4_2.ExpeditionUtils
    L4_2 = L4_2.get_score_rank
    L5_2 = A0_2._taken_data
    L5_2 = L5_2.Score
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_can_restart
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._taken_data
  L4_2 = L4_2.CanAssist
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_no_restart
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._taken_data
  L4_2 = L4_2.CanAssist
  L2_2(L3_2, L4_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._taken_data
  L1_2 = L1_2.CanAssist
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L1_1._on_btn_bg = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._common_reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_item
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L1_1._on_common_reward_item_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._extra_reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_item
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L1_1._on_extra_reward_item_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2.ConfigID
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_count
  L5_2 = A2_2.Count
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.bind_click
  L5_2 = A0_2
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_item_click
    L2_3 = A2_2
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._setup_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ConfigID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetRelicDataByUID
  L5_2 = A1_2.UID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.ItemDetailDialog"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._hide_num
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.hide_num
    L5_2(L6_2)
  end
  if L3_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.setup_view_by_item
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L1_1._on_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ExpeditionModule
  L2_2 = L1_2
  L1_2 = L1_2.ReAcceptExpedition
  L3_2 = A0_2._taken_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_again = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRewardDialogClose
  L1_2(L2_2)
  A0_2._hcoin_config_id = nil
  A0_2._common_reward_item_table = nil
  A0_2._extra_reward_item_table = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_assist
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._taken_data
  L3_2 = L3_2.CanAssist
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_can_assist
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._taken_data
  L3_2 = L3_2.CanAssist
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._taken_data
  L1_2 = L1_2.CanAssist
  if L1_2 then
    L1_2 = ipairs
    L2_2 = A0_2._binder
    L2_2 = L2_2.nodes_avatar_activity
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2._taken_data
      L6_2 = L6_2.AvatarIdList
      L6_2 = L6_2.Count
      L6_2 = L4_2 <= L6_2
      L8_2 = L5_2
      L7_2 = L5_2.SafeSetActive
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      if L6_2 then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.AvatarExcelTable
        L7_2 = L7_2.GetData
        L8_2 = A0_2._taken_data
        L8_2 = L8_2.AvatarIdList
        L9_2 = L4_2 - 1
        L8_2 = L8_2[L9_2]
        L7_2 = L7_2(L8_2)
        L9_2 = A0_2
        L8_2 = A0_2.load_sprite_to
        L10_2 = A0_2._binder
        L10_2 = L10_2.imgs_avatar_activity
        L10_2 = L10_2[L4_2]
        L11_2 = L7_2.AvatarSideIconPath
        L8_2(L9_2, L10_2, L11_2)
      end
    end
    L1_2 = A0_2._taken_data
    L1_2 = L1_2.FriendAvatarID
    L1_2 = L1_2 ~= 0
    L2_2 = ipairs
    L3_2 = A0_2._binder
    L3_2 = L3_2.nodes_assist
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.SafeSetActive
      L9_2 = L1_2
      L7_2(L8_2, L9_2)
    end
    if L1_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.AvatarExcelTable
      L2_2 = L2_2.GetData
      L3_2 = A0_2._taken_data
      L3_2 = L3_2.FriendAvatarID
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_avatar_assist
      L6_2 = L2_2.AvatarSideIconPath
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.AvatarExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._taken_data
    L2_2 = L2_2.AvatarIdList
    L2_2 = L2_2[0]
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_avatar1
    L5_2 = L1_2.AvatarSideIconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._taken_data
    L2_2 = L2_2.AvatarIdList
    L2_2 = L2_2.Count
    L2_2 = 1 < L2_2
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A0_2._taken_data
      L4_2 = L4_2.AvatarIdList
      L4_2 = L4_2[1]
      L3_2 = L3_2(L4_2)
      L5_2 = A0_2
      L4_2 = A0_2.load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_avatar2
      L7_2 = L3_2.AvatarSideIconPath
      L4_2(L5_2, L6_2, L7_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_avatar2
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._refresh_avatar_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._config_id_list
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L1_1._on_left_stick_button_click = L2_1
return L1_1
