local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.AvatarEducation.AvatarSkillTree.SkillTreeLevelUpResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreeLevelUpResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "ResultDialog_ClickProtectTime"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.FloatValue
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AvatarModule
L4_1 = {}
L4_1.Attribute = 1
L4_1.Skill = 2
L4_1.Special = 3
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SkillTreeLevelUpResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exit_timer = L1_2
  A0_2._enable_exit = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._enable_exit = true
end
L0_1._on_timer_callback = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2.pointType = A1_2
  A0_2.pointID = A2_2
  A0_2.level = A3_2
  A0_2.titleID = A4_2
  A0_2.level_before = 0
  if A5_2 ~= nil then
    A0_2.level_before = A5_2
  end
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.titleID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_pre
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.level_before
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarSkillTreeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.pointID
  L3_2 = A0_2.level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_status
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L2_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_detail
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.pointType
  L3_2 = L4_1.Attribute
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_skill_detail
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.get_skill_property_desc
    L5_2 = L1_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L2_2 = A0_2.pointType
    L3_2 = L4_1.Skill
    if L2_2 == L3_2 then
      L2_2 = L1_2.LevelUpSkillID
      L2_2 = L2_2[0]
      if not L2_2 then
        L2_2 = 0
      end
      L3_2 = L3_1
      L4_2 = L3_2
      L3_2 = L3_2.GetAvatar
      L5_2 = L1_2.AvatarID
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2.SkillTreeData
      L5_2 = L4_2
      L4_2 = L4_2.GetSkillPointLevel
      L6_2 = L2_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.AvatarSkillExcelTable
      L5_2 = L5_2.GetData
      L6_2 = L2_2
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_skill_detail
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L5_2.SkillDesc
      L9_2 = G
      L9_2 = L9_2.UITextUtils
      L9_2 = L9_2.GetSkillParams
      L10_2 = L5_2.ParamList
      L9_2, L10_2 = L9_2(L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = A0_2.level
      if L4_2 > L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.text_level
        L7_2 = G
        L7_2 = L7_2.UIColorUtils
        L7_2 = L7_2.GetColor
        L8_2 = "#2EFFF8"
        L7_2 = L7_2(L8_2)
        L6_2.color = L7_2
        L6_2 = A0_2._binder
        L6_2 = L6_2.text_level_pre
        L7_2 = G
        L7_2 = L7_2.UIColorUtils
        L7_2 = L7_2.GetColor
        L8_2 = "#2EFFF8"
        L7_2 = L7_2(L8_2)
        L6_2.color = L7_2
        L6_2 = A0_2._binder
        L6_2 = L6_2.text_level
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetText
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.text_level_pre
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetText
        L8_2 = A0_2.level
        L8_2 = L4_2 - L8_2
        L9_2 = A0_2.level_before
        L8_2 = L8_2 + L9_2
        L6_2(L7_2, L8_2)
      end
    else
      L2_2 = A0_2.pointType
      L3_2 = L4_1.Special
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_skill_detail
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L1_2.PointDesc
        L5_2 = G
        L5_2 = L5_2.UITextUtils
        L5_2 = L5_2.GetSkillParams
        L6_2 = L1_2.ParamList
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    end
  end
  L2_2 = A0_2._exit_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._exit_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarSkillTreeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.pointID
  L3_2 = A0_2.level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = L1_2.StatusAddList
  L3_2 = L3_2.Length
  if 0 < L3_2 then
    L3_2 = A0_2.level
    if 1 < L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarSkillTreeExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A0_2.pointID
      L5_2 = A0_2.level
      L5_2 = L5_2 - 1
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = 0
      L5_2 = L1_2.StatusAddList
      L5_2 = L5_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = {}
        L9_2 = L1_2.StatusAddList
        L9_2 = L9_2[L7_2]
        L9_2 = L9_2.PropertyType
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.AvatarPropertyExcelTable
        L10_2 = L10_2.GetData
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L11_2 = L10_2.PropertyName
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.Client
        L12_2 = L12_2.AvatarModule
        L12_2 = L12_2.FormatDisplayDataByType
        L13_2 = L9_2
        L14_2 = L3_2.StatusAddList
        L14_2 = L14_2[L7_2]
        L14_2 = L14_2.Value
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.Client
        L13_2 = L13_2.AvatarModule
        L13_2 = L13_2.FormatDisplayDataByType
        L14_2 = L9_2
        L15_2 = L1_2.StatusAddList
        L15_2 = L15_2[L7_2]
        L15_2 = L15_2.Value
        L13_2 = L13_2(L14_2, L15_2)
        L8_2.name = L11_2
        L8_2.preValue = L12_2
        L8_2.curValue = L13_2
        L8_2.propertyRow = L10_2
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L2_2
        L16_2 = L8_2
        L14_2(L15_2, L16_2)
      end
    else
      L3_2 = 0
      L4_2 = L1_2.StatusAddList
      L4_2 = L4_2.Length
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = {}
        L8_2 = L1_2.StatusAddList
        L8_2 = L8_2[L6_2]
        L8_2 = L8_2.PropertyType
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.AvatarPropertyExcelTable
        L9_2 = L9_2.GetData
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2.PropertyName
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.Client
        L11_2 = L11_2.AvatarModule
        L11_2 = L11_2.FormatDisplayDataByType
        L12_2 = L8_2
        L13_2 = L1_2.StatusAddList
        L13_2 = L13_2[L6_2]
        L13_2 = L13_2.Value
        L11_2 = L11_2(L12_2, L13_2)
        L7_2.name = L10_2
        L7_2.preValue = 0
        L7_2.curValue = L11_2
        L7_2.propertyRow = L9_2
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L2_2
        L14_2 = L7_2
        L12_2(L13_2, L14_2)
      end
    end
  end
  return L2_2
end
L0_1._get_attribute_data_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_close_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
return L0_1
