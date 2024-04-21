local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Loading.LoadingTipsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Loading.LoadingTipsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LoadingPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Loading/LoadingPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_loading_contents = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LoadingTipsPanel
  L4_2 = G
  L4_2 = L4_2.LoadingTipsPanelBinder
  L5_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_loading_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Contents/DownloadingProgress/FillArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loading_progress_slider = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AnimationPanel/LoadingPamu"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.loading_pamu = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.RawImage
  L4_2 = "AnimationPanel/LoadingPamu/WorldPanel/Img"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loading_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AnimationPanel/StoryLineLoadingTypewriter"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.loading_story_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AnimationPanel/StoryLineLoadingTypewriter/Root/Typewriter/TypewriterUp/Paper2/ShowImgPanel0/StoryImg/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.story_line_image = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "AnimationPanel/LoadingPamu/WorldPanel/EffectContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.effect_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "AnimationPanel/LoadingPamu/PamuPanel/PamuContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.pam_container = L1_2
end
L0_1._on_bind = L1_1
return L0_1
