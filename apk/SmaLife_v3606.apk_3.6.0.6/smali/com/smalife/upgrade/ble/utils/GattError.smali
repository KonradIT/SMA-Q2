.class public Lcom/smalife/upgrade/ble/utils/GattError;
.super Ljava/lang/Object;
.source "GattError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .prologue
    .line 45
    sparse-switch p0, :sswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :sswitch_0
    const-string v0, "GATT INVALID HANDLE"

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "GATT READ NOT PERMIT"

    goto :goto_0

    .line 51
    :sswitch_2
    const-string v0, "GATT WRITE NOT PERMIT"

    goto :goto_0

    .line 53
    :sswitch_3
    const-string v0, "GATT INVALID PDU"

    goto :goto_0

    .line 55
    :sswitch_4
    const-string v0, "GATT INSUF AUTHENTICATION"

    goto :goto_0

    .line 57
    :sswitch_5
    const-string v0, "GATT REQ NOT SUPPORTED"

    goto :goto_0

    .line 59
    :sswitch_6
    const-string v0, "GATT INVALID OFFSET"

    goto :goto_0

    .line 61
    :sswitch_7
    const-string v0, "GATT INSUF AUTHORIZATION"

    goto :goto_0

    .line 63
    :sswitch_8
    const-string v0, "GATT PREPARE Q FULL"

    goto :goto_0

    .line 65
    :sswitch_9
    const-string v0, "GATT NOT FOUND"

    goto :goto_0

    .line 67
    :sswitch_a
    const-string v0, "GATT NOT LONG"

    goto :goto_0

    .line 69
    :sswitch_b
    const-string v0, "GATT INSUF KEY SIZE"

    goto :goto_0

    .line 71
    :sswitch_c
    const-string v0, "GATT INVALID ATTR LEN"

    goto :goto_0

    .line 73
    :sswitch_d
    const-string v0, "GATT ERR UNLIKELY"

    goto :goto_0

    .line 75
    :sswitch_e
    const-string v0, "GATT INSUF ENCRYPTION"

    goto :goto_0

    .line 77
    :sswitch_f
    const-string v0, "GATT UNSUPPORT GRP TYPE"

    goto :goto_0

    .line 79
    :sswitch_10
    const-string v0, "GATT INSUF RESOURCE"

    goto :goto_0

    .line 81
    :sswitch_11
    const-string v0, "GATT ILLEGAL PARAMETER"

    goto :goto_0

    .line 83
    :sswitch_12
    const-string v0, "GATT NO RESOURCES"

    goto :goto_0

    .line 85
    :sswitch_13
    const-string v0, "GATT INTERNAL ERROR"

    goto :goto_0

    .line 87
    :sswitch_14
    const-string v0, "GATT WRONG STATE"

    goto :goto_0

    .line 89
    :sswitch_15
    const-string v0, "GATT DB FULL"

    goto :goto_0

    .line 91
    :sswitch_16
    const-string v0, "GATT BUSY"

    goto :goto_0

    .line 93
    :sswitch_17
    const-string v0, "GATT ERROR"

    goto :goto_0

    .line 95
    :sswitch_18
    const-string v0, "GATT CMD STARTED"

    goto :goto_0

    .line 97
    :sswitch_19
    const-string v0, "GATT PENDING"

    goto :goto_0

    .line 99
    :sswitch_1a
    const-string v0, "GATT AUTH FAIL"

    goto :goto_0

    .line 101
    :sswitch_1b
    const-string v0, "GATT MORE"

    goto :goto_0

    .line 103
    :sswitch_1c
    const-string v0, "GATT INVALID CFG"

    goto :goto_0

    .line 105
    :sswitch_1d
    const-string v0, "GATT SERVICE STARTED"

    goto :goto_0

    .line 107
    :sswitch_1e
    const-string v0, "GATT ENCRYPTED NO MITM"

    goto :goto_0

    .line 109
    :sswitch_1f
    const-string v0, "GATT NOT ENCRYPTED"

    goto :goto_0

    .line 111
    :sswitch_20
    const-string v0, "GATT CONGESTED"

    goto :goto_0

    .line 113
    :sswitch_21
    const-string v0, "GATT CCCD CFG ERROR"

    goto :goto_0

    .line 115
    :sswitch_22
    const-string v0, "GATT PROCEDURE IN PROGRESS"

    goto :goto_0

    .line 117
    :sswitch_23
    const-string v0, "GATT VALUE OUT OF RANGE"

    goto :goto_0

    .line 119
    :sswitch_24
    const-string v0, "TOO MANY OPEN CONNECTIONS"

    goto :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x80 -> :sswitch_12
        0x81 -> :sswitch_13
        0x82 -> :sswitch_14
        0x83 -> :sswitch_15
        0x84 -> :sswitch_16
        0x85 -> :sswitch_17
        0x86 -> :sswitch_18
        0x87 -> :sswitch_11
        0x88 -> :sswitch_19
        0x89 -> :sswitch_1a
        0x8a -> :sswitch_1b
        0x8b -> :sswitch_1c
        0x8c -> :sswitch_1d
        0x8d -> :sswitch_1e
        0x8e -> :sswitch_1f
        0x8f -> :sswitch_20
        0xfd -> :sswitch_21
        0xfe -> :sswitch_22
        0xff -> :sswitch_23
        0x101 -> :sswitch_24
    .end sparse-switch
.end method

.method public static parseConnectionError(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .prologue
    .line 14
    sparse-switch p0, :sswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 16
    :sswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 18
    :sswitch_1
    const-string v0, "GATT CONN L2C FAILURE"

    goto :goto_0

    .line 20
    :sswitch_2
    const-string v0, "GATT CONN TIMEOUT"

    goto :goto_0

    .line 22
    :sswitch_3
    const-string v0, "GATT CONN TERMINATE PEER USER"

    goto :goto_0

    .line 24
    :sswitch_4
    const-string v0, "GATT CONN TERMINATE LOCAL HOST"

    goto :goto_0

    .line 26
    :sswitch_5
    const-string v0, "GATT CONN FAIL ESTABLISH"

    goto :goto_0

    .line 28
    :sswitch_6
    const-string v0, "GATT CONN LMP TIMEOUT"

    goto :goto_0

    .line 30
    :sswitch_7
    const-string v0, "GATT CONN CANCEL "

    goto :goto_0

    .line 32
    :sswitch_8
    const-string v0, "GATT ERROR"

    goto :goto_0

    .line 14
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
        0x13 -> :sswitch_3
        0x16 -> :sswitch_4
        0x22 -> :sswitch_6
        0x3e -> :sswitch_5
        0x85 -> :sswitch_8
        0x100 -> :sswitch_7
    .end sparse-switch
.end method
