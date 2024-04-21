local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.DecalConfigExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityConstValueSilverWolfExcelTable
L2_1 = tonumber
L3_1 = L1_1.GetData
L4_1 = "Decal_InputMaxLen"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L2_1 = L2_1(L3_1)
L3_1 = tonumber
L4_1 = L1_1.GetData
L5_1 = "Decal_InputDecalWidth"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L3_1 = L3_1(L4_1)
L4_1 = tonumber
L5_1 = L1_1.GetData
L6_1 = "Decal_InputDecalHeight"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L4_1 = L4_1(L5_1)
L5_1 = tonumber
L6_1 = L1_1.GetData
L7_1 = "Decal_InputMaxDepthVar"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L5_1 = L5_1(L6_1)
L6_1 = tonumber
L7_1 = L1_1.GetData
L8_1 = "Decal_InputDepthTestRadRatio"
L7_1 = L7_1(L8_1)
L7_1 = L7_1.Value
L6_1 = L6_1(L7_1)
L7_1 = tonumber
L8_1 = L1_1.GetData
L9_1 = "Decal_InputDepthTestVar"
L8_1 = L8_1(L9_1)
L8_1 = L8_1.Value
L7_1 = L7_1(L8_1)
L8_1 = tonumber
L9_1 = L1_1.GetData
L10_1 = "Decal_InputFadeInSpeedRatio"
L9_1 = L9_1(L10_1)
L9_1 = L9_1.Value
L8_1 = L8_1(L9_1)
L9_1 = tonumber
L10_1 = L1_1.GetData
L11_1 = "Decal_InputFadeOutSpeedRatio"
L10_1 = L10_1(L11_1)
L10_1 = L10_1.Value
L9_1 = L9_1(L10_1)
L10_1 = tonumber
L11_1 = L1_1.GetData
L12_1 = "Decal_InputPreviewOpacity"
L11_1 = L11_1(L12_1)
L11_1 = L11_1.Value
L10_1 = L10_1(L11_1)
L11_1 = tonumber
L12_1 = L1_1.GetData
L13_1 = "Decal_InputPreviewCD"
L12_1 = L12_1(L13_1)
L12_1 = L12_1.Value
L11_1 = L11_1(L12_1)
L12_1 = tonumber
L13_1 = L1_1.GetData
L14_1 = "Decal_InputMaxDecalNum"
L13_1 = L13_1(L14_1)
L13_1 = L13_1.Value
L12_1 = L12_1(L13_1)
L13_1 = G
L13_1 = L13_1.Class
L14_1 = "PhotoGraphDecalPanel"
L15_1 = G
L15_1 = L15_1.BasePanel
L13_1 = L13_1(L14_1, L15_1)
function L14_1(A0_2)
  local L1_2
end
L13_1.ctor = L14_1
function L14_1(A0_2)
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
end
L13_1._on_load = L14_1
function L14_1(A0_2)
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
L13_1._on_dispose = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.SetDecalText
  L3_2 = "Stages/OriginalResPos/InteractiveProp/Common/Common_GameplayProp_StageDecal_01/Texture/Common_GameplayProp_StageDecal_Silwolf_08.png"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L2_1
  L1_2.MaxRaycastLength = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L3_1
  L1_2.DecalWidth = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L4_1
  L1_2.DecalHeight = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L5_1
  L1_2.MaxDepthVariance = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L6_1
  L1_2.DepthBufferSampleRadiusRatio = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L7_1
  L1_2.MaxDepthTestVariance = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L8_1
  L1_2.FadeInAnimeSpeed = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L9_1
  L1_2.FadeOutAnimeSpeed = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L10_1
  L1_2.PreviewDecalAlpha = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L11_1
  L1_2.PreviewDecalCD = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L12_1
  L1_2.MaxDecalCount = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.RegisterPreviewStateHandler
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_preview_state
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.RegisterDecalCountChangeHandler
  function L3_2(A0_3)
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
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.SetEnable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_decal_select
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_decal_select
  L2_2 = L1_2
  L1_2 = L1_2.register_decal_change_callback
  L3_2 = A0_2._on_decal_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_decal_select
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_decal_change
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_preview_cd_finish
  L4_2 = L11_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_preview_state
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.GetDecalCount
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_state
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_decal_num
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L13_1.init_decal = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cur_decal_row
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_decal_preview
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L13_1._on_decal_change = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
      L2_2(L3_2, L4_2)
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
L13_1.show_decal_preview = L14_1
function L14_1(A0_2, A1_2)
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
L13_1._refresh_preview_state = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._cur_decal_row = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_decal_select
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_decal_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L0_1.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      A0_2._cur_decal_row = L2_2
    end
  end
end
L13_1._refresh_cur_decal_row = L14_1
function L14_1(A0_2, A1_2)
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
L13_1._refresh_btn_state = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cur_decal_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_decal_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L12_1
  L2_2(L3_2, L4_2)
end
L13_1._refresh_decal_num = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.CastDecal
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._report_cast_decal
  L3_2 = A0_2._cur_decal_row
  L3_2 = L3_2.DecalID
  L1_2(L2_2, L3_2)
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
L13_1._on_btn_cast_decal = L14_1
function L14_1(A0_2)
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
L13_1._on_preview_cd_finish = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.photograph_decal_container
  L2_2 = L1_2
  L1_2 = L1_2.UndoLastDecal
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._report_undo_decal
  L1_2(L2_2)
end
L13_1._on_btn_undo = L14_1
function L14_1(A0_2)
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
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._report_clear_decal
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L13_1._on_btn_clear = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "CastDecal"
  L5_2 = A1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L13_1._report_cast_decal = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "UndoDecal"
  L4_2 = ""
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L13_1._report_undo_decal = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "ClearDecal"
  L4_2 = ""
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L13_1._report_clear_decal = L14_1
return L13_1
