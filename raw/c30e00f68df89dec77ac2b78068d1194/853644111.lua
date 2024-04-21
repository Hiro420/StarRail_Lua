local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutLittleWheelPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutLittleWheelPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ShortCutWheelModule
L1_1 = L1_1.Instance
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AdventureStatic
L3_1 = "SpriteOutput/labyrinthPlay/EmptyIcon.png"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._wheel_type = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.InControlActionsManager
  L4_2 = L4_2.Instance
  L4_2 = L4_2.TutorialGuideLittleWheelItem
  L4_2 = #L4_2
  A0_2._tutorial_guide_little_wheel_item = L4_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.TutorialGuideWheelItem
  L1_2 = #L1_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  L4_2 = L4_2 and L1_2 == 0
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_view
  L2_2(L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = {}
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.LittleWheelSelectConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._wheel_type
  L5_2 = ShortCutWheelType
  L5_2 = L5_2.Left
  if L4_2 == L5_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2.Left1
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2.Left2
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2.Left3
    L4_2(L5_2, L6_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = L3_2.Left4
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._wheel_type
    L5_2 = ShortCutWheelType
    L5_2 = L5_2.Right
    if L4_2 == L5_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L1_2
      L6_2 = L3_2.Right1
      L4_2(L5_2, L6_2)
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L1_2
      L6_2 = L3_2.Right2
      L4_2(L5_2, L6_2)
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L1_2
      L6_2 = L3_2.Right3
      L4_2(L5_2, L6_2)
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L1_2
      L6_2 = L3_2.Right4
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2._icon_panels
    L9_2 = L9_2[L7_2]
    L10_2 = L8_2.Length
    if 0 < L10_2 then
      L11_2 = A0_2
      L10_2 = A0_2._get_first_view_id
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = A0_2._binder
      L11_2 = L11_2._short_cut_btn_list
      L11_2 = L11_2[L7_2]
      L13_2 = A0_2
      L12_2 = A0_2._unbind_btn_callback
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
      if L10_2 then
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.GameCore
        L12_2 = L12_2.LittleWheelFuncConfigExcelTable
        L12_2 = L12_2.GetData
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L14_2 = L9_2
        L13_2 = L9_2.setup_view
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
        L14_2 = A0_2
        L13_2 = A0_2._bind_btn_callback
        L15_2 = L11_2
        L16_2 = A0_2._on_btn_item_click
        L17_2 = L10_2
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.Client
        L13_2 = L13_2.GlobalVars
        L13_2 = L13_2.s_ModuleManager
        L13_2 = L13_2.TutorialSupportModule
        L14_2 = L13_2
        L13_2 = L13_2.SetNodeDynamicKey
        L15_2 = L11_2.gameObject
        L16_2 = L10_2
        L13_2(L14_2, L15_2, L16_2)
        L13_2 = L1_1.LittleWheelFuncID2RedDotKey
        L13_2 = L13_2[L10_2]
        if L13_2 then
          L14_2 = A0_2._binder
          L14_2 = L14_2._short_cut_red_dot_list
          L14_2 = L14_2[L7_2]
          L15_2 = G
          L15_2 = L15_2.RedDotModule
          L15_2 = L15_2.Instance
          L16_2 = L15_2
          L15_2 = L15_2.bind_reddot
          L17_2 = L13_2
          L18_2 = nil
          L19_2 = A0_2
          L20_2 = L14_2
          L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
        end
      else
        L13_2 = L9_2
        L12_2 = L9_2.set_empty
        L12_2(L13_2)
      end
    end
  end
end
L0_1._setup_item_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.LittleWheelFuncConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = littleWheelFuncID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = image
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = btn
  L6_2 = A0_2._on_btn_item_click
  L7_2 = littleWheelFuncID
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = btn
  L5_2 = L5_2.gameObject
  L6_2 = littleWheelFuncID
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1.LittleWheelFuncID2RedDotKey
  L4_2 = littleWheelFuncID
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2._short_cut_red_dot_list
    L5_2 = index
    L4_2 = L4_2[L5_2]
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.bind_reddot
    L7_2 = L3_2
    L8_2 = nil
    L9_2 = A0_2
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._setup_little_wheel_icon = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L1_1.LittleWheelFuncID2IsViewFunc
    L7_2 = L7_2[L6_2]
    if L7_2 then
      L8_2 = L7_2
      L8_2 = L8_2()
      if L8_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_first_view_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tutorial_guide_little_wheel_item
  if L2_2 == 0 then
    L2_2 = L1_1.LittleWheelFuncID2Notify
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = L1_1.LittleWheelFuncID2Notify
      L3_2 = L3_2[A1_2]
      L2_2(L3_2)
    else
      L2_2 = L1_1.LittleWheelFuncID2GotoID
      L2_2 = L2_2[A1_2]
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.GotoManager
        L2_2 = L2_2.Goto
        L3_2 = L1_1.LittleWheelFuncID2GotoID
        L3_2 = L3_2[A1_2]
        L2_2(L3_2)
      end
    end
  else
    L2_2 = A0_2._tutorial_guide_little_wheel_item
    if L2_2 == A1_2 then
      L2_2 = L1_1.LittleWheelFuncID2Notify
      L2_2 = L2_2[A1_2]
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = L1_1.LittleWheelFuncID2Notify
        L3_2 = L3_2[A1_2]
        L2_2(L3_2)
      else
        L2_2 = L1_1.LittleWheelFuncID2GotoID
        L2_2 = L2_2[A1_2]
        if L2_2 then
          L2_2 = G
          L2_2 = L2_2.GotoManager
          L2_2 = L2_2.Goto
          L3_2 = L1_1.LittleWheelFuncID2GotoID
          L3_2 = L3_2[A1_2]
          L2_2(L3_2)
        end
      end
    else
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "TutorialGuideWheelItem_Hint"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_item_click = L4_1
return L0_1
