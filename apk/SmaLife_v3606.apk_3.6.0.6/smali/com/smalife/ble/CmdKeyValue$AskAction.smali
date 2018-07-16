.class public Lcom/smalife/ble/CmdKeyValue$AskAction;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AskAction"
.end annotation


# static fields
.field public static final Action_key:Ljava/lang/String; = "action_key"

.field public static final AskActionString:Ljava/lang/String; = "AskAction"

.field public static final backlight:I = 0x38

.field public static final battery_level:I = 0x50

.field public static final camera:I = 0x39

.field public static final clock_action:I = 0x13

.field public static final clock_list_action:I = 0x14

.field public static final disturb:I = 0x37

.field public static final disturb_shouhuan:I = 0x48

.field public static final firmware:I = 0x35

.field public static final language_set:I = 0x47

.field public static final light_hand_set:I = 0x45

.field public static final long_notic:I = 0x25

.field public static final lost_notic_disable:I = 0x24

.field public static final lost_notic_enable:I = 0x23

.field public static final lovecall:I = 0x18

.field public static final loveshow:I = 0x17

.field public static final msg_notic_disable:I = 0x22

.field public static final msg_notic_enable:I = 0x21

.field public static final rate:I = 0x36

.field public static final rate_set:I = 0x44

.field public static final rate_shouhuan:I = 0x43

.field public static final screen_set:I = 0x46

.field public static final send_message:I = 0x33

.field public static final set_sleep:I = 0x34

.field public static final setshoct_time:I = 0x41

.field public static final setsystem_time:I = 0x40

.field public static final sleep_detection:I = 0x51

.field public static final sport_shouhuan:I = 0x42

.field public static final step_aim:I = 0x27

.field public static final sync_close_action:I = 0x16

.field public static final sync_open_action:I = 0x15

.field public static final system_ota:I = 0x31

.field public static final system_up:I = 0x30

.field public static final systemtime_action:I = 0x12

.field public static final tel_notic_disable:I = 0x20

.field public static final tel_notic_enable:I = 0x19

.field public static final unbond_action:I = 0x10

.field public static final user_info:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
