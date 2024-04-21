local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Base.DataStruct.Stack"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackProfitJumpTextPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackProfitJumpTextPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.AlleyPackUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ComponentExtensions
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityAlleyPackControlPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Stack
  L1_2 = L1_2(L2_2)
  A0_2._jump_text_pool = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._pack_ui3d_page = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_delete
  L4_2 = A0_2._on_btn_delete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rotate
  L4_2 = A0_2._on_btn_rotate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._tick_for_gamepad
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_visible
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._jump_text_pool
  L1_2(L2_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_select_good
    L2_2 = L2_2(L3_2)
    A1_2 = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_adjust_pos
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_transform_root
  L3_2.localPosition = L2_2
  L3_2 = true
  return L3_2
end
L2_1.reset_panel_pos = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UI3DCamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = A1_2.AlleyPackGoodData
  L4_2 = L4_2.DragAnchorPosition
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransformUtility
  L4_2 = L4_2.ScreenPointToLocalPointInRectangle
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_container
  L6_2 = L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_UICamera
  L8_2 = nil
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector3
    L7_2 = L5_2.x
    L8_2 = L5_2.y
    L9_2 = 0
    return L6_2(L7_2, L8_2, L9_2)
  end
end
L2_1._get_adjust_pos = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_select_good
  return L1_2(L2_2)
end
L2_1._get_cur_select_good = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.get_last_settled_good
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.AlleyPackGoodData
    L3_2 = L3_2.IsSettled
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._get_adjust_pos
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 ~= nil then
        L5_2 = A0_2
        L4_2 = A0_2._get_jump_text
        L4_2 = L4_2(L5_2)
        L6_2 = L4_2
        L5_2 = L4_2.adjust_pos
        L7_2 = L3_2
        L5_2(L6_2, L7_2)
        L6_2 = L4_2
        L5_2 = L4_2.show_profit
        L7_2 = A1_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L2_1.show_profit_increase = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._set_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.remove_cur_good
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._statistic_record_delete
  L1_2(L2_2)
end
L2_1._on_btn_delete = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.rotate_cur_good
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._statistic_record_rotate
  L1_2(L2_2)
end
L2_1._on_btn_rotate = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.switch_select_target
  L3_2 = nil
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_visible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._jump_text_pool
  L2_2 = L1_2
  L1_2 = L1_2.pop
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._load_init_jump_text
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L2_1._get_jump_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.jump_text_load_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AlleyPackProfitJumpTextPanel
  L5_2 = G
  L5_2 = L5_2.AlleyPackProfitJumpTextPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2.transform
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.register_recycle_callback
  L5_2 = A0_2._recycle_jump_text
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L2_1._load_init_jump_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._jump_text_pool
  L3_2 = L2_2
  L2_2 = L2_2.push
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._recycle_jump_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_pack_statistics
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.DeleteCount
    L2_2 = L2_2 + 1
    L1_2.DeleteCount = L2_2
  end
end
L2_1._statistic_record_delete = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AlleyPackUtils
  L1_2 = L1_2.get_pack_statistics
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.RotateCount
    L2_2 = L2_2 + 1
    L1_2.RotateCount = L2_2
  end
end
L2_1._statistic_record_rotate = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._pack_ui3d_page
    if L1_2 ~= nil then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2._pack_ui3d_page
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_select_good
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.IsDragging
    if L2_2 then
      goto lbl_23
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_visible
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_23::
  L3_2 = A0_2
  L2_2 = A0_2.reset_panel_pos
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_visible
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L2_1._tick_for_gamepad = L3_1
return L2_1
