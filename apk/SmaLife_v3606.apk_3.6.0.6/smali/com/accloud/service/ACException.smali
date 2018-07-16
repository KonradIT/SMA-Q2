.class public Lcom/accloud/service/ACException;
.super Ljava/lang/Exception;
.source "ACException.java"


# static fields
.field public static CHECK_CRC_FAILURE:I

.field public static CONNECTED_FIRST:I

.field public static ENTRY_EMPTY:I

.field public static INTERNAL_ERROR:I

.field public static INTERNET_ERROR:I

.field public static INVALID_PARAMETERS:I

.field public static INVALID_PAYLOAD:I

.field public static LOCAL_DEVICE_OFFLINE:I

.field public static MARSHAL_ERROR:I

.field public static NO_LOGIN:I

.field public static NO_NETWORK_AVAILABLE:I

.field public static NO_WIFI_CONNECTED:I

.field public static TIMEOUT:I

.field public static WRONG_PAYLOAD_FORMAT:I


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x7c0

    sput v0, Lcom/accloud/service/ACException;->CHECK_CRC_FAILURE:I

    .line 10
    const/16 v0, 0x7c1

    sput v0, Lcom/accloud/service/ACException;->CONNECTED_FIRST:I

    .line 11
    const/16 v0, 0x7c2

    sput v0, Lcom/accloud/service/ACException;->NO_WIFI_CONNECTED:I

    .line 12
    const/16 v0, 0x7c3

    sput v0, Lcom/accloud/service/ACException;->NO_NETWORK_AVAILABLE:I

    .line 13
    const/16 v0, 0x7c4

    sput v0, Lcom/accloud/service/ACException;->LOCAL_DEVICE_OFFLINE:I

    .line 14
    const/16 v0, 0x7c5

    sput v0, Lcom/accloud/service/ACException;->INVALID_PAYLOAD:I

    .line 15
    const/16 v0, 0x7c6

    sput v0, Lcom/accloud/service/ACException;->ENTRY_EMPTY:I

    .line 16
    const/16 v0, 0x7c7

    sput v0, Lcom/accloud/service/ACException;->INVALID_PARAMETERS:I

    .line 17
    const/16 v0, 0x7c8

    sput v0, Lcom/accloud/service/ACException;->NO_LOGIN:I

    .line 18
    const/16 v0, 0x7c9

    sput v0, Lcom/accloud/service/ACException;->TIMEOUT:I

    .line 19
    const/16 v0, 0x7cb

    sput v0, Lcom/accloud/service/ACException;->MARSHAL_ERROR:I

    .line 20
    const/16 v0, 0x7cd

    sput v0, Lcom/accloud/service/ACException;->WRONG_PAYLOAD_FORMAT:I

    .line 21
    const/16 v0, 0x7ce

    sput v0, Lcom/accloud/service/ACException;->INTERNET_ERROR:I

    .line 22
    const/16 v0, 0x7cf

    sput v0, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    iput p1, p0, Lcom/accloud/service/ACException;->errorCode:I

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p1, p0, Lcom/accloud/service/ACException;->errorCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 36
    iput p1, p0, Lcom/accloud/service/ACException;->errorCode:I

    .line 37
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/accloud/service/ACException;->errorCode:I

    return v0
.end method
