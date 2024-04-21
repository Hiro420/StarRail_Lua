local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.AvatarEnergyDotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.AvatarEnergyDotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalAvatarEnergyBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Status"
L2_1 = "UI/Battle/Widget/SkillDotPoint.prefab"
L3_1 = {}
L3_1.Hide = 1
L3_1.ProgressText = 2
L3_1.Dot = 3
L3_1.Text = 4
L3_1.FirePlayer = 5
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_root
  L2_2 = L1_2
  L1_2 = L1_2.AddActiveListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_status
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.set_prefab_path
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_prefab_path = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_data_cmpt = A1_2
  L2_2 = A1_2.EnergyBarState
  A0_2._energy_bar_state = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_skill_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_type
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_status
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.IsActive
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._energy_bar_state
  L1_2 = L1_2.IsActive
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cd
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.CoolDown
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_ready
  L4_2 = A0_2._energy_bar_state
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unable
  L4_2 = A0_2._energy_bar_state
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_status_progress
  L2_2 = A0_2._energy_bar_state
  L2_2 = L2_2.CurrCount
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.MaxCount
  L2_2 = L2_2 / L3_2
  L1_2.fillAmount = L2_2
  L1_2 = A0_2._avatar_data_cmpt
  L1_2 = L1_2.DamageType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_status_fill_mark
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2.UnfullColor
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_status_progress
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2.Color
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
end
L0_1._setup_skill_icon = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._energy_bar_state
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_root
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._energy_bar_state
  L1_2 = L1_2.CurrentStatus
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_root
  L3_2 = L2_2
  L2_2 = L2_2.SetInteger
  L4_2 = L1_1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_status_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_root
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_time_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.dot_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._energy_bar_state
  L1_2 = L1_2.CounterType
  L2_2 = L3_1.ProgressText
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_progress_text_type
    L1_2(L2_2)
  else
    L1_2 = A0_2._energy_bar_state
    L1_2 = L1_2.CounterType
    L2_2 = L3_1.Dot
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_dot_type
      L1_2(L2_2)
    else
      L1_2 = A0_2._energy_bar_state
      L1_2 = L1_2.CounterType
      L2_2 = L3_1.Text
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_text_type
        L1_2(L2_2)
      else
        L1_2 = A0_2._energy_bar_state
        L1_2 = L1_2.CounterType
        L2_2 = L3_1.FirePlayer
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._setup_fire_player_dot
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._setup_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_status_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.CurrCount
  L4_2 = "/"
  L5_2 = A0_2._energy_bar_state
  L5_2 = L5_2.MaxCount
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_text_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_status_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dot_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = 0
  L2_2 = A0_2._energy_bar_state
  L2_2 = L2_2.MaxCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._energy_bar_state
    L5_2 = L5_2.CurrCount
    L5_2 = L4_2 < L5_2
    L6_2 = {}
    L6_2.isLight = L5_2
    L7_2 = not L5_2
    L6_2.isBlack = L7_2
    L8_2 = A0_2
    L7_2 = A0_2.sync_load_prefab
    L10_2 = A0_2
    L9_2 = A0_2._get_energy_dot_prefab_path
    L11_2 = L4_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A0_2._binder
    L10_2 = L10_2.dot_root
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.AvatarEnergyDotPanel
    L11_2 = G
    L11_2 = L11_2.AvatarEnergyDotPanelBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._setup_dot_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_status_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.CurrCount
  L1_2(L2_2, L3_2)
end
L0_1._setup_text_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_status_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dot_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = A0_2._energy_bar_state
  L2_2 = L2_2.CurrCount
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.ActiveCount
  L2_2 = L2_2 - L3_2
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.CurrCount
  L3_2 = L3_2 - L1_2
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = A0_2._energy_bar_state
  L4_2 = L4_2.ActiveCount
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L6_2 < L2_2 and L1_2 == 0
    L7_2.isLight = L8_2
    L8_2 = L6_2 >= L2_2 and L1_2 == 0
    L7_2.isBlack = L8_2
    L8_2 = L6_2 < L1_2
    L7_2.isExcited = L8_2
    L9_2 = A0_2
    L8_2 = A0_2.sync_load_prefab
    L11_2 = A0_2
    L10_2 = A0_2._get_energy_dot_prefab_path
    L12_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = A0_2._binder
    L11_2 = L11_2.dot_root
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.create_panel
    L11_2 = G
    L11_2 = L11_2.AvatarEnergyDotPanel
    L12_2 = G
    L12_2 = L12_2.AvatarEnergyDotPanelBinder
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.bind
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setup_view
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._setup_fire_player_dot = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._energy_bar_state
  L2_2 = L2_2.EnergyDotPrefabPaths
  L2_2 = L2_2.Length
  if L2_2 == 0 then
    L3_2 = L2_1
    return L3_2
  end
  L3_2 = A0_2._energy_bar_state
  L3_2 = L3_2.EnergyDotPrefabPaths
  L4_2 = A1_2 % L2_2
  L3_2 = L3_2[L4_2]
  return L3_2
end
L0_1._get_energy_dot_prefab_path = L4_1
return L0_1
