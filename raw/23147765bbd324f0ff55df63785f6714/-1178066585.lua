local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailUnlockConditionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailUnlockConditionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.ChronicleUtilities.MissionChronicleUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChroniclePathDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to
  L4_2 = A0_2._on_click_go_to
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MissionChronicleUnlockTimeUp
  L4_2 = A0_2._on_unlock_time_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailAvatarItem"
  L6_2 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailAvatarItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._avatar_panel = L1_2
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MissionChroniclePathDetailUnlockConditionPanel
  L4_2 = G
  L4_2 = L4_2.MissionChroniclePathDetailUnlockConditionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._unlock_conditon_panel = L1_2
  L1_2 = A0_2._unlock_conditon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlock_condition
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._path_data
  if L1_2 then
    L1_2 = A0_2._path_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChronicleStatus
    L2_2 = L2_2.Locked
    if L1_2 == L2_2 then
      L1_2 = A0_2._unlock_conditon_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_status
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_path_mission_info
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_status
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_path_mission_info
    L2_2(L3_2)
  end
end
L0_1._on_unlock_time_up = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._is_play_fade_in = false
  if A1_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = "ChroniclePage_RightPanel_FadeIn"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    A0_2._is_play_fade_in = true
  elseif A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._is_play_fade_out
    if L3_2 then
      return
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = "ChroniclePage_RightPanel_FadeOut"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.GetClip
    L5_2 = "ChroniclePage_RightPanel_FadeOut"
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2.length
    A0_2._is_play_fade_out = true
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.CoroutineUtils
    L4_2 = L4_2.InvokeAfterSeconds
    L5_2 = L3_2
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2._is_play_fade_in
        if not L0_3 then
          L0_3 = A0_2._binder
          L0_3 = L0_3.root
          L1_3 = L0_3
          L0_3 = L0_3.SafeSetActive
          L2_3 = A1_2
          L0_3(L1_3, L2_3)
        end
        A0_2._is_play_fade_out = false
      end
    end
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_is_show = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_play_fade_out
  return L1_2
end
L0_1.get_is_play_fade_out = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  return L1_2
end
L0_1.get_width = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_play_fade_out
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeSelf
    L1_2 = not L1_2
  end
  return L1_2
end
L0_1.check_is_close = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._path_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_related_avatar
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_path_mission_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_line_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_is_show
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._avatar_id_table = L1_2
  L1_2 = A0_2._path_data
  L1_2 = L1_2.CompationPartnerList
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._path_data
    L2_2 = L2_2.CompationPartnerList
    L2_2 = L2_2.Count
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._avatar_id_table
      L7_2 = A0_2._path_data
      L7_2 = L7_2.CompationPartnerList
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_id_table
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_id_table
  L1_2(L2_2, L3_2)
end
L0_1._setup_related_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go_to
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Processing
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Finished
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Locked
  L3_2 = A0_2._path_data
  L4_2 = L3_2
  L3_2 = L3_2.CheckIsCanTakeMission
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 == L4_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Processing
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Processing
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_condition
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Locked
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._path_data
  L2_2 = L2_2.MainMissionID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MissionChapterConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.ChapterID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_chapter
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_chapter
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.ChapterName
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_path
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._path_data
  L5_2 = L5_2.NodeType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ChronicleNodeType
  L6_2 = L6_2.MissionMain
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._path_data
  L3_2 = L3_2.NodeType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleNodeType
  L4_2 = L4_2.MissionMain
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.WorldDataConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._path_data
    L4_2 = L4_2.WorldID
    L3_2 = L3_2(L4_2)
    if L3_2 == nil then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "MissionChroniclePathDetailPanel: \230\156\170\230\137\190\229\136\176WorldID\228\184\186"
      L6_2 = A0_2._path_data
      L6_2 = L6_2.WorldID
      L7_2 = "\233\133\141\231\189\174\239\188\140\232\138\130\231\130\185ID\228\184\186"
      L8_2 = A0_2._path_data
      L8_2 = L8_2.ID
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L4_2(L5_2)
    end
    L4_2 = A0_2._path_data
    L4_2 = L4_2.Status
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ChronicleStatus
    L5_2 = L5_2.UnKnown
    if L4_2 ~= L5_2 then
      L4_2 = A0_2._path_data
      L4_2 = L4_2.Status
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ChronicleStatus
      L5_2 = L5_2.Locked
      if L4_2 ~= L5_2 then
        L4_2 = A0_2._path_data
        L4_2 = L4_2.Status
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.ChronicleStatus
        L5_2 = L5_2.Prediction
        if L4_2 ~= L5_2 then
          goto lbl_109
        end
      end
    end
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_path
    L7_2 = L3_2.ChronicleWorldPredictPath
    L4_2(L5_2, L6_2, L7_2)
    goto lbl_147
    ::lbl_109::
    L4_2 = A0_2._path_data
    L4_2 = L4_2.Status
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ChronicleStatus
    L5_2 = L5_2.Processing
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_path
      L7_2 = L3_2.ChronicleWorldProcessingPath
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = A0_2._path_data
      L4_2 = L4_2.Status
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ChronicleStatus
      L5_2 = L5_2.Finished
      if L4_2 == L5_2 then
        L4_2 = A0_2._path_data
        L4_2 = L4_2.ImagePath
        if L4_2 ~= nil then
          L4_2 = A0_2._path_data
          L4_2 = L4_2.ImagePath
          if L4_2 ~= "" then
            L5_2 = A0_2
            L4_2 = A0_2._async_load_sprite_to
            L6_2 = A0_2._binder
            L6_2 = L6_2.img_path
            L7_2 = A0_2._path_data
            L7_2 = L7_2.ImagePath
            L4_2(L5_2, L6_2, L7_2)
          end
        end
      end
    end
  end
  ::lbl_147::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_mission_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._path_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ChronicleStatus
  L4_2 = L4_2.Finished
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_finished
    L3_2(L4_2)
  else
    L3_2 = A0_2._path_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ChronicleStatus
    L4_2 = L4_2.Processing
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_processing
      L3_2(L4_2)
    else
      L3_2 = A0_2._path_data
      L3_2 = L3_2.Status
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.ChronicleStatus
      L4_2 = L4_2.Locked
      if L3_2 == L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2._setup_locked
        L3_2(L4_2)
      end
    end
  end
end
L0_1._setup_path_mission_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_mission_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._path_data
  L3_2 = L3_2.MissionConclusion
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.scroll_rect
      L1_3 = L0_3
      L0_3 = L0_3.CanScroll
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = 33
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = 1
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2(L2_2)
end
L0_1._setup_finished = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._path_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurProcessingMissionData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetSubMissionGroups
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2[0]
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_mission_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.HintText
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_mission_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Description
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 1
      L0_3(L1_3, L2_3)
    end
  end
  L3_2(L4_2)
end
L0_1._setup_processing = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._unlock_conditon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._path_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_locked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.get_main_story_line_id
  L1_2 = L1_2()
  L2_2 = A0_2._path_data
  L2_2 = L2_2.StoryLineID
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_story_line_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.StoryLineUtils
  L2_2 = L2_2.get_story_line_ui_row
  L3_2 = A0_2._path_data
  L3_2 = L3_2.StoryLineID
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "MissionChroniclePathDetailPanel: \230\156\170\230\137\190\229\136\176ID\228\184\186"
    L5_2 = A0_2._path_data
    L5_2 = L5_2.NodeNameParam
    L6_2 = "StoryLineUI\233\133\141\231\189\174\239\188\140\232\138\130\231\130\185ID\228\184\186"
    L7_2 = A0_2._path_data
    L7_2 = L7_2.ID
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_story_line_icon
  L6_2 = L2_2.ChronicleIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_story_line_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
end
L0_1._setup_line_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._close_callback
  if L1_2 then
    L1_2 = A0_2._close_callback_self
    if L1_2 then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L3_2 = A0_2._path_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._path_data
  L1_2 = L1_2.Status
  L1_2 = not L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChronicleStatus
  L2_2 = L2_2.Processing
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._path_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurProcessingMissionData
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.GotoByType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.Mission
  L3_2 = #L3_2
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.None
  L5_2 = #L5_2
  L6_2 = L1_2.ID
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.Mission
  L2_2 = #L2_2
  L3_2 = L1_2.ID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.SDKLuaReportAdapter
  L4_2 = L4_2.ReportMissionChroniclePathGoto
  L5_2 = A0_2._path_data
  L5_2 = L5_2.ID
  L6_2 = G
  L6_2 = L6_2.MissionChronicleUtils
  L6_2 = L6_2.get_path_status_report_value
  L7_2 = A0_2._path_data
  L6_2 = L6_2(L7_2)
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = A0_2._owner
  L9_2 = L9_2.belong_path_chapter_id
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_click_go_to = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.SubMissions
  L2_2 = L2_2.Count
  if L2_2 == 0 then
    return
  end
  L2_2 = nil
  L3_2 = 0
  L4_2 = A1_2.SubMissions
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.SubMissions
    L7_2 = L7_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = A1_2.SubMissions
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.IsStart
      if L7_2 then
        L7_2 = A1_2.SubMissions
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.IsShow
        if L7_2 then
          L7_2 = A1_2.SubMissions
          L2_2 = L7_2[L6_2]
          break
        end
      end
    end
  end
  if L2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.open_map_by_submission_data
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._open_map_page = L1_1
return L0_1
