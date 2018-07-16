.class public Lcom/igexin/getuiext/data/Consts;
.super Ljava/lang/Object;


# static fields
.field public static APPID:Ljava/lang/String; = null

.field public static final BIDB_MAX:I = 0x14

.field public static final BISEND_MAX:I = 0x14

.field public static final BITYPE_PROMOTION_TEXT_OR_IMG:Ljava/lang/String; = "13"

.field public static final BITYPE_RECOMMEND:Ljava/lang/String; = "3"

.field public static final BITYPE_UPDATE:Ljava/lang/String; = "2"

.field public static CID:Ljava/lang/String; = null

.field public static final CMD_ACTION:Ljava/lang/String; = "action"

.field public static DEFAULT_RETRY_TIMES:I = 0x0

.field public static final DELIVER_URL:Ljava/lang/String; = "http://sdk.open.inc2.igexin.com/api.php"

.field public static final DOWNLOAD_HANDLER_OWNER:Ljava/lang/String; = "GETUI_INC"

.field public static final GET_CID_DATA:I = 0x2712

.field public static final GET_MSG_DATA:I = 0x2711

.field public static INC_APPID:Ljava/lang/String; = null

.field public static final INSTALL_APP:I = 0x2afb

.field public static final ORIGINAL_URL_CLICK:I = 0xd

.field public static final PHONE_ADDRESS_URL:Ljava/lang/String; = "http://sdk.open.phone.igexin.com/api.php"

.field public static final PROMOTION_ACTION_CLICK:I = 0x2

.field public static final PROMOTION_ACTION_SHOW:I = 0x1

.field public static final PROMOTION_TYPE_IMG:Ljava/lang/String; = "image"

.field public static final PROMOTION_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final RECOMMEND_DOWNLOAD_CONTINUE:I = 0x7

.field public static final RECOMMEND_DOWNLOAD_FINISHED:I = 0x3

.field public static final RECOMMEND_DOWNLOAD_PAUSE:I = 0x6

.field public static final RECOMMEND_DOWNLOAD_START:I = 0x2

.field public static final RECOMMEND_INSTALL_CLICK:I = 0x5

.field public static final RECOMMEND_INSTALL_FINISHED:I = 0x4

.field public static final RECOMMEND_SHOW:I = 0x1

.field public static final SEND_BI:I = 0x2afa

.field public static final SERVICE_ONRECEIVE:I = 0x2af9

.field public static final SERVICE_ONSTART:I = 0x2af8

.field public static final TIME_24HOUR:J = 0x5265c00L

.field public static final UPDATE_APP_MANAGE:I = 0xa

.field public static final UPDATE_CLICK:I = 0x2

.field public static final UPDATE_CLOSE:I = 0x7

.field public static final UPDATE_DOWNLOAD_CONTINUE:I = 0x9

.field public static final UPDATE_DOWNLOAD_FINISHED:I = 0x4

.field public static final UPDATE_DOWNLOAD_PAUSE:I = 0x8

.field public static final UPDATE_DOWNLOAD_START:I = 0x3

.field public static final UPDATE_DOWNLOAD_WIFI:I = 0xb

.field public static final UPDATE_INSTALL_CLICK:I = 0x6

.field public static final UPDATE_INSTALL_FINISHED:I = 0x5

.field public static final UPDATE_NEXTTIME_CLICK:I = 0xc

.field public static final UPDATE_RESULT:I = 0x2713

.field public static final UPDATE_SHOW:I = 0x1

.field public static VERSION:Ljava/lang/String; = null

.field public static final channelid:Ljava/lang/String; = "tencent"

.field public static verifyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    sput v0, Lcom/igexin/getuiext/data/Consts;->DEFAULT_RETRY_TIMES:I

    const-string v0, "2.0.3"

    sput-object v0, Lcom/igexin/getuiext/data/Consts;->VERSION:Ljava/lang/String;

    sput-object v1, Lcom/igexin/getuiext/data/Consts;->APPID:Ljava/lang/String;

    sput-object v1, Lcom/igexin/getuiext/data/Consts;->CID:Ljava/lang/String;

    const-string v0, "7fjUl2Z3LH6xYy7NQK4ni4"

    sput-object v0, Lcom/igexin/getuiext/data/Consts;->INC_APPID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
