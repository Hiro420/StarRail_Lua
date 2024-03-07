local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomTargetInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueAdventureRoomTargetInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = {}
L2_1.none = 1
L2_1.score = 2
L2_1.defeat = 3
L2_1.ray = 4
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueAdventureRoomTargetInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.score = 0
  L1_2 = L2_1.none
  A0_2._mode = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2.already_play_animation = false
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2.textid = A1_2
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomScoreUpdate
  L4_2 = L0_1._on_score_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueAdventureRoomTrotterDefeatUpdate
  L4_2 = L0_1._on_defeat_update
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.go_star
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.textid
  L1_2(L2_2, L3_2)
end
L0_1.set_num_mode = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    A1_2 = 0
  end
  L2_2 = L2_1.defeat
  A0_2._mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.go_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.textid
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_defeat_num = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1.ray
  A0_2._mode = L3_2
  A0_2.score = A2_2
  if A1_2 == 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2.textid
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  elseif A1_2 == 2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2.textid
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.set_ray_score = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L2_1.score
  A0_2._mode = L3_2
  A0_2.score = A2_2
  if A1_2 == 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2.textid
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  elseif A1_2 == 2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_score
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2.textid
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.set_target_score = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mode
  L3_2 = L2_1.score
  if L2_2 == L3_2 then
    L2_2 = A0_2.score
    if L2_2 == 0 then
      return
    end
    L2_2 = A0_2.score
    if A1_2 >= L2_2 then
      L2_2 = A0_2.already_play_animation
      if not L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.animator
        L3_2 = L2_2
        L2_2 = L2_2.SetTrigger
        L4_2 = "SuccessHint"
        L2_2(L3_2, L4_2)
        A0_2.already_play_animation = true
      end
    end
  else
    L2_2 = A0_2._mode
    L3_2 = L2_1.ray
    if L2_2 == L3_2 then
      L2_2 = A0_2.score
      if L2_2 == 0 then
        return
      end
      L2_2 = A0_2.score
      if A1_2 >= L2_2 then
        L2_2 = A0_2.already_play_animation
        if not L2_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.animator
          L3_2 = L2_2
          L2_2 = L2_2.SetTrigger
          L4_2 = "SuccessHint"
          L2_2(L3_2, L4_2)
          A0_2.already_play_animation = true
        end
      end
    end
  end
end
L0_1._on_score_update = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._mode
  L3_2 = L2_1.defeat
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.textid
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_defeat_update = L3_1
return L0_1
