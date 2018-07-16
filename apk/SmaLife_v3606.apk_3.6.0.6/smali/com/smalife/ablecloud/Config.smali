.class public Lcom/smalife/ablecloud/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final AddAddresToWx:Ljava/lang/String; = "addAddresToWx"

.field public static final AddNewUser:Ljava/lang/String; = "register"

.field public static final AskNewFriend:Ljava/lang/String; = "askFriend"

.field public static final DispatcherMsg:Ljava/lang/String; = "dispatcherMsg"

.field public static final FriendInfo:Ljava/lang/String; = "scanFriendInfo"

.field public static final IsAddressInWX:Ljava/lang/String; = "isAddressInWx"

.field public static final MAJORDOAMIN:Ljava/lang/String; = "lijunhu"

.field public static final MAJORDOMAINID:J = 0x177L

.field public static final RespAddAsk:Ljava/lang/String; = "responseAsk"

.field public static final SUBMAJORDOMAIN:Ljava/lang/String; = "watch"

.field public static USER_UUID:J = 0x0L

.field public static final UnBondMsg:Ljava/lang/String; = "unBondFriends"

.field public static final UpdateUser:Ljava/lang/String; = "updateUser"

.field public static final UserLogin:Ljava/lang/String; = "login"

.field public static final getFriendInfo:Ljava/lang/String; = "getFriendInfo"

.field public static final getMacAddress:Ljava/lang/String; = "getMacAddress"

.field public static final getMacAddress2:Ljava/lang/String; = "getMacAddress2"

.field public static header_dir:Ljava/lang/String; = null

.field public static final serviceName:Ljava/lang/String; = "mywatch"

.field public static final serviceVersion:I = 0x1

.field public static final setMacAddress:Ljava/lang/String; = "setMacAddress"

.field public static final syncClock:Ljava/lang/String; = "sync_clock"

.field public static final syncRate:Ljava/lang/String; = "sync_rate"

.field public static final syncSleep:Ljava/lang/String; = "sync_sleep"

.field public static final syncSma:Ljava/lang/String; = "sync_sma"

.field public static final syncSport:Ljava/lang/String; = "sync_sport"

.field public static final sync_all:Ljava/lang/String; = "sync_all"

.field public static final sync_sma_data:Ljava/lang/String; = "sync_sma_data"

.field public static template:I

.field public static token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "/sma/watch/header"

    sput-object v0, Lcom/smalife/ablecloud/Config;->header_dir:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/smalife/ablecloud/Config;->template:I

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
