local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Friend.AddFriendPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.AddFriendPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AddFriendDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Common/Widget/AddSupportMemberList.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AddFriendPanel
  L4_2 = G
  L4_2 = L4_2.AddFriendPanelBinder
  L5_2 = "Root/ContentPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.add_friend_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/ProgressPanel/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoPerformanceUITransfer
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_tick = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlatformInfoPanel
  L4_2 = G
  L4_2 = L4_2.PlatformInfoPanelBinder
  L5_2 = "Root/ContentPanel/TextPanel/PlatformTag"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_platform = L1_2
end
L0_1._on_bind = L1_1
