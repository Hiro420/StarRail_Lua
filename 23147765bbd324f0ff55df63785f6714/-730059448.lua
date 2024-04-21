local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelRewardLevelItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIBinder
  L2_2 = L2_2.ctor
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._components = L2_2
  L2_2 = {}
  A0_2._objects = L2_2
end
L0_1.ctor = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Adventure/Widget/AdventureLevelItem.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
L1_1 = {}
L1_1.LevelNum = "Root/LevelNum"
L1_1.Bg = "Root/Frame"
L1_1.Obj = "Root"
L1_1.Normal = "Root/Frame/Normal"
L1_1.Image = "Root/Hook/Image"
L1_1.Selected = "Root/Selected"
L1_1.Hook = "Root/Hook"
L1_1.LevelUpIcon = "Root/LevelUpIcon"
L1_1.LockIcon = "Root/LockIcon"
L0_1.ObjectMap = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.RectTransform
L2_1[1] = L3_1
L1_1.Rect_Root = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.UI
L3_1 = L3_1.Button
L4_1 = "Root"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Button_Obj = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.AnimatorButton
L4_1 = "Root"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Button_Animator = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.CanvasGroup
L4_1 = "Root/Frame/Selected"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Image_Selected = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.UI
L3_1 = L3_1.Image
L4_1 = "Root/LevelUpIcon"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Image_LevelUpIcon = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.UI
L3_1 = L3_1.Text
L4_1 = "Root/LevelNum/NumText"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Text_LevelNum = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.UI
L3_1 = L3_1.Image
L4_1 = "Root/Hook"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Image_Hook = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.UI
L3_1 = L3_1.Image
L4_1 = "Root/Hook/Image"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Image_Image = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.UI
L3_1 = L3_1.Image
L4_1 = "Root/LockIcon"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Image_LockIcon = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.CanvasGroup
L4_1 = "Root/Frame/Normal"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.Image_Normal = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.CanvasGroup
L4_1 = "Root/Frame"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.canvas_bg = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.CanvasGroup
L4_1 = "Root/LevelNum"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1.canvas_num = L2_1
L0_1.ComponentMap = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_btn = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._components
  if L2_2 == nil then
    L2_2 = {}
    A0_2._components = L2_2
  end
  L2_2 = A0_2._components
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = A0_2.ComponentMap
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._safe_get_cmpt
      L5_2 = L2_2[1]
      L6_2 = L2_2[2]
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2._components
      L4_2[A1_2] = L3_2
    end
  end
  L2_2 = A0_2._components
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_component = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._objects
  if L2_2 == nil then
    L2_2 = {}
    A0_2._objects = L2_2
  end
  L2_2 = A0_2._objects
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = A0_2.ObjectMap
    L2_2 = L2_2[A1_2]
    L4_2 = A0_2
    L3_2 = A0_2._safe_find
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._objects
    L4_2[A1_2] = L3_2
  end
  L2_2 = A0_2._objects
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_object = L1_1
return L0_1
