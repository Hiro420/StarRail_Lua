local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAcheronUltraSpInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAvatarInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ControlSkillType
L1_1 = L1_1.ControlSkill03
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.ability
  A0_2._ability = L2_2
  L4_2 = L2_2
  L3_2 = L2_2.GetOwnerEntity
  L3_2 = L3_2(L4_2)
  A0_2._entity = L3_2
  L3_2 = A0_2._entity
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.SkillCharacterComponent
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._skill_cmpt = L3_2
  L3_2 = A0_2._skill_cmpt
  L4_2 = L3_2
  L3_2 = L3_2.GetSkillDataByControlType
  L5_2 = L1_1
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._ultra_skill_data = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UINumberUtils
  L3_2 = L3_2.GetPropertyNumberUIData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._status_data = L3_2
  L3_2 = A1_2.avatarData
  A0_2._avatar_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._entity = nil
  A0_2._avatar_data = nil
  A0_2._status_data = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_base_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_energy_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_marks
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.IconNatureWhite
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.damage_type_icon
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lv
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.AvatarData
  L4_2 = L4_2.AvatarName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_skill_icon
  L2_2(L3_2)
end
L0_1._setup_avatar_base_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_ultra
  L4_2 = A0_2._ultra_skill_data
  L4_2 = L4_2.RowData
  L4_2 = L4_2.SkillIcon
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_skill_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sp_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._status_data
  L3_2 = L3_2.CurrentSP
  L4_2 = A0_2._status_data
  L4_2 = L4_2.MaxSP
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.ConfigID
  L1_2 = L1_2 == 1308
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_ultra_sp_info_with_nature
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_ultra
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_meta_special_ultra_sp
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.ConfigID
  if L2_2 == 1308 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_acheron_ultra_sp_info
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_normal_ultra_sp_info
    L2_2(L3_2)
  end
end
L0_1._setup_energy_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_marks
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_plot_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.IsPlotTrialPlayer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_support_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_protect_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_marks = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_extra_sp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._ultra_skill_data
  L3_2 = L3_2.Config
  L3_2 = L3_2.ProgressDisplayType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.SkillSPProgressType
  L4_2 = L4_2.ExtraProgress
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FixPoint
  L1_2 = L1_2.FloorToInt
  L2_2 = A0_2._ultra_skill_data
  L2_2 = L2_2.SPNeed
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = 0
    if L2_2 then
      goto lbl_33
    end
  end
  L2_2 = A0_2._status_data
  L2_2 = L2_2.CurrentSP
  L2_2 = L2_2 / L1_2
  ::lbl_33::
  L3_2 = A0_2._status_data
  L3_2 = L3_2.CurrentSP
  if L3_2 == L1_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_41
    end
  end
  L3_2 = 0
  ::lbl_41::
  L4_2 = A0_2._status_data
  L4_2 = L4_2.MaxSP
  L4_2 = L3_2 or L4_2
  if L1_2 ~= L4_2 or not L3_2 then
    L4_2 = A0_2._status_data
    L4_2 = L4_2.CurrentSP
    L4_2 = L4_2 - L1_2
    L5_2 = A0_2._status_data
    L5_2 = L5_2.MaxSP
    L5_2 = L5_2 - L1_2
    L4_2 = L4_2 / L5_2
  end
  L5_2 = 1 <= L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.sp_progress
  L6_2.fillAmount = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_sp_frame
  L6_2.fillAmount = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_extra_sp_progress
  L6_2.fillAmount = L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_sp_incharge
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_sp_max
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._avatar_data
  L6_2 = L6_2.DamageType
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.DamageTypeExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.GameCoreConfigManager
  L8_2 = L8_2.GameCoreUIConfig
  L9_2 = L8_2.AttackDamageTypeToUltraFrameColor
  L10_2 = L9_2
  L9_2 = L9_2.TryGetValue
  L11_2 = L6_2
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.img_sp_frame
  L12_2 = G
  L12_2 = L12_2.UIColorUtils
  L12_2 = L12_2.GetColor
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L11_2.color = L12_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.img_extra_sp_progress
  L12_2 = G
  L12_2 = L12_2.UIColorUtils
  L12_2 = L12_2.GetColor
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  L11_2.color = L12_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.sp_progress
  L12_2 = G
  L12_2 = L12_2.UIColorUtils
  L12_2 = L12_2.GetColorWithAlpha
  L13_2 = L7_2.UnfullColor
  L14_2 = A0_2._binder
  L14_2 = L14_2.sp_progress
  L14_2 = L14_2.color
  L14_2 = L14_2.a
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.color = L12_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.img_max_sp
  L12_2 = G
  L12_2 = L12_2.UIColorUtils
  L12_2 = L12_2.GetColorWithAlpha
  L13_2 = L7_2.Color
  L14_2 = A0_2._binder
  L14_2 = L14_2.img_max_sp
  L14_2 = L14_2.color
  L14_2 = L14_2.a
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.color = L12_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.img_sp_change_hint
  L12_2 = G
  L12_2 = L12_2.UIColorUtils
  L12_2 = L12_2.GetColorWithAlpha
  L13_2 = L7_2.Color
  L14_2 = A0_2._binder
  L14_2 = L14_2.img_sp_change_hint
  L14_2 = L14_2.color
  L14_2 = L14_2.a
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.color = L12_2
end
L0_1._setup_normal_ultra_sp_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._acheron_ultra_sp_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.prefab_load_meta_special_ultra_sp
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_load_meta_special_ultra_sp
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.BattleAcheronUltraSpInfoPanel
    L5_2 = G
    L5_2 = L5_2.BattleAcheronUltraSpInfoPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._acheron_ultra_sp_panel = L2_2
    L2_2 = A0_2._acheron_ultra_sp_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._acheron_ultra_sp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._status_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_acheron_ultra_sp_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.hp_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._ability
  L1_2(L2_2, L3_2)
end
L0_1._setup_hp = L2_1
return L0_1
