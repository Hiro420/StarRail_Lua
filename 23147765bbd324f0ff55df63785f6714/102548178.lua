local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectSlotListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectBaseSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectSlotListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._slot_panels = L1_2
  L1_2 = G
  L1_2 = L1_2.ActivityEvolveBuildUtils
  L1_2 = L1_2.get_evolve_build_gear_manager
  L1_2 = L1_2()
  A0_2._evolve_build_gear_manager = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_list_view_content
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_gears_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._detail_panel = A1_2
end
L0_1.register_detail_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._slot_btn_root_callback = A1_2
  A0_2._slot_btn_root_callback_self = A2_2
end
L0_1.register_slot_btn_root_callback = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._gear_type = A1_2
  A0_2._equip_info_table = A2_2
  L5_2 = {}
  A0_2._slot_panels = L5_2
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = G
    L5_2 = L5_2.ActivityEvolveBuildUtils
    L5_2 = L5_2.get_evolve_build_gear_manager
    L5_2 = L5_2()
    L6_2 = L5_2
    L5_2 = L5_2.GetSlotCapacity
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
  end
  A0_2._slot_capacity = L5_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = G
    L5_2 = L5_2.ActivityEvolveBuildUtils
    L5_2 = L5_2.get_evolve_build_gear_manager
    L5_2 = L5_2()
    L6_2 = L5_2
    L5_2 = L5_2.GetUnlockSlotCapacity
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
  end
  A0_2._slot_unlock_capacity = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.static_list_view_content
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = A0_2._slot_capacity
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.static_list_view_content
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._equip_info_table = A1_2
  L2_2 = 1
  L3_2 = A0_2._slot_capacity
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._slot_panels
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._equip_info_table
    L7_2 = L7_2[L5_2]
    if L7_2 == nil then
      L7_2 = A0_2._slot_unlock_capacity
      if L5_2 > L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.setup_locked
        L7_2(L8_2)
      else
        L8_2 = L6_2
        L7_2 = L6_2.setup_empty
        L9_2 = A0_2._gear_type
        L7_2(L8_2, L9_2)
      end
    else
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = A0_2._equip_info_table
      L9_2 = L9_2[L5_2]
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_level_text_color
      L9_2 = A0_2._level_text_color
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.setup_equipinfo = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattleEvolveBuildSelectBaseSlotPanel
    L8_2 = G
    L8_2 = L8_2.BattleEvolveBuildSelectBaseSlotPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_detail_panel
    L7_2 = A0_2._detail_panel
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_btn_root_callback
    L7_2 = A0_2._slot_btn_root_callback
    L8_2 = A0_2._slot_btn_root_callback_self
    L5_2(L6_2, L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._equip_info_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  if L5_2 == nil then
    L5_2 = A0_2._slot_unlock_capacity
    if A2_2 >= L5_2 then
      L6_2 = L4_2
      L5_2 = L4_2.setup_locked
      L5_2(L6_2)
    else
      L6_2 = L4_2
      L5_2 = L4_2.setup_empty
      L7_2 = A0_2._gear_type
      L5_2(L6_2, L7_2)
    end
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = A0_2._equip_info_table
    L8_2 = A2_2 + 1
    L7_2 = L7_2[L8_2]
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_level_text_color
    L7_2 = A0_2._level_text_color
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._slot_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_gears_changed = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._slot_panels
  return L1_2
end
L0_1.get_slot_panels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._slot_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._slot_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.refresh_animation
    L5_2(L6_2)
  end
end
L0_1.refresh_slot_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._slot_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._slot_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.play_confirm_animation
    L5_2(L6_2)
  end
end
L0_1.try_play_confirm_animation = L1_1
function L1_1(A0_2, A1_2)
  A0_2._level_text_color = A1_2
end
L0_1.set_level_text_color = L1_1
return L0_1
