local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMemberListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.Utils
  L0_2 = L0_2.is_pc_or_ps_or_mobile_gamepad_mode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "UI/Battle/ViewMode/Widget/TopHeadTabList.prefab"
    return L0_2
  else
    L0_2 = "UI/Battle/ViewMode/Widget/LeftHeadTabList.prefab"
    return L0_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "BtnSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnSwitch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_switch = L1_2
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "AvatarScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_light_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "MonsterScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_dark_team = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "TabList/AvatarScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_light_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "TabList/MonsterScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_dark_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TabList/KeyMapInfo_Avatar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_in_control_tip_Avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TabList/KeyMapInfo_Monster"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_control_in_control_tip_Monster = L1_2
end
L0_1._on_pc_bind = L1_1
return L0_1
