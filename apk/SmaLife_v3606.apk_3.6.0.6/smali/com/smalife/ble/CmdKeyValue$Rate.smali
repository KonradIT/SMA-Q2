.class public Lcom/smalife/ble/CmdKeyValue$Rate;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rate"
.end annotation


# static fields
.field public static final rate_cmd:B = 0x5t

.field public static final rate_key:B = 0x20t

.field public static final rate_key_shouhuan:B = 0x43t

.field public static final rate_result:B = 0x21t

.field public static final rate_result_shouhuan:B = 0x44t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
