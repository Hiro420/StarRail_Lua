local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfaceIconBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceSurfaceIcon"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UI/Atlas/AtlasRoot/Common/State/LockIconFHD.png"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._slot_data
  L1_2 = L1_2.CurEquippedSurface
  L2_2 = L1_2
  L1_2 = L1_2.UpdateNewStatus
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._slot_data = A1_2
  L5_2 = A0_2._slot_data
  L5_2 = L5_2.CurEquippedSurface
  L6_2 = L5_2
  L5_2 = L5_2.UpdateNewStatus
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_general_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_rarity_bg
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.register_click_callback
  L7_2 = A2_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.RedDotModule
  L5_2 = L5_2.Instance
  L6_2 = L5_2
  L5_2 = L5_2.bind_reddot
  L7_2 = "RogueNousSurfaceNew"
  L8_2 = A0_2._slot_data
  L8_2 = L8_2.CurEquippedSurface
  L8_2 = L8_2.SurfaceID
  L9_2 = A0_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.red_dot_root
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_locked_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = A0_2._slot_data
  L4_2 = L4_2.SurfaceIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetColor
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_color_by_surface_rarity
  L4_2 = A0_2._slot_data
  L4_2 = L4_2.CurEquippedSurface
  L4_2 = L4_2.Rarity
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_general_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.Rarity
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_rare
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.Rarity
  L3_2 = L3_2 == 2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_epic
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.Rarity
  L3_2 = L3_2 == 3
  L1_2(L2_2, L3_2)
end
L0_1._setup_rarity_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_listener
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L1_2(L2_2)
    end
  end
end
L0_1._on_root_btn_clicked = L2_1
return L0_1
