.class public Lcom/winnermicro/smartconfig/OneShotException;
.super Ljava/lang/RuntimeException;
.source "OneShotException.java"


# static fields
.field public static final ERROR_NETWORK_DISCONNECTED:I = 0x66

.field public static final ERROR_NETWORK_NOT_SUPPORT:I = 0x67

.field public static final ERROR_WIFI_DISABLED:I = 0x65

.field private static final serialVersionUID:J = -0x327958b5a676e780L


# instance fields
.field private errorID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorId"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 16
    iput p1, p0, Lcom/winnermicro/smartconfig/OneShotException;->errorID:I

    .line 17
    return-void
.end method


# virtual methods
.method public getErrorID()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/winnermicro/smartconfig/OneShotException;->errorID:I

    return v0
.end method
