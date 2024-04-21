local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalAvatarEnergyBarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._prefab_path = A1_2
end
L0_1.set_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._prefab_path
  if not L1_2 then
    L1_2 = "UI/Battle/Widget/PassiveSkill.prefab"
  end
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.animator_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_add_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActiveDetection
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_detect_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillIconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillIconPanel/IconPanel/Unable"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_unable = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillIconPanel/IconPanel/Ready"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_ready = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillIconPanel/StatusPanel/Progress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_status_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "SkillIconPanel/StatusPanel/Fill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_status_fill_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillIconPanel/CoolDownPanel/Time"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cd = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillTimePanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_time_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "SkillTimePanel/Time"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.txt_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillDotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.dot_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
