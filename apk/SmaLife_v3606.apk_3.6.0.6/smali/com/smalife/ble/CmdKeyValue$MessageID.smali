.class public Lcom/smalife/ble/CmdKeyValue$MessageID;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageID"
.end annotation


# static fields
.field public static final ask_login_http_error:I = 0xb

.field public static final ask_login_msg:I = 0xa

.field public static final ask_login_msg_error:I = 0xc

.field public static final battery_key:Ljava/lang/String; = "battery_key"

.field public static final battery_msg:I = 0x7

.field public static final ble_msg:I = 0x9

.field public static final bong_msg:I = 0x1

.field public static final clock_list_key:Ljava/lang/String; = "clock_list_key"

.field public static final clock_list_msg:I = 0x6

.field public static final contral_key:Ljava/lang/String; = "contral_key"

.field public static final contral_msg:I = 0x5

.field public static final firmware_msg:I = 0x9

.field public static final login_msg:I = 0x0

.field public static final ota_key:Ljava/lang/String; = "ota_key"

.field public static final sleep_key:Ljava/lang/String; = "sleep_data"

.field public static final sleep_msg:I = 0x3

.field public static final sleep_set_msg:I = 0x4

.field public static final sport_key:Ljava/lang/String; = "sport_data"

.field public static final sport_msg:I = 0x2

.field public static final system_ota:I = 0x8

.field public static final unbond:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/CmdKeyValue;


# direct methods
.method public constructor <init>(Lcom/smalife/ble/CmdKeyValue;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/smalife/ble/CmdKeyValue$MessageID;->this$0:Lcom/smalife/ble/CmdKeyValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
