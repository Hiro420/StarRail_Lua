local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.OnlineStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.OnlineStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlayerSupportAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlayerSupportAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendBattleRecordTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.FriendListInfoRowTemplateIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FriendItemPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Friend/Widget/FriendListInfoRowTemplate.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BinderIndex
  L1_2 = L1_2.BinderIndexOpen
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.auto_bind
    L3_2 = L0_1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2.node_chat
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2.node_delete
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.PlayerPhotoPanel
      L4_2 = G
      L4_2 = L4_2.PlayerPhotoPanelBinder
      L5_2 = A0_2.node_photo
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.panel_player_photo = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.OnlineStatusPanel
      L4_2 = G
      L4_2 = L4_2.OnlineStatusPanelBinder
      L5_2 = A0_2.node_online
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.panel_online_status = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.PlatformInfoPanel
      L4_2 = G
      L4_2 = L4_2.PlatformInfoPanelBinder
      L5_2 = A0_2.node_platform_info
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.panel_platform_info = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.NodeListView
      L4_2 = G
      L4_2 = L4_2.NodeListViewBinder
      L5_2 = A0_2.node_support_list
      L6_2 = G
      L6_2 = L6_2.PlayerSupportAvatarPanel
      L7_2 = G
      L7_2 = L7_2.PlayerSupportAvatarPanelBinder
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      A0_2.panel_support_list = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.FriendBattleRecordTagPanel
      L4_2 = G
      L4_2 = L4_2.FriendBattleRecordTagPanelBinder
      L5_2 = A0_2.node_record_tag
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.panel_record = L1_2
      L1_2 = {}
      L2_2 = A0_2.in_control_tip1
      L3_2 = A0_2.in_control_tip2
      L4_2 = A0_2.in_control_tip3
      L5_2 = A0_2.in_control_tip4
      L6_2 = A0_2.in_control_tip5
      L1_2[1] = L2_2
      L1_2[2] = L3_2
      L1_2[3] = L4_2
      L1_2[4] = L5_2
      L1_2[5] = L6_2
      A0_2.in_control_tip_list = L1_2
      return
    end
  end
end
L1_1._on_bind = L2_1
return L1_1
