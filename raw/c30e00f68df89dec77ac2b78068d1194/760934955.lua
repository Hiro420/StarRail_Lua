local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Common.TeamMemberSpIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberSpIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UltraSPInfo_Max_Maze"
L2_1 = "UltraSPInfo_InCharge"
L3_1 = "UltraSPInfo_Increase"
L4_1 = "#FFFFFF"
L5_1 = 0.547
L6_1 = 128
L7_1 = 200
L8_1 = 0.5
function L9_1(A0_2)
  local L1_2
end
L0_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_sp
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L0_1._on_dispose = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_sp
  L2_2(L3_2)
end
L0_1.refresh_sp = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.progress_sp
  L3_2.fillAmount2 = A2_2
end
L0_1.set_preview = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.UltraSkillType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSpecialUltraType
  L2_2 = L2_2.Normal
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_sp_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_sp_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_normal_sp
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_special_sp
    L2_2(L3_2)
  end
end
L0_1._setup_sp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._special_sp_object
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.sync_load_prefab
    L3_2 = A0_2._data
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.UltraSkillConfig
    L3_2 = L3_2.UltraSkillResourcePath
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_special_sp_icon
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._special_sp_object = L1_2
  end
  L1_2 = A0_2.node_special_disable
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.ComponentExtensions
    L1_2 = L1_2.SafeFind
    L2_2 = A0_2._special_sp_object
    L3_2 = "DisableHint"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.node_special_disable = L1_2
  end
  L1_2 = A0_2.node_special_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_special_sp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarRow
  L2_2 = L1_2.SkillList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackType
  L3_2 = L3_2.Ultra
  L4_2 = 1
  L5_2 = 0
  L6_2 = L2_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AvatarSkillExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L2_2[L8_2]
    L11_2 = L4_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.AttackType
    if L10_2 == L3_2 then
      L11_2 = A0_2
      L10_2 = A0_2._async_load_sprite_to
      L12_2 = A0_2._binder
      L12_2 = L12_2.img_sp_icon
      L13_2 = L9_2.SkillIcon
      L10_2(L11_2, L12_2, L13_2)
      L11_2 = A0_2
      L10_2 = A0_2._async_load_sprite_to
      L12_2 = A0_2._binder
      L12_2 = L12_2.img_sp_icon_ultra_on
      L13_2 = L9_2.SkillIcon
      L10_2(L11_2, L12_2, L13_2)
      break
    end
  end
  L5_2 = A0_2._data
  L5_2 = L5_2.LeftSPRatio
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2 = L5_2(L6_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.DamageTypeExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L1_2.DamageType
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.progress_sp
  L8_2 = G
  L8_2 = L8_2.UIColorUtils
  L8_2 = L8_2.GetColorWithAlpha
  L9_2 = L6_2.UnfullColor
  L10_2 = A0_2._binder
  L10_2 = L10_2.progress_sp
  L10_2 = L10_2.color
  L10_2 = L10_2.a
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.color = L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.outline_progress
  L8_2 = G
  L8_2 = L8_2.UIColorUtils
  L8_2 = L8_2.GetColorWithAlpha
  L9_2 = L6_2.Color
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_maxsp
  L10_2 = L10_2.color
  L10_2 = L10_2.a
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.color = L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_maxsp
  L8_2 = G
  L8_2 = L8_2.UIColorUtils
  L8_2 = L8_2.GetColorWithAlpha
  L9_2 = L6_2.Color
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_maxsp
  L10_2 = L10_2.color
  L10_2 = L10_2.a
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.color = L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_maxsp
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = 1 <= L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.anim_nature
  L8_2 = L7_2
  L7_2 = L7_2.IsPlaying
  L9_2 = L3_1
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
  else
    L7_2 = A0_2._old_sp
    if L7_2 ~= nil then
      L7_2 = A0_2._old_sp
      if L5_2 > L7_2 then
        L8_2 = A0_2
        L7_2 = A0_2._play_sp_increase
        L7_2(L8_2)
    end
    elseif 1 <= L5_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.anim_nature
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L9_2 = L1_1
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_sp_icon_ultra_on
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetAlpha
      L9_2 = L7_1
      L9_2 = L9_2 / 255
      L7_2(L8_2, L9_2)
    else
      L7_2 = A0_2._binder
      L7_2 = L7_2.anim_nature
      L8_2 = L7_2
      L7_2 = L7_2.Play
      L9_2 = L2_1
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_sp_icon
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetAlpha
      L9_2 = L6_1
      L9_2 = L9_2 / 255
      L7_2(L8_2, L9_2)
    end
  end
  A0_2._old_sp = L5_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.progress_sp
  L7_2.fillAmount = L5_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.outline_progress
  L7_2.fillAmount = L5_2
end
L0_1._setup_normal_sp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_nature
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_play_sp_increase_end
  L4_2 = L8_1
  L5_2 = L8_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._sp_increase_timer = L1_2
  L1_2 = A0_2._sp_increase_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._sp_increase_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_sp_increase = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._old_sp
  if 1 <= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_nature
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_sp_icon_ultra_on
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetAlpha
    L3_2 = L7_1
    L3_2 = L3_2 / 255
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_nature
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_sp_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetAlpha
    L3_2 = L6_1
    L3_2 = L3_2 / 255
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_play_sp_increase_end = L9_1
return L0_1
