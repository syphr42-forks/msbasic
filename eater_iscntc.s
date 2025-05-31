.segment "CODE"

ISCNTC:
    jsr MONRDKEY
    bcc @not_ctrl_c
    cmp #$03
    bne @not_ctrl_c
    jmp @is_ctrl_c

@not_ctrl_c:
    rts

@is_ctrl_c:
;!!! runs into "STOP"
