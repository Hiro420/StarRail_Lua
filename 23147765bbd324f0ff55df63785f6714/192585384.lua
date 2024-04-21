local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineSwitchButtonPanelBinder"
L0_1(L1_1)
L0_1 = "SpriteOutput/labyrinthPlay/EmptyIcon.png"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ShortCutLittleWheelIconPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._panels_by_type = L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.LittleWheelType
  L3_2 = L3_2.Icon
  if L2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_icon
    L5_2 = A1_2.IconPath
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_prefab
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._show_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_image
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._setup_icon = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._create_icon_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._panels_by_type
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_active
    L9_2 = A1_2 == L5_2
    L7_2(L8_2, L9_2)
  end
end
L1_1._setup_prefab = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._panels_by_type
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.LittleWheelType
  L2_2 = L2_2.StoryLine
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.sync_load_prefab
    L4_2 = "UI/StoryLine/Widget/BtnStoryLineSwitch.prefab"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.StoryLineSwitchButtonPanel
    L6_2 = G
    L6_2 = L6_2.StoryLineSwitchButtonPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._panels_by_type
    L4_2[A1_2] = L3_2
  end
end
L1_1._create_icon_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._show_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon_image
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.set_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.custom_container
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._show_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.custom_container
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._show_custom_prefab = L2_1
return L1_1
