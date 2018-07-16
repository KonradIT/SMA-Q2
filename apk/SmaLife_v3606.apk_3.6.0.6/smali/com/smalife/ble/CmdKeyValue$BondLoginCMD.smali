.class public Lcom/smalife/ble/CmdKeyValue$BondLoginCMD;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BondLoginCMD"
.end annotation


# static fields
.field public static final bondLogin_cmd:B = 0x3t

.field public static final bond_Key:B = 0x1t

.field public static final bond_back:B = 0x2t

.field public static final login_Key:B = 0x3t

.field public static final login_back:B = 0x4t

.field public static final unBond_Key:B = 0x5t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
