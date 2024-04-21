local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleyPackSpecialOrderPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._pack_ui3d_page = L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._special_order_data = nil
  A0_2._target_table = nil
  A0_2._depot_panel_ref = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  A0_2._depot_panel_ref = A1_2
end
L1_1.set_depot_panel = L2_1
function L2_1(A0_2, A1_2)
  A0_2._ship_control_panel_ref = A1_2
end
L1_1.set_ship_control_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._special_order_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._special_order_data
  L3_2 = L3_2.Targets
  L2_2 = L2_2(L3_2)
  A0_2._target_table = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_special_order_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._special_order_data
  L4_2 = L4_2.SubTitleID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_target_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._target_table
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_order
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._get_special_order_check_param
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._target_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._target_table
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.DoCheck
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_target_list
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_index
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_status
    L11_2 = L7_2
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.refresh_progress
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_all_target_finish
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_show_special_order_status_ani
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_show_order_finish_toast
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1.refresh_order = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_special_order_check_param
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._target_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._target_table
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.DoCheck
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L1_1.is_all_target_finish = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._is_special_order_ani_finish
    if L2_2 then
      return
    end
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_order_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "ShippingSPOrder_Clear"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_order_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "ShippingSPOrder_Default"
    L2_2(L3_2, L4_2)
  end
  A0_2._is_special_order_ani_finish = A1_2
end
L1_1._try_show_special_order_status_ani = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AlleySpecialOrderCheckParam
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._get_profit_preview
  L2_2 = L2_2(L3_2)
  L1_2.Profit = L2_2
  L2_2 = A0_2._pack_ui3d_page
  L3_2 = L2_2
  L2_2 = L2_2.get_alley_pack_ship_data
  L2_2 = L2_2(L3_2)
  L1_2.PackShipData = L2_2
  return L1_2
end
L1_1._get_special_order_check_param = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0
  L2_2 = A0_2._ship_control_panel_ref
  if L2_2 ~= nil then
    L2_2 = A0_2._ship_control_panel_ref
    L3_2 = L2_2
    L2_2 = L2_2.get_ship_cost
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 - L2_2
  end
  L2_2 = A0_2._depot_panel_ref
  if L2_2 ~= nil then
    L2_2 = A0_2._depot_panel_ref
    L3_2 = L2_2
    L2_2 = L2_2.get_goods_profit
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 + L2_2
  end
  return L1_2
end
L1_1._get_profit_preview = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._special_order_data
  if L2_2 ~= nil and A1_2 then
    L2_2 = A0_2._is_showing_order_finish_toast
    if not L2_2 then
      L2_2 = A0_2._already_showed_order_finish_toast
      if not L2_2 then
        goto lbl_16
      end
    end
  end
  if not A1_2 then
    A0_2._already_showed_order_finish_toast = false
  end
  do return end
  ::lbl_16::
  A0_2._is_showing_order_finish_toast = true
  A0_2._already_showed_order_finish_toast = true
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Activity.ActivityAlley.Pack.Toast.AlleyPackOrderFinishHintDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3
    A0_2._is_showing_order_finish_toast = false
  end
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.async_show
  L3_2(L4_2)
  L3_2 = A0_2._pack_ui3d_page
  L4_2 = L3_2
  L3_2 = L3_2.show_finish_order_effect
  L3_2(L4_2)
end
L1_1._try_show_order_finish_toast = L2_1
return L1_1
