local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.DecalGameplayConfigExcelTable
L1_1 = 10
L2_1 = 2
L3_1 = 2
L4_1 = 5
L5_1 = 0.7
L6_1 = 3
L7_1 = 3
L8_1 = 2
L9_1 = 0.02
L10_1 = 1
L11_1 = 8
L12_1 = G
L12_1 = L12_1.Class
L13_1 = "DecalPuzzlePanel"
L14_1 = G
L14_1 = L14_1.BasePanel
L12_1 = L12_1(L13_1, L14_1)
function L13_1(A0_2)
  local L1_2
end
L12_1.ctor = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cast_decal
  L4_2 = A0_2._on_btn_cast_decal
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_undo
  L4_2 = A0_2._on_btn_undo
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
end
L12_1._on_load = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.photograph_decal_container
    L2_2 = L1_2
    L1_2 = L1_2.SetEnable
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  A0_2._cur_decal_row = nil
end
L12_1._on_dispose = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L12_1.setup_title = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_2
  L2_2 = L2_2.SetDecalText
  L4_2 = "Stages/OriginalResPos/InteractiveProp/Common/Common_GameplayProp_StageDecal_01/Texture/Common_GameplayProp_StageDecal_Silwolf_08.png"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L1_1
  L2_2.MaxRaycastLength = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_1
  L2_2.DecalWidth = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L3_1
  L2_2.DecalHeight = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L4_1
  L2_2.MaxDepthVariance = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L5_1
  L2_2.DepthBufferSampleRadiusRatio = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L6_1
  L2_2.MaxDepthTestVariance = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L7_1
  L2_2.FadeInAnimeSpeed = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L8_1
  L2_2.FadeOutAnimeSpeed = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L9_1
  L2_2.PreviewDecalAlpha = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L10_1
  L2_2.PreviewDecalCD = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L11_1
  L2_2.MaxDecalCount = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_2
  L2_2 = L2_2.RegisterPreviewStateHandler
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_preview_state
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_2
  L2_2 = L2_2.RegisterDecalCountChangeHandler
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_btn_state
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_decal_num
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_2
  L2_2 = L2_2.SetEnable
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_decal_select
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_decal_select
  L3_2 = L2_2
  L2_2 = L2_2.register_decal_change_callback
  L4_2 = A0_2._on_decal_change
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_decal_select
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_decal_change
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_preview_cd_finish
  L5_2 = L10_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_preview_state
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_2
  L2_2 = L2_2.GetDecalCount
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_state
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_decal_num
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L12_1.init_decal = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_decal_row
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_decal_preview
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L12_1._on_decal_change = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._is_in_preview_cd
    if L2_2 then
      return
    end
  end
  if A1_2 then
    L2_2 = A0_2._cur_decal_row
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.photograph_decal_container
      L3_2 = L2_2
      L2_2 = L2_2.SetDecalText
      L4_2 = A0_2._cur_decal_row
      L4_2 = L4_2.TextureMapPath
      L5_2 = A0_2._cur_decal_row
      L5_2 = L5_2.DecalID
      L2_2(L3_2, L4_2, L5_2)
    else
      A1_2 = false
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.photograph_decal_container
  L3_2 = L2_2
  L2_2 = L2_2.ShowPreviewDecal
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = false
  end
  L2_2(L3_2, L4_2)
end
L12_1.show_decal_preview = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_state_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_state_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L12_1._refresh_preview_state = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_decal_row = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_decal_select
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_selected_decal_id
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L0_1.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      A0_2._cur_decal_row = L3_2
    end
  end
end
L12_1._refresh_cur_decal_row = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_clear
  L3_2 = 0 < A1_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_undo
  L3_2 = 0 < A1_2
  L2_2.interactable = L3_2
end
L12_1._refresh_btn_state = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Stamima_Current"
  L5_2 = A1_2
  L6_2 = L11_1
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L12_1._refresh_decal_num = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_decal_row
  L1_2(L2_2)
  L1_2 = A0_2._cur_decal_row
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._is_in_preview_cd
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.SetDecalText
  L3_2 = A0_2._cur_decal_row
  L3_2 = L3_2.TextureMapPath
  L4_2 = A0_2._cur_decal_row
  L4_2 = L4_2.DecalID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.CastDecal
  L1_2(L2_2)
  A0_2._is_in_preview_cd = true
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L12_1._on_btn_cast_decal = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_in_preview_cd = false
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_decal_preview
  L4_2 = A0_2
  L3_2 = A0_2.is_active
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L12_1._on_preview_cd_finish = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.UndoLastDecal
  L1_2(L2_2)
end
L12_1._on_btn_undo = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_SilverWolf_Decal_Tips_ClearAll"
  L3_2 = nil
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.photograph_decal_container
      L2_3 = L1_3
      L1_3 = L1_3.ClearAllDecals
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L12_1._on_btn_clear = L13_1
return L12_1
