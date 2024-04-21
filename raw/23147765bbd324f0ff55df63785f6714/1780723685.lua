local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonEnvBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_content_resized = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.localized_resize_btn_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "ActionGroupTextmapID_ActionGroup_Unfold"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.eff_animation
  L1_2.playAutomatically = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.eff_animation
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.localized_resize_btn
  L4_2 = A0_2._on_resize_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterFrames
  L3_2 = 1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_prevent_overflow_btn
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.eff_animation
    L4_2 = ""
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.eff_animation
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.eff_animation
  L4_2 = ""
  L2_2(L3_2, L4_2)
end
L0_1.update_hint_eff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.localized_adjuster
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.localized_adjuster
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._setup_prevent_overflow_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_content_resized
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.size_control_element
    L2_2 = A0_2._binder
    L2_2 = L2_2.localized_adjuster
    L2_2 = L2_2.MinHeight
    L1_2.preferredHeight = L2_2
    A0_2._is_content_resized = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.localized_resize_btn_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "ActionGroupTextmapID_ActionGroup_Unfold"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.size_control_element
    L2_2 = A0_2._binder
    L2_2 = L2_2.content
    L2_2 = L2_2.preferredHeight
    L1_2.preferredHeight = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.localized_resize_btn_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AvatarRelic_Hiden"
    L1_2(L2_2, L3_2)
    A0_2._is_content_resized = true
  end
end
L0_1._on_resize_btn_clicked = L1_1
return L0_1
