local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteCameraHintPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteCameraHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityGuessTheSilhouetteModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityGuessTheSilhouetteData
  L3_2 = L1_1.CurrentInProgressGuessId
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._silhouette_data = L1_2
  L1_2 = A0_2._silhouette_data
  if L1_2 == nil then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetActivityGuessTheSilhouetteTutorialData
    L3_2 = L1_1.CurrentInProgressGuessId
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._silhouette_data = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_silhouette_hint
  L4_2 = A0_2._on_btn_silhouette_hint
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_silhouette_hint
  L4_2 = A0_2._silhouette_data
  L4_2 = L4_2.SilhouetteIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteHintDialog"
  L3_2 = A0_2._silhouette_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_silhouette_hint = L2_1
return L0_1
