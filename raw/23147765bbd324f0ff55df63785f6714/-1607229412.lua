local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogHeadRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogHeadRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeAvatarDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = {}
L2_1.SwitchAvatar = "AvatarDialog_Switch"
L2_1.Avatar2Cone = "AvatarDialog_LightConeSwitch_A"
L2_1.Cone2Avatar = "AvatarDialog_LightConeSwitch_B"
L3_1 = {}
L3_1.MazeBuff = 1
L3_1.BattleBuff = 2
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._show_skills = false
  A0_2.origin_pos = nil
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  A0_2._all_character_property = L3_2
  L3_2 = pairs
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarPropertyExcelTable
  L4_2 = L4_2.dataDict
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsDisplay
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._all_character_property
      L10_2 = L7_2.PropertyType
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarPropertyType
  L4_2 = L4_2.MaxHP
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AvatarPropertyType
  L5_2 = L5_2.Attack
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AvatarPropertyType
  L6_2 = L6_2.Defence
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AvatarPropertyType
  L7_2 = L7_2.Speed
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.AvatarPropertyType
  L8_2 = L8_2.CriticalChance
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.AvatarPropertyType
  L9_2 = L9_2.CriticalDamage
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  A0_2._important_character_property = L3_2
  L3_2 = A0_2._team_data
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.TeamModule
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentTeam
    L3_2 = L3_2(L4_2)
    A0_2._team_data = L3_2
    L3_2 = A0_2._team_data
    L4_2 = L3_2
    L3_2 = L3_2.GetMemberCount
    L3_2 = L3_2(L4_2)
    A0_2._team_member_count = L3_2
  end
  A0_2._switch_to_skill_panel = A2_2
  A0_2._member = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._team_member_count
  L4_2 = A0_2._on_scroll_avatars_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_all_callback
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L3_2 = A0_2._member
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._btn_exit_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg_btn
  L4_2 = A0_2._btn_exit_onclick
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_all_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_lightcone_callback
  L3_2 = A0_2
  L4_2 = A0_2._avatar_switch_to_cone
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_avatar_callback
  L3_2 = A0_2
  L4_2 = A0_2._cone_switch_to_avatar
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatars
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._team_member_count
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._switch_to_skill_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.switch_to_skill_panel
    L1_2(L2_2)
    A0_2._switch_to_skill_panel = false
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_avatar_data
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_important_property_data
  L3_2 = A0_2._important_property_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_all_property_data
  L3_2 = A0_2._all_property_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_buff_data
  L3_2 = A0_2._buff_data
  L4_2 = L3_1.MazeBuff
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_skill_data
  L3_2 = A0_2._skill_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_status_data
  L3_2 = A0_2._status_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.switch_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lightcone_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._refresh_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.IsCsType
    L4_2 = L2_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AdventurePhase
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  A0_2._member = A1_2
  L3_2 = L2_2.TeamManager
  L4_2 = L3_2
  L3_2 = L3_2.GetMemberEntityByMemberData
  L5_2 = A0_2._member
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureAbilityComponent
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._ability = L4_2
  L4_2 = G
  L4_2 = L4_2.AvatarUtils
  L4_2 = L4_2.get_avatar_data_by_member_data
  L5_2 = A0_2._member
  L4_2 = L4_2(L5_2)
  A0_2._avatar_data = L4_2
  L4_2 = A0_2._avatar_data
  if L4_2 ~= nil then
    L4_2 = A0_2._avatar_data
    L5_2 = L4_2
    L4_2 = L4_2.GetEquipment
    L4_2 = L4_2(L5_2)
    A0_2._equipment = L4_2
  else
    A0_2._equipment = nil
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_property_data
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_status_data
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_buff_data
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_skill_data
  L4_2(L5_2)
end
L0_1._refresh_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._member
  L2_2 = L1_2
  L1_2 = L1_2.GetPropertyNumberUIData
  L1_2 = L1_2(L2_2)
  A0_2._status_data = L1_2
end
L0_1._refresh_status_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_property_data
  L3_2 = A0_2._important_character_property
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._important_property_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_property_data
  L3_2 = A0_2._all_character_property
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._all_property_data = L1_2
end
L0_1._refresh_property_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._avatar_data
    L9_2 = L8_2
    L8_2 = L8_2.GetPropertyUIData
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = {}
    L11_2 = A0_2
    L10_2 = A0_2._copy_property_data
    L12_2 = L8_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = #L2_2
    L12_2 = L12_2 + 1
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  return L2_2
end
L0_1._get_property_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.Title
  A2_2.NameID = L3_2
  L3_2 = A1_2.IconPath
  A2_2.IconPath = L3_2
  L3_2 = A1_2.Num
  A2_2.BaseNum = L3_2
  L3_2 = A1_2.AddNum
  A2_2.ChangeNum = L3_2
end
L0_1._copy_property_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A1_2.BuffID
  L4_2 = A1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.IsDisplay
    if L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._buff_data
      L5_2 = A0_2._buff_data
      L5_2 = #L5_2
      L5_2 = L5_2 + 1
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._insert_buff_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._buff_data = L1_2
  L1_2 = A0_2._ability
  L1_2 = L1_2.ModifierCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._ability
    L7_2 = L6_2
    L6_2 = L6_2.GetModifierByIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = A0_2
      L7_2 = A0_2._insert_buff_data
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_buff_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetDisplaySkillDataList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._skill_data = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.SkillTriggerKey
    if L7_2 == "SkillMaze" then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._skill_data
      L9_2 = 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._skill_data
      L9_2 = A0_2._skill_data
      L9_2 = #L9_2
      L9_2 = L9_2 + 1
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_skill_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._team_data
  L3_2 = L2_2
  L2_2 = L2_2.GetMemberDataByIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._member
  if L2_2 == L3_2 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L2_1.SwitchAvatar
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L0_1._btn_avatar_onclick = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarDialogHeadRow
    L8_2 = G
    L8_2 = L8_2.AvatarDialogHeadRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._team_data
  L6_2 = L5_2
  L5_2 = L5_2.GetMemberDataByIndex
  L7_2 = A2_2 + 1
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_icon
  L8_2 = L5_2.AvatarData
  L8_2 = L8_2.AvatarSideIconPath
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._team_data
  L9_2 = L8_2
  L8_2 = L8_2.GetMemberDataByIndex
  L10_2 = A2_2 + 1
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2._member
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_callback
  L8_2 = A0_2
  L9_2 = A0_2._btn_avatar_onclick
  L10_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_scroll_avatars_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1.Avatar2Cone
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lightcone_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._avatar_switch_to_cone = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1.Cone2Avatar
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lightcone_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._cone_switch_to_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_exit_onclick = L4_1
return L0_1
