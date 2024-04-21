local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideTypePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideTypePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._type_id = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._type_id = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._type_id
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameplayGuideTabConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._type_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_title
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_desc
  L4_2 = L1_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MultipleDropUtils
  L3_2 = L2_2.GetMultipleDropTypeByGuideType
  L4_2 = L1_2.GuideType
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.GetTopData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.Theme
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.animation_double_mark
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.animation_theme_mark
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.theme_mark_text
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L4_2.LabelText
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.animation_double_mark
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.animation_theme_mark
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.double_mark_text
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L4_2.LabelText
      L6_2(L7_2, L8_2)
    end
  else
    L5_2 = L1_2.GuideType
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.GuideType
    L6_2 = L6_2.Rogue
    if L5_2 == L6_2 then
      L5_2 = G
      L5_2 = L5_2.RedDotModule
      L5_2 = L5_2.Instance
      L6_2 = L5_2
      L5_2 = L5_2.bind_reddot
      L7_2 = "HandbookGuideRogueTab"
      L8_2 = nil
      L9_2 = A0_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.go_reddot
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L5_2 = G
      L5_2 = L5_2.RedDotModule
      L5_2 = L5_2.Instance
      L6_2 = L5_2
      L5_2 = L5_2.bind_reddot
      L7_2 = "HandbookGuideMainTab"
      L8_2 = A0_2._type_id
      L9_2 = A0_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.go_reddot
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = "DoubleRewardMark_Shine"
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_double_mark
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_double_mark
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_theme_mark
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation_theme_mark
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.try_play_double_mark_animation = L1_1
return L0_1
