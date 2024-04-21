local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogSkillRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = G
L2_1 = L2_1.ComponentExtensions
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.Tag
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.TypeDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tag
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Tag
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_describe
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Desc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.DescParams
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2.SkillLv
  if 0 < L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = "UIText_UIlevel_Info"
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_lv
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = L2_2
    L6_2 = A1_2.SkillLv
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = L2_1.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_lock
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = L2_1.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_lv
    L5_2 = true
    L3_2(L4_2, L5_2)
  else
    L2_2 = L2_1.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_lock
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = L2_1.SafeSetActive
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_lv
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.go_skill_tag
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_skill
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.init_view = L3_1
return L0_1
