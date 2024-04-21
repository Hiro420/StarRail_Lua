local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceAnchor.AvatarHPSettingPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceAnchor.AvatarHPSettingItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarHPSettingPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarHPSettingItemPanel
  L4_2 = G
  L4_2 = L4_2.AvatarHPSettingItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.panel = L1_2
  L1_2 = A0_2.panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar_root
  L1_2(L2_2, L3_2)
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
    L0_3 = A0_2.panel
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_tip
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_root
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
      L0_3 = A0_2.panel
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_tip
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._display_data = A1_2
  L4_2 = A1_2.percentage
  A0_2._avatarhp_percent = L4_2
  A0_2.flag = A2_2
  L4_2 = A0_2.flag
  if L4_2 == 1 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.title_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "HealPool_Teammember_Label"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2.flag
    if L4_2 == 2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.title_root
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.text
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "HealPool_Healsetting_Backupmember_Label"
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.title_root
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = A3_2 / 100
  A0_2.percent = L4_2
  L4_2 = A0_2.panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L7_2 = A0_2.percent
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.panel
  L5_2 = L4_2
  L4_2 = L4_2.register_slider_change_cbk
  L6_2 = A0_2._on_slider_changes
  L7_2 = A0_2._slider_owner
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_slider_changes = A1_2
  A0_2._slider_owner = A2_2
end
L0_1.register_slider_change_cbk = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._locked_cbk = A1_2
  A0_2._locked_cbk_owner = A2_2
end
L0_1.register_slider_locked_cbk = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.panel
  L3_2 = L2_2
  L2_2 = L2_2.set_overall_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_overall_value = L1_1
return L0_1
