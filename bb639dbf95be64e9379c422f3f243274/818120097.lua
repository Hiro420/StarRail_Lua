local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Talk.FigureDisplayPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FigureDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.7
L2_1 = 0.5
function L3_1(A0_2)
  local L1_2
  A0_2._cur_alpha = 0
  A0_2._from_alpha = 0
  A0_2._to_alpha = 0
  L1_2 = L2_1
  L1_2 = L1_2 + 1
  A0_2._tick_timer = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._cur_alpha = 0
  A0_2._from_alpha = 0
  A0_2._to_alpha = 0
  L2_2 = A0_2
  L1_2 = A0_2._set_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2.TickInMonoBehaviour
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AssetLoader
  L2_2 = L2_2.Exists
  L3_2 = A1_2
  L2_2 = A1_2 ~= nil and L2_2
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.image
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = UNITY_EDITOR
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "[FigureDisplayPanel] TalkFigure ImagePath not exist: %s"
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
  A0_2._from_alpha = 0
  A0_2._to_alpha = 1
  L3_2 = A0_2._cur_alpha
  L4_2 = A0_2._from_alpha
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._to_alpha
  L5_2 = A0_2._from_alpha
  L4_2 = L4_2 - L5_2
  L3_2 = L3_2 / L4_2
  L4_2 = L2_1
  L3_2 = L3_2 * L4_2
  A0_2._tick_timer = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_alpha
  L5_2 = A0_2._cur_alpha
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.on_show = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._from_alpha = 1
  A0_2._to_alpha = 0
  L1_2 = A0_2._cur_alpha
  L2_2 = A0_2._from_alpha
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._to_alpha
  L3_2 = A0_2._from_alpha
  L2_2 = L2_2 - L3_2
  L1_2 = L1_2 / L2_2
  L2_2 = L2_1
  L1_2 = L1_2 * L2_2
  A0_2._tick_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_alpha
  L3_2 = A0_2._cur_alpha
  L1_2(L2_2, L3_2)
end
L0_1.on_clear = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._tick_timer
  L3_2 = L2_1
  if L2_2 > L3_2 then
    return
  end
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Lerp
  L3_2 = A0_2._from_alpha
  L4_2 = A0_2._to_alpha
  L5_2 = A0_2._tick_timer
  L6_2 = L2_1
  L5_2 = L5_2 / L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_alpha
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 <= 0 then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1.TickInMonoBehaviour = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_alpha = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_image_alpha
  L4_2 = A0_2._binder
  L4_2 = L4_2.bg_image
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.MMathf
  L5_2 = L5_2.Min
  L6_2 = L1_1
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_image_alpha
  L4_2 = A0_2._binder
  L4_2 = L4_2.image
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_alpha = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.color
  L3_2 = L3_2.a
  if L3_2 == A2_2 then
    return
  end
  L3_2 = A1_2.color
  L3_2.a = A2_2
  A1_2.color = L3_2
end
L0_1._set_image_alpha = L3_1
return L0_1
