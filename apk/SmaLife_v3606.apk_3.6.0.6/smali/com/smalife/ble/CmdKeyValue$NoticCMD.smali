.class public Lcom/smalife/ble/CmdKeyValue$NoticCMD;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoticCMD"
.end annotation


# static fields
.field public static final call_end_key:B = 0x3t

.field public static final call_in_key:B = 0x1t

.field public static final lovecall_key:B = 0x21t

.field public static final lovecall_key_back:B = 0x31t

.field public static final msg_key:B = 0x4t

.field public static final notic_cmd:B = 0x4t

.field public static final pick_up_ley:B = 0x2t

.field public static final show_key:B = 0x20t

.field public static final show_key_back:B = 0x30t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
