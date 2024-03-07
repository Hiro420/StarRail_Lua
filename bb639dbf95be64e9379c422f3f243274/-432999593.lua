local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementLeftItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementLeftItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.series_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._index = A5_2
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.achievement_icon
  L9_2 = A1_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.unselected_icon
  L9_2 = A1_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.progress_text
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.total_text
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.main_title
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.unselected_title
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.unselected_progress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.unselected_total
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._bind_btn_callback
  L8_2 = A0_2._binder
  L8_2 = L8_2.series_btn
  L9_2 = A0_2._on_click
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._index
  if L6_2 ~= nil then
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.bind_reddot
    L8_2 = "AchievementSeries"
    L9_2 = A0_2._index
    L10_2 = A0_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.reddot
    L11_2 = L11_2.transform
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  L2_2 = A0_2._callback_owner
  L3_2 = A0_2._index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.series_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button_animator
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_owner = A2_2
end
L0_1.register_click_callback = L1_1
return L0_1
