local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSortPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarElementFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarClassFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSortPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._cache_name = A3_2
  A0_2._damage_filters = nil
  A0_2._profession_filters = nil
  L4_2 = tonumber
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.get_sort_type_from_cache
  L6_2 = A0_2._cache_name
  L7_2 = AvatarSortType
  L7_2 = L7_2.Level
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._sort_type = L4_2
  A0_2._sort_order_is_ascend = false
  A0_2._on_sort_changed_callback = nil
  A0_2._on_sort_changed_callee = nil
  A0_2._get_locked_avatars_callback = nil
  L4_2 = {}
  A0_2._all_avatars = L4_2
  L4_2 = {}
  A0_2._filtered_avatars = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_order_pc
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._init_order
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_sort_btns_pc
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_sort_order
  L5_2 = A0_2._on_sort_type_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = AvatarSortType
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2[L6_2] = L6_2
  end
  L2_2 = A0_2._sort_type
  if L2_2 == 3 then
    A0_2._sort_type = 2
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.save_sort_type_to_cache
    L3_2 = A0_2._cache_name
    L4_2 = A0_2._sort_type
    L5_2 = AvatarSortType
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_sort_btns_pc
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._sort_type
  L5_2 = L1_2
  L6_2 = A0_2._sort_order_is_ascend
  function L7_2(A0_3, A1_3)
    local L2_3
    L2_3 = AvatarSortTypeTextID
    L2_3 = L2_3[A1_3]
    return L2_3
  end
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._init_order_pc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_sort_btns
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_sort_order
  L5_2 = A0_2._on_btn_sort_type
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_order = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarElementFilter
  L1_2 = L1_2(L2_2)
  A0_2._element_filter = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarClassFilter
  L1_2 = L1_2(L2_2)
  A0_2._class_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._element_filter
  L4_2 = A0_2._class_filter
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._sort_order_is_ascend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_avatars
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1._on_btn_sort_order = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.FilterSort.CommonSortDialog"
  L3_2 = A0_2._sort_type
  L4_2 = AvatarSortTypeTextID
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_confirm_callback
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_sort_type_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_sort_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.save_sort_type_to_cache
  L3_2 = A0_2._cache_name
  L4_2 = A1_2
  L5_2 = AvatarSortType
  L2_2(L3_2, L4_2, L5_2)
  A0_2._sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_avatars
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1._on_sort_type_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_locked_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsTrialPlayer
    if L8_2 then
      if L2_2 == nil then
        L9_2 = A0_2
        L8_2 = A0_2._get_trial_avatars_cache
        L8_2 = L8_2(L9_2)
        L2_2 = L8_2
      end
      L8_2 = L7_2.ID
      L2_2[L8_2] = true
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._filtered_avatars
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_2._compare_function
    if L2_3 ~= nil then
      L2_3 = G
      L2_3 = L2_3.Utils
      L2_3 = L2_3.invoke_callback
      L3_3 = A0_2._compare_function
      L4_3 = A0_2._compare_handler
      L5_3 = A0_3
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = G
      L3_3 = L3_3.Utils
      L3_3 = L3_3.invoke_callback
      L4_3 = A0_2._compare_function
      L5_3 = A0_2._compare_handler
      L6_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      if L2_3 ~= nil and L3_3 ~= nil and L2_3 ~= L3_3 then
        return L2_3
      end
    end
    L2_3 = L2_2
    if L2_3 ~= nil then
      L2_3 = A0_3.IsTrialPlayer
      if not L2_3 then
        L2_3 = A1_3.IsTrialPlayer
        if not L2_3 then
          L2_3 = G
          L2_3 = L2_3.Utils
          L2_3 = L2_3.index_of_item
          L3_3 = L1_2
          L4_3 = A0_3
          L2_3 = L2_3(L3_3, L4_3)
          L2_3 = L2_3 ~= nil
          L3_3 = G
          L3_3 = L3_3.Utils
          L3_3 = L3_3.index_of_item
          L4_3 = L1_2
          L5_3 = A1_3
          L3_3 = L3_3(L4_3, L5_3)
          L3_3 = L3_3 ~= nil
          if not L2_3 and not L3_3 then
            L4_3 = A0_3.ID
            L4_3 = L2_2[L4_3]
            L5_3 = A1_3.ID
            L5_3 = L2_2[L5_3]
            if L4_3 ~= L5_3 then
              return L4_3
            end
          end
        end
      end
    end
    L2_3 = G
    L2_3 = L2_3.AvatarUtils
    L2_3 = L2_3.get_sort_compare
    L3_3 = A0_2._sort_type
    L4_3 = A0_2._sort_order_is_ascend
    L5_3 = L1_2
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = A0_3
    L4_3 = A1_3
    return L2_3(L3_3, L4_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._on_sort_changed_callback
  L5_2 = A0_2._on_sort_changed_callee
  L6_2 = A0_2._filtered_avatars
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._sort_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._get_locked_avatars_callback
  if L1_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = A0_2._get_locked_avatars_callback
  L2_2 = A0_2._get_locked_avatars_callee
  return L1_2(L2_2)
end
L0_1._get_locked_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_locked_avatars
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._element_filter
  L3_2 = L2_2
  L2_2 = L2_2.set_locked_datas
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._class_filter
  L3_2 = L2_2
  L2_2 = L2_2.set_locked_datas
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_source_data
  L4_2 = A0_2._all_avatars
  L2_2(L3_2, L4_2)
end
L0_1._on_setup_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._filtered_avatars = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_avatars
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1._on_finish_filter = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._compare_function = A1_2
  A0_2._compare_handler = A2_2
end
L0_1.set_customed_compare = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._all_avatars = L2_2
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._filtered_avatars = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_filters
  L2_2(L3_2)
end
L0_1.setup_sort_avatars = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_sort_changed_callback = A1_2
  A0_2._on_sort_changed_callee = A2_2
end
L0_1.register_sort_change_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._get_locked_avatars_callback = A1_2
  A0_2._get_locked_avatars_callee = A2_2
end
L0_1.register_locked_getter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_sort_btns
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = AvatarSortTypeTextID
    L4_2 = A0_2._sort_type
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2._sort_order_is_ascend
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._trial_avatars_cache
  if L1_2 == nil then
    L1_2 = {}
    A0_2._trial_avatars_cache = L1_2
  else
    L1_2 = next
    L2_2 = A0_2._trial_avatars_cache
    L3_2 = nil
    for L4_2 in L1_2, L2_2, L3_2 do
      L5_2 = rawset
      L6_2 = A0_2._trial_avatars_cache
      L7_2 = L4_2
      L8_2 = nil
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L1_2 = A0_2._trial_avatars_cache
  return L1_2
end
L0_1._get_trial_avatars_cache = L1_1
return L0_1
