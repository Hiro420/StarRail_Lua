local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.RogueBuffGetDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAeonBuffIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
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
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._rogue_buff_data = A1_2
  A0_2._is_get = A2_2
  A0_2._show_title = A3_2
  if A1_2 ~= nil then
    L5_2 = A1_2
    L4_2 = A1_2.GetMazeBuffRow
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_11
    end
  end
  L4_2 = nil
  ::lbl_11::
  L6_2 = A0_2
  L5_2 = A0_2.safe_set_active
  L7_2 = L4_2 ~= nil
  L5_2(L6_2, L7_2)
  if L4_2 == nil then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img
  L8_2 = L4_2.BuffIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BuffName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L6_2 = L5_2
  L5_2 = L5_2.SetChecked
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.set_gray
  L7_2 = A2_2 == false and A3_2 == true
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  if A1_2 then
    L3_2 = 0.4
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = 1
  ::lbl_9::
  L2_2.alpha = L3_2
end
L0_1.set_gray = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_navi_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_navi_btn
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.ClearAnimationState
  L2_2(L3_2)
end
L0_1.clear_btn_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RogueBuffGetDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2._rogue_buff_data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._show_title
  if L2_2 == true then
    L2_2 = A0_2._is_get
    if L2_2 then
      L2_2 = "UIText_Rogue_Aeon_Buff_Active"
      if L2_2 then
        goto lbl_23
      end
    end
    L2_2 = "UIText_Rogue_Aeon_Buff_Inactive"
    ::lbl_23::
    L4_2 = L1_2
    L3_2 = L1_2.setup_title
    L5_2 = true
    L6_2 = L2_2
    L7_2 = A0_2._is_get
    L7_2 = not L7_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.setup_title
    L4_2 = false
    L5_2 = nil
    L6_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L3_2 = L1_2
  L2_2 = L1_2.show
  L2_2(L3_2)
end
L0_1._on_btn_click = L1_1
return L0_1
