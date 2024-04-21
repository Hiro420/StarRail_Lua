local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillListBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillListIconBattle"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillListIconBattleBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogSkillList"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Skill01 = true
L1_1.Skill02 = true
L1_1.Skill03 = true
L1_1.SkillP01 = true
L1_1.SkillMaze = true
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_skill_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._BuffDatas = nil
  A0_2._SkillDatas = nil
  A0_2._click_obj = nil
  A0_2._click_callback = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._CurrentEntity = A1_2
  L2_2 = A0_2._CurrentEntity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TurnBasedAbilityComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._Ability = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_obj = A1_2
  A0_2._click_callback = A2_2
end
L0_1.set_skill_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = {}
  A0_2._SkillDatas = L1_2
  L1_2 = A0_2._CurrentEntity
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.CharacterDataComponent
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L2_2 = A0_2._CurrentEntity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AvatarDataComponent
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = L1_2.CharacterID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L4_2.SkillList
  L5_2 = L5_2.Length
  L6_2 = 0
  L7_2 = L5_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = L2_2
    L10_2 = L2_2.GetAvatarSkillConfig
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 1
    if L10_2 then
      L11_2 = L10_2.Level
    else
      L12_2 = G
      L12_2 = L12_2.SuperDebug
      L12_2 = L12_2.Log
      L13_2 = "Avatar skill config null, check avatarID: "
      L14_2 = tostring
      L15_2 = L3_2
      L14_2 = L14_2(L15_2)
      L13_2 = L13_2 .. L14_2
      L12_2(L13_2)
    end
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.AvatarSkillExcelTable
    L12_2 = L12_2.GetData
    L13_2 = L4_2.SkillList
    L13_2 = L13_2[L9_2]
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 ~= nil then
      L13_2 = L12_2.SkillTriggerKey
      L13_2 = L1_1[L13_2]
      if L13_2 then
        L13_2 = {}
        L13_2.Index = L9_2
        L14_2 = L12_2.SkillIcon
        L13_2.IconPath = L14_2
        L14_2 = L12_2.SkillName
        L13_2.Name = L14_2
        L14_2 = L12_2.SkillTag
        L15_2 = CS
        L15_2 = L15_2.RPG
        L15_2 = L15_2.Client
        L15_2 = L15_2.TextID
        L15_2 = L15_2.empty
        if L14_2 ~= L15_2 then
          L14_2 = G
          L14_2 = L14_2.TextmapStatic
          L14_2 = L14_2.GetText
          L15_2 = L12_2.SkillTag
          L14_2 = L14_2(L15_2)
          L13_2.Tag = L14_2
        else
          L13_2.Tag = ""
        end
        L14_2 = G
        L14_2 = L14_2.TextmapStatic
        L14_2 = L14_2.GetText
        L15_2 = L12_2.SkillTypeDesc
        L14_2 = L14_2(L15_2)
        L13_2.TypeDesc = L14_2
        L14_2 = A0_2._CurrentSelectSkillIndex
        L14_2 = L9_2 == L14_2
        L13_2.IsSelect = L14_2
        L13_2.MaxSP = 0
        L13_2.CurrentSP = 0
        L13_2.CoolDown = 0
        L14_2 = A0_2._CurrentEntity
        L15_2 = L14_2
        L14_2 = L14_2.GetComponent
        L16_2 = typeof
        L17_2 = CS
        L17_2 = L17_2.RPG
        L17_2 = L17_2.GameCore
        L17_2 = L17_2.SkillCharacterComponent
        L16_2, L17_2, L18_2 = L16_2(L17_2)
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
        if L14_2 ~= nil then
          L16_2 = L14_2
          L15_2 = L14_2.GetCoolDown
          L17_2 = L9_2
          L15_2 = L15_2(L16_2, L17_2)
          L13_2.CoolDown = L15_2
          L15_2 = L14_2.JsonConfig
          L15_2 = L15_2.SkillList
          L15_2 = L15_2[L9_2]
          L15_2 = L15_2.SkillType
          L13_2.SkillType = L15_2
        end
        L15_2 = L13_2.MaxSP
        if 0 < L15_2 then
          L15_2 = L13_2.CurrentSP
          L16_2 = L13_2.MaxSP
        end
        L15_2 = L15_2 < L16_2
        L13_2.IsLock = L15_2
        L15_2 = G
        L15_2 = L15_2.UITextUtils
        L15_2 = L15_2.GetSkillDesc
        L16_2 = L12_2.SkillDesc
        L17_2 = L12_2.ParamList
        L15_2 = L15_2(L16_2, L17_2)
        L13_2.Desc = L15_2
        L15_2 = CS
        L15_2 = L15_2.RPG
        L15_2 = L15_2.Client
        L15_2 = L15_2.UINumberUtils
        L15_2 = L15_2.SkillNeedBP
        L16_2 = A0_2._CurrentEntity
        L17_2 = L9_2
        L15_2 = L15_2(L16_2, L17_2)
        L13_2.NeedBPCount = L15_2
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = A0_2._SkillDatas
        L17_2 = A0_2._SkillDatas
        L17_2 = #L17_2
        L17_2 = L17_2 + 1
        L18_2 = L13_2
        L15_2(L16_2, L17_2, L18_2)
      end
    end
  end
end
L0_1._refresh_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._SkillDatas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skill_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarDialogSkillListIconBattle
    L8_2 = G
    L8_2 = L8_2.AvatarDialogSkillListIconBattleBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._SkillDatas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2
  L9_2 = A0_2._OnSkillClick
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_scroll_skill_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Index
  A0_2._CurrentSelectSkillIndex = L2_2
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_obj
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._OnSkillClick = L2_1
return L0_1
