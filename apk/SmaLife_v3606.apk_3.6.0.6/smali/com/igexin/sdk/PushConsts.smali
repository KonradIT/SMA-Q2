.class public Lcom/igexin/sdk/PushConsts;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_BROADCAST_NETWORK_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ACTION_BROADCAST_PUSHMANAGER:Ljava/lang/String; = "com.igexin.sdk.action.pushmanager"

.field public static final ACTION_BROADCAST_REFRESHLS:Ljava/lang/String; = "com.igexin.sdk.action.refreshls"

.field public static final ACTION_BROADCAST_TO_BOOT:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BROADCAST_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static ACTION_SERVICE_INITIALIZE:Ljava/lang/String; = null

.field public static final ACTION_SERVICE_INITIALIZE_SLAVE:Ljava/lang/String; = "com.igexin.action.initialize.slave"

.field public static final CHECK_CLIENTID:I = 0x2715

.field public static final CMD_ACTION:Ljava/lang/String; = "action"

.field public static final GET_CLIENTID:I = 0x2712

.field public static final GET_MSG_DATA:I = 0x2711

.field public static final GET_SDKONLINESTATE:I = 0x2717

.field public static final GET_SDKSERVICEPID:I = 0x2718

.field public static final MAX_FEEDBACK_ACTION:I = 0x16377

.field public static final MIN_FEEDBACK_ACTION:I = 0x15f91

.field public static final SETTAG_ERROR_COUNT:I = 0x4e21

.field public static final SETTAG_ERROR_EXCEPTION:I = 0x4e25

.field public static final SETTAG_ERROR_FREQUENCY:I = 0x4e22

.field public static final SETTAG_ERROR_NULL:I = 0x4e26

.field public static final SETTAG_ERROR_REPEAT:I = 0x4e23

.field public static final SETTAG_ERROR_UNBIND:I = 0x4e24

.field public static final SETTAG_SUCCESS:I = 0x0

.field public static final THIRDPART_FEEDBACK:I = 0x2716


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.igexin.action.initialize"

    sput-object v0, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
