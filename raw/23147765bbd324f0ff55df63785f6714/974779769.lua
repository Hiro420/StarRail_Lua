local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamMemberInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.3
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2.AvatarName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2.Level
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DamageTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.Row
  L4_2 = L4_2.DamageType
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_damage_type
  L7_2 = L3_2.DamageTypeIconPath
  L4_2(L5_2, L6_2, L7_2)
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_hp
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = L1_1
    if A2_2 > L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_normal_fill
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_red_fill
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.smooth_mask_hp_progress
      L4_2.fillAmount = A2_2
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_normal_fill
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_red_fill
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.smooth_mask_red_hp_progress
      L4_2.fillAmount = A2_2
    end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_hp
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_trial_mark
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2.IsTrialPlayer
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg_trial
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2.IsTrialPlayer
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.IsTrialPlayer
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_trial_mark
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = G
    L6_2 = L6_2.AvatarUtils
    L6_2 = L6_2.get_special_avatar_hint
    L7_2 = A1_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_assist_mark
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_bg_assist
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A1_2.IsAssistAvatar
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_assist_mark
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A1_2.IsAssistAvatar
    L4_2(L5_2, L6_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2.Row
  L5_2 = L5_2.AvatarBaseType
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_icon_profession
  L8_2 = L4_2.BaseTypeIconSmall
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_profession_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BaseTypeText
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.root
    L0_3 = L0_3.transform
    L1_3 = L0_3
    L0_3 = L0_3.SetXCoordinateWith3DPosition
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
end
L0_1.setup_position = L2_1
return L0_1
