local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookChallengeSubTabItemBase"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2.disable_res_bar = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._tab_row = A1_2
end
L0_1.set_challenge_tab_row_config = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._tab_row = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_row
  if L1_2 then
    L1_2 = A0_2._tab_row
    L1_2 = L1_2.IntroDataID
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = 0
  ::lbl_9::
  return L1_2
end
L0_1.get_intro_data_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_res_bar_config_internal
  return L1_2(L2_2)
end
L0_1.get_res_bar_config = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_row
  if L1_2 then
    L1_2 = A0_2._tab_row
    L1_2 = L1_2.ResBarKey
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = ""
  ::lbl_9::
  L2_2 = A0_2.disable_res_bar
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L0_1._get_res_bar_config_internal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._tab_row
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L0_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_main_tab_unselect
    L1_2(L2_2)
  end
end
L0_1.on_main_tab_unselect = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_main_tab_unselect = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_can_to_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.can_to_zoom = L1_1
return L0_1
