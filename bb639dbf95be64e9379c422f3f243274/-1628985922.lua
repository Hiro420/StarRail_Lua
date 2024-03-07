local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UIEasyTouchManager"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L0_1._gesture_handlers = L0_2
  L0_2 = pairs
  L1_2 = GestureType
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L0_1._gesture_handlers
    L6_2 = {}
    L5_2[L4_2] = L6_2
  end
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = assert
  L4_2 = A2_2
  L3_2(L4_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A2_2
    L2_3 = A1_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L4_2 = L0_1._add_gesture_handler
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.add_gesture_handler = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1._gesture_handlers
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = GestureType
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1._remove_gesture_handler
    L7_2 = L5_2
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.remove_gesture_handlers = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = L0_1._gesture_handlers
  L4_2 = L4_2[A0_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2[1]
    if L8_2 == A1_2 then
      L8_2 = L7_2[2]
      if L8_2 == A2_2 then
        return
      end
    end
  end
  L3_2 = L0_1._add_handler_by_type
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L0_1._gesture_handlers
  L4_2 = L4_2[A0_2]
  L5_2 = {}
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
end
L0_1._add_gesture_handler = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GestureType
  L2_2 = L2_2.PinchIn
  if A0_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.HedgehogTeam
    L2_2 = L2_2.EasyTouch
    L2_2 = L2_2.EasyTouch
    L2_2 = L2_2.On_PinchIn
    L3_2 = "+"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = GestureType
    L2_2 = L2_2.PinchOut
    if A0_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.HedgehogTeam
      L2_2 = L2_2.EasyTouch
      L2_2 = L2_2.EasyTouch
      L2_2 = L2_2.On_PinchOut
      L3_2 = "+"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = GestureType
      L2_2 = L2_2.PinchEnd
      if A0_2 == L2_2 then
        L2_2 = CS
        L2_2 = L2_2.HedgehogTeam
        L2_2 = L2_2.EasyTouch
        L2_2 = L2_2.EasyTouch
        L2_2 = L2_2.On_PinchEnd
        L3_2 = "+"
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = GestureType
        L2_2 = L2_2.SwipeStart
        if A0_2 == L2_2 then
          L2_2 = CS
          L2_2 = L2_2.HedgehogTeam
          L2_2 = L2_2.EasyTouch
          L2_2 = L2_2.EasyTouch
          L2_2 = L2_2.On_SwipeStart
          L3_2 = "+"
          L4_2 = A1_2
          L2_2(L3_2, L4_2)
        else
          L2_2 = GestureType
          L2_2 = L2_2.Swipe
          if A0_2 == L2_2 then
            L2_2 = CS
            L2_2 = L2_2.HedgehogTeam
            L2_2 = L2_2.EasyTouch
            L2_2 = L2_2.EasyTouch
            L2_2 = L2_2.On_Swipe
            L3_2 = "+"
            L4_2 = A1_2
            L2_2(L3_2, L4_2)
          else
            L2_2 = GestureType
            L2_2 = L2_2.SwipeEnd
            if A0_2 == L2_2 then
              L2_2 = CS
              L2_2 = L2_2.HedgehogTeam
              L2_2 = L2_2.EasyTouch
              L2_2 = L2_2.EasyTouch
              L2_2 = L2_2.On_SwipeEnd
              L3_2 = "+"
              L4_2 = A1_2
              L2_2(L3_2, L4_2)
            else
              L2_2 = GestureType
              L2_2 = L2_2.TouchStart
              if A0_2 == L2_2 then
                L2_2 = CS
                L2_2 = L2_2.HedgehogTeam
                L2_2 = L2_2.EasyTouch
                L2_2 = L2_2.EasyTouch
                L2_2 = L2_2.On_TouchStart
                L3_2 = "+"
                L4_2 = A1_2
                L2_2(L3_2, L4_2)
              else
                L2_2 = GestureType
                L2_2 = L2_2.TouchDown
                if A0_2 == L2_2 then
                  L2_2 = CS
                  L2_2 = L2_2.HedgehogTeam
                  L2_2 = L2_2.EasyTouch
                  L2_2 = L2_2.EasyTouch
                  L2_2 = L2_2.On_TouchDown
                  L3_2 = "+"
                  L4_2 = A1_2
                  L2_2(L3_2, L4_2)
                else
                  L2_2 = GestureType
                  L2_2 = L2_2.TouchUp
                  if A0_2 == L2_2 then
                    L2_2 = CS
                    L2_2 = L2_2.HedgehogTeam
                    L2_2 = L2_2.EasyTouch
                    L2_2 = L2_2.EasyTouch
                    L2_2 = L2_2.On_TouchUp
                    L3_2 = "+"
                    L4_2 = A1_2
                    L2_2(L3_2, L4_2)
                  else
                    L2_2 = GestureType
                    L2_2 = L2_2.SimpleTap
                    if A0_2 == L2_2 then
                      L2_2 = CS
                      L2_2 = L2_2.HedgehogTeam
                      L2_2 = L2_2.EasyTouch
                      L2_2 = L2_2.EasyTouch
                      L2_2 = L2_2.On_SimpleTap
                      L3_2 = "+"
                      L4_2 = A1_2
                      L2_2(L3_2, L4_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1._add_handler_by_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L0_1._gesture_handlers
  L4_2 = L4_2[A0_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2[1]
    if L8_2 == A1_2 then
      L8_2 = L0_1._remove_handler_by_type
      L9_2 = A0_2
      L10_2 = L7_2[2]
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = #L2_2
  if 0 < L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.remove_list_by_idx_list
    L4_2 = L0_1._gesture_handlers
    L4_2 = L4_2[A0_2]
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._remove_gesture_handler = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GestureType
  L2_2 = L2_2.PinchIn
  if A0_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.HedgehogTeam
    L2_2 = L2_2.EasyTouch
    L2_2 = L2_2.EasyTouch
    L2_2 = L2_2.On_PinchIn
    L3_2 = "-"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = GestureType
    L2_2 = L2_2.PinchOut
    if A0_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.HedgehogTeam
      L2_2 = L2_2.EasyTouch
      L2_2 = L2_2.EasyTouch
      L2_2 = L2_2.On_PinchOut
      L3_2 = "-"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = GestureType
      L2_2 = L2_2.PinchEnd
      if A0_2 == L2_2 then
        L2_2 = CS
        L2_2 = L2_2.HedgehogTeam
        L2_2 = L2_2.EasyTouch
        L2_2 = L2_2.EasyTouch
        L2_2 = L2_2.On_PinchEnd
        L3_2 = "-"
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = GestureType
        L2_2 = L2_2.SwipeStart
        if A0_2 == L2_2 then
          L2_2 = CS
          L2_2 = L2_2.HedgehogTeam
          L2_2 = L2_2.EasyTouch
          L2_2 = L2_2.EasyTouch
          L2_2 = L2_2.On_SwipeStart
          L3_2 = "-"
          L4_2 = A1_2
          L2_2(L3_2, L4_2)
        else
          L2_2 = GestureType
          L2_2 = L2_2.Swipe
          if A0_2 == L2_2 then
            L2_2 = CS
            L2_2 = L2_2.HedgehogTeam
            L2_2 = L2_2.EasyTouch
            L2_2 = L2_2.EasyTouch
            L2_2 = L2_2.On_Swipe
            L3_2 = "-"
            L4_2 = A1_2
            L2_2(L3_2, L4_2)
          else
            L2_2 = GestureType
            L2_2 = L2_2.SwipeEnd
            if A0_2 == L2_2 then
              L2_2 = CS
              L2_2 = L2_2.HedgehogTeam
              L2_2 = L2_2.EasyTouch
              L2_2 = L2_2.EasyTouch
              L2_2 = L2_2.On_SwipeEnd
              L3_2 = "-"
              L4_2 = A1_2
              L2_2(L3_2, L4_2)
            else
              L2_2 = GestureType
              L2_2 = L2_2.TouchStart
              if A0_2 == L2_2 then
                L2_2 = CS
                L2_2 = L2_2.HedgehogTeam
                L2_2 = L2_2.EasyTouch
                L2_2 = L2_2.EasyTouch
                L2_2 = L2_2.On_SwipeEnd
                L3_2 = "-"
                L4_2 = A1_2
                L2_2(L3_2, L4_2)
              else
                L2_2 = GestureType
                L2_2 = L2_2.TouchDown
                if A0_2 == L2_2 then
                  L2_2 = CS
                  L2_2 = L2_2.HedgehogTeam
                  L2_2 = L2_2.EasyTouch
                  L2_2 = L2_2.EasyTouch
                  L2_2 = L2_2.On_TouchDown
                  L3_2 = "-"
                  L4_2 = A1_2
                  L2_2(L3_2, L4_2)
                else
                  L2_2 = GestureType
                  L2_2 = L2_2.TouchUp
                  if A0_2 == L2_2 then
                    L2_2 = CS
                    L2_2 = L2_2.HedgehogTeam
                    L2_2 = L2_2.EasyTouch
                    L2_2 = L2_2.EasyTouch
                    L2_2 = L2_2.On_TouchUp
                    L3_2 = "-"
                    L4_2 = A1_2
                    L2_2(L3_2, L4_2)
                  else
                    L2_2 = GestureType
                    L2_2 = L2_2.SimpleTap
                    if A0_2 == L2_2 then
                      L2_2 = CS
                      L2_2 = L2_2.HedgehogTeam
                      L2_2 = L2_2.EasyTouch
                      L2_2 = L2_2.EasyTouch
                      L2_2 = L2_2.On_SimpleTap
                      L3_2 = "-"
                      L4_2 = A1_2
                      L2_2(L3_2, L4_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1._remove_handler_by_type = L1_1
function L1_1()
  local L0_2, L1_2
  L0_1._pinch_handlers = nil
end
L0_1.dispose = L1_1
return L0_1
