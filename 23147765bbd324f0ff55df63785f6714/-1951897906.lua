local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "AlleyBtnHint_FadeIn"
L1_1 = "AlleyBtnHint_Repeat"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "AlleyPackTipsBtnPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._try_show_tips_dialog
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._order_tips_path = nil
  A0_2._tips_time_table = nil
  A0_2._ship_control_panel = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  A0_2._ship_control_panel = A1_2
end
L2_1.set_ship_control_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._tips_anime_shown_time = 0
  A0_2._tips_dialog_shown = false
  A0_2._order_tips_path = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A0_2._tips_time_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_tips_btn
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._timer
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    L3_2 = A0_2._refresh_tips_btn
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._timer = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_tips_anime_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_func_btn_navigation
  L1_2(L2_2)
end
L2_1._setup_tips_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._has_tips_to_show
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_show_tips_anime
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._reset_tips_anime_timer
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_func_btn_navigation
  L2_2(L3_2)
end
L2_1._refresh_tips_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ship_control_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._ship_control_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh_func_btn_navigation
    L1_2(L2_2)
  end
end
L2_1._refresh_func_btn_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_tips_anime_refresh_time
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    L2_2 = A0_2._timer
    L3_2 = L2_2
    L2_2 = L2_2.set_interval
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  else
    L2_2 = A0_2._timer
    L3_2 = L2_2
    L2_2 = L2_2.stop
    L2_2(L3_2)
  end
end
L2_1._reset_tips_anime_timer = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tips_dialog_shown
  if L1_2 then
    L1_2 = -1
    return L1_2
  end
  L1_2 = A0_2._tips_anime_shown_time
  L1_2 = L1_2 + 1
  L2_2 = A0_2._tips_time_table
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L1_2 = A0_2._tips_time_table
    L2_2 = A0_2._tips_time_table
    L2_2 = #L2_2
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = A0_2._tips_time_table
    L2_2 = A0_2._tips_anime_shown_time
    L2_2 = L2_2 + 1
    L1_2 = L1_2[L2_2]
    return L1_2
  end
end
L2_1._get_tips_anime_refresh_time = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tips_dialog_shown
  if L1_2 then
    return
  end
  L1_2 = A0_2._tips_anime_shown_time
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "[Alley] TipsBtn play appear"
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "[Alley] TipsBtn play repeat"
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._tips_anime_shown_time
  L1_2 = L1_2 + 1
  A0_2._tips_anime_shown_time = L1_2
end
L2_1._try_show_tips_anime = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_tips_to_show
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Pack.Toast.AlleyPackHintDialog"
    L3_2 = A0_2._order_tips_path
    L1_2(L2_2, L3_2)
    A0_2._tips_dialog_shown = true
  end
end
L2_1._try_show_tips_dialog = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._order_tips_path
  L1_2 = L1_2 ~= nil
  return L1_2
end
L2_1._has_tips_to_show = L3_1
return L2_1
