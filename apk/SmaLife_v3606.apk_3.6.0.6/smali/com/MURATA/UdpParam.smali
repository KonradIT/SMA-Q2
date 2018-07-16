.class public Lcom/MURATA/UdpParam;
.super Ljava/lang/Object;
.source "UdpParam.java"


# static fields
.field public static final IdDeviceStatus:I

.field public static final IdDisconnected:I

.field public static final IdKeepAliveAck:I

.field public static final IdRegAck:I

.field public static final IdRegFail:I

.field public static final IdSetdevAck:I

.field private static iNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    .line 6
    sget v0, Lcom/MURATA/UdpParam;->iNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    sput v0, Lcom/MURATA/UdpParam;->IdRegAck:I

    .line 7
    sget v0, Lcom/MURATA/UdpParam;->iNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    sput v0, Lcom/MURATA/UdpParam;->IdRegFail:I

    .line 8
    sget v0, Lcom/MURATA/UdpParam;->iNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    sput v0, Lcom/MURATA/UdpParam;->IdKeepAliveAck:I

    .line 9
    sget v0, Lcom/MURATA/UdpParam;->iNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    sput v0, Lcom/MURATA/UdpParam;->IdSetdevAck:I

    .line 10
    sget v0, Lcom/MURATA/UdpParam;->iNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    sput v0, Lcom/MURATA/UdpParam;->IdDeviceStatus:I

    .line 11
    sget v0, Lcom/MURATA/UdpParam;->iNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/MURATA/UdpParam;->iNo:I

    sput v0, Lcom/MURATA/UdpParam;->IdDisconnected:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
