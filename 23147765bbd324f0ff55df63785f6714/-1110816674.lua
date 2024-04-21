local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMiniGameQuizPlayerItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_root
    L4_2 = A0_2._on_btn_root
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._id = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonopolyQuizPlayerConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._id
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img
  L7_2 = G
  L7_2 = L7_2.ActivityMonopolyUtils
  L7_2 = L7_2.get_quiz_player_icon
  L8_2 = A0_2._id
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.Name
    L4_2(L5_2, L6_2)
  end
  if A2_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_order
    if L4_2 ~= nil then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_order
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_ActivityMonopoly_Game_Quiz_Choice"
      L7_2 = A2_2
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.gameObject
    return L1_2
  end
end
L0_1.get_first_selected_object = L1_1
return L0_1
