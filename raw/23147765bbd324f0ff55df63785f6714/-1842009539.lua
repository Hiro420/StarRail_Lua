local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SystemOpenModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "HudTemplatePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._hud_type_to_panel = L1_2
  A0_2._short_cut_hint_id = 0
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HudTemplateRefreshed
  L4_2 = L1_1._on_refresh_hud_template
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._hud_type_to_panel
  L3_2[A1_2] = A2_2
end
L1_1.set_hud_panel = L2_1
function L2_1(A0_2, A1_2)
  A0_2._short_cut_hint_id = A1_2
end
L1_1.init_short_cut_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L0_1.BlockedHudTypes
  L2_2 = pairs
  L3_2 = A0_2._hud_type_to_panel
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._enable_hud_template
    L9_2 = L5_2
    L11_2 = L1_2
    L10_2 = L1_2.Contains
    L12_2 = L5_2
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L2_2 = L0_1.ActionHintSet
  if L2_2 ~= 0 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._short_cut_hint_id
    if L3_2 ~= 0 then
      L4_2 = A0_2
      L3_2 = A0_2.setup_short_cut_hint_panel
      L5_2 = A0_2._short_cut_hint_id
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1._on_refresh_hud_template = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._hud_type_to_panel
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    return
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = L3_2.set_hud_template
  L6_2 = L3_2
  L7_2 = A2_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L1_1._enable_hud_template = L2_1
return L1_1
