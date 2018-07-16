.class public Lcom/smalife/ble/CmdKeyValue$Sleep;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sleep"
.end annotation


# static fields
.field public static final sleep_cmd:B = 0x5t

.field public static final sleep_key:B = 0x10t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
