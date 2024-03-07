local L0_1, L1_1, L2_1
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
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Friend/Widget/FriendListInfoRowTemplate.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Contents/QuestDetail/TitlePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Contents/QuestDetail/PlayerInfo/Sign/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_signature = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Contents/StatusBtnList/BtnPass/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_already_accept = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Contents/StatusBtnList/BtnApply_02/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_wait_for_accept = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Contents/StatusBtnList/BtnAdd/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Contents/StatusBtnList/BtnChat/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_chat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/StatusBtnList/BtnChat"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Contents/ApplyBtnList/Approval/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_accept = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/Contents/ApplyBtnList/Refuse/BtnSecond"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_refuse = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/QuestDetail/TitlePanel/SupportIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_assist = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/ApplyBtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_apply_btn_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/StatusBtnList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_btn_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/QuestDetail/PlayerInfo/Sign"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_sign = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/QuestDetail/PlayerInfo/Status"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/QuestDetail/TitlePanel/Name"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/QuestDetail/PlayerInfo/Hint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/SupportPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_support_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerPhotoPanel
  L4_2 = G
  L4_2 = L4_2.PlayerPhotoPanelBinder
  L5_2 = "Contents/HeadIcon/AvatarPhoto"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_player_photo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.OnlineStatusPanel
  L4_2 = G
  L4_2 = L4_2.OnlineStatusPanelBinder
  L5_2 = "Contents/Contents/QuestDetail/PlayerInfo/Status"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_online_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlatformInfoPanel
  L4_2 = G
  L4_2 = L4_2.PlatformInfoPanelBinder
  L5_2 = "Contents/Contents/QuestDetail/TitlePanel/PlatformTag"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_platform_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/Contents/SupportPanel/Root"
  L6_2 = G
  L6_2 = L6_2.PlayerSupportAvatarPanel
  L7_2 = G
  L7_2 = L7_2.PlayerSupportAvatarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_support_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Contents/QuestDetail/TitlePanel/StarFriendIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mark = L1_2
  L1_2 = {}
  A0_2.in_control_tip_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_in_control_btn
  L3_2 = "Contents/Contents/StatusBtnList/BtnAdd/BtnSecond/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_in_control_btn
  L3_2 = "Contents/Contents/StatusBtnList/BtnChat/BtnSecond/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_in_control_btn
  L3_2 = "Contents/Contents/ApplyBtnList/Refuse/BtnSecond/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_in_control_btn
  L3_2 = "Contents/Contents/ApplyBtnList/Approval/BtnSecond/KeyMapInfo"
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._safe_get_cmpt
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.MonoInControlTip
    L5_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2.in_control_tip_list
    L4_2 = A0_2.in_control_tip_list
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = L2_2
  end
end
L0_1._add_in_control_btn = L1_1
return L0_1
