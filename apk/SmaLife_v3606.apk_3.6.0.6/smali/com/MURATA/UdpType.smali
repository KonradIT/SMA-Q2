.class public Lcom/MURATA/UdpType;
.super Ljava/lang/Object;
.source "UdpType.java"


# instance fields
.field private rcuType:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "_rcuType"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/MURATA/UdpType;->rcuType:I

    .line 19
    iput p1, p0, Lcom/MURATA/UdpType;->rcuType:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/MURATA/UdpType;->rcuType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    const-string v0, "android"

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget v0, p0, Lcom/MURATA/UdpType;->rcuType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 27
    const-string v0, "PC"

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
