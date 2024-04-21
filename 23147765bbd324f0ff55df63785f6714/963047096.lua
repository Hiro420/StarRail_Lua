local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BonusActionDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._effect_data = A1_2
end
L0_1.set_effect_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._effect_data
  if L1_2 ~= nil then
    L1_2 = A0_2._effect_data
    L1_2 = L1_2.UIPrefabPath
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = "UI/Battle/SpecialAction/SpecialAction_Gepard.prefab"
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._effect_data
  L1_2 = L1_2.UIPrefabPath
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ActionTitlePanel/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.title_txt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/AvatarImg/ImgMask/Img"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.avatar_img = L1_2
end
L0_1._on_bind = L1_1
