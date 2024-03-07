local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Phone.BottomIconItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BottomIconItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._data = nil
  A0_2._click_callback = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  A0_2._click_callback = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.icon
  L6_2 = A1_2.FuncHudIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._data
  L6_2 = L6_2.GotoID
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A0_2._data
  L5_2 = L5_2.RedDot
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.go_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if nil ~= L1_2 then
    L1_2 = A0_2._click_callback
    if L1_2 == nil then
      L1_2 = G
      L1_2 = L1_2.GotoManager
      L1_2 = L1_2.Goto
      L2_2 = A0_2._data
      L2_2 = L2_2.GotoID
      L1_2(L2_2)
    else
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._data
      L2_2 = L2_2.GotoID
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.navigation
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Navigation
  L4_2 = L4_2.Mode
  L4_2 = L4_2.Explicit
  L3_2.mode = L4_2
  L4_2 = NavigationDirection
  L4_2 = L4_2.Up
  if A1_2 == L4_2 then
    L3_2.selectOnUp = A2_2
  else
    L4_2 = NavigationDirection
    L4_2 = L4_2.Down
    if A1_2 == L4_2 then
      L3_2.selectOnDown = A2_2
    else
      L4_2 = NavigationDirection
      L4_2 = L4_2.Left
      if A1_2 == L4_2 then
        L3_2.selectOnLeft = A2_2
      else
        L4_2 = NavigationDirection
        L4_2 = L4_2.Right
        if A1_2 == L4_2 then
          L3_2.selectOnRight = A2_2
        end
      end
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2.navigation = L3_2
end
L0_1.setup_navigation = L1_1
return L0_1
