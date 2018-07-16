.class public Lcom/umeng/message/MsgConstant;
.super Ljava/lang/Object;
.source "MsgConstant.java"


# static fields
.field public static final ACTION_TYPE_MSG_ARRIVAL:I = 0x0

.field public static final ACTION_TYPE_MSG_CLICK:I = 0x1

.field public static final ACTION_TYPE_MSG_DISMISS:I = 0x2

.field public static ALIAS_ENDPOINT:Ljava/lang/String; = null

.field public static final APP_LAUNCH_BY_MESSAGE:I = 0x1

.field public static final APP_LAUNCH_BY_UNSET:I = 0x0

.field public static final APP_LAUNCH_BY_USER:I = 0x2

.field public static final CACHE_LOG_COUNT_MAX:I = 0x14

.field public static final CACHE_LOG_FILE_EXT:Ljava/lang/String; = ".log"

.field public static final CACHE_LOG_FILE_PREFIX:Ljava/lang/String; = "umeng_message_log_cache_"

.field public static final DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String;

.field public static DELETE_ALIAS_ENDPOINT:Ljava/lang/String; = null

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static final KEY_ALIAS:Ljava/lang/String; = "alias"

.field public static final KEY_APP_LAUNCH_LOG_SEND_POLICY:Ljava/lang/String; = "KEY_APP_LAUNCH_LOG_SEND_POLICY"

.field public static final KEY_CACHE_FILE_TRANSFER_TO_SQL:Ljava/lang/String; = "KEY_CACHE_FILE_TRANSFER_TO_SQL"

.field public static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "device_token"

.field public static final KEY_ENEABLED:Ljava/lang/String; = "KEY_ENEABLED"

.field public static final KEY_HEADER:Ljava/lang/String; = "header"

.field public static final KEY_LAST_ALIAS:Ljava/lang/String; = "last_alias"

.field public static final KEY_LAST_MSG_ID:Ljava/lang/String; = "last_msg_id"

.field public static final KEY_LAUNCH_LOG_SENT_MARK:Ljava/lang/String; = "KEY_LAUNCH_LOG_SENT_MARK"

.field public static final KEY_MERGE_NOTIFICATION:Ljava/lang/String; = "KEY_MERGE_NOTIFICATION"

.field public static final KEY_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final KEY_MSG_RESOURCE_DOWNLOAD_PREFIX:Ljava/lang/String; = "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

.field public static final KEY_MUTE_DURATION:Ljava/lang/String; = "mute_duration"

.field public static final KEY_NO_DISTURB_END_HOUR:Ljava/lang/String; = "KEY_NO_DISTURB_END_HOUR"

.field public static final KEY_NO_DISTURB_END_MINUTE:Ljava/lang/String; = "KEY_NO_DISTURB_END_MINUTE"

.field public static final KEY_NO_DISTURB_START_HOUR:Ljava/lang/String; = "KEY_NO_DISTURB_START_HOUR"

.field public static final KEY_NO_DISTURB_START_MINUTE:Ljava/lang/String; = "KEY_NO_DISTURB_START_MINUTE"

.field public static final KEY_PUSH_INTENT_SERVICE_CLASSNAME:Ljava/lang/String; = "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

.field public static final KEY_REGISTERED_TO_UMENG:Ljava/lang/String; = "KEY_REGISTERED_TO_UMENG_"

.field public static final KEY_SERIA_NO:Ljava/lang/String; = "serial_no"

.field public static final KEY_SET_NOTIFICATION_ON_FOREGROUND:Ljava/lang/String; = "KEY_SET_NOTIFICATION_ON_FOREGROUND"

.field public static final KEY_SET_PUSH_INTENT_SERVICE_VERSION_CODE:Ljava/lang/String; = "KEY_SET_PUSH_INTENT_SERVICE_VERSION_CODE"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_TAG_SEND_POLICY:Ljava/lang/String; = "KEY_TAG_SEND_POLICY"

.field public static final KEY_TS:Ljava/lang/String; = "ts"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_UMENG_MESSAGE_APP_CHANNEL:Ljava/lang/String; = "KEY_UMENG_MESSAGE_APP_CHANNEL"

.field public static final KEY_UMENG_MESSAGE_APP_KEY:Ljava/lang/String; = "KEY_UMENG_MESSAGE_APP_KEY"

.field public static final KEY_UMENG_MESSAGE_APP_SECRET:Ljava/lang/String; = "KEY_UMENG_MESSAGE_APP_SECRET"

.field public static final KEY_UTDID:Ljava/lang/String; = "utdid"

.field public static LAUNCH_ENDPOINT:Ljava/lang/String; = null

.field public static LOG_ENDPOINT:Ljava/lang/String; = null

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "1.0"

.field public static final PUSH_SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "umeng_message_state"

.field public static REGISTER_ENDPOINT:Ljava/lang/String; = null

.field public static final SDK_VERSION:Ljava/lang/String; = "2.2.0"

.field public static TAG_ENDPOINT:Ljava/lang/String; = null

.field static a:J = 0x0L

.field static final b:I = 0x132b531

.field static final c:J = 0xea60L

.field protected static final d:Ljava/lang/String; = "TD"

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "msg.umengcloud.com"

    sput-object v0, Lcom/umeng/message/MsgConstant;->e:Ljava/lang/String;

    .line 36
    const-string v0, "msg.umengcloud.com/v2"

    sput-object v0, Lcom/umeng/message/MsgConstant;->f:Ljava/lang/String;

    .line 37
    const-string v0, "http"

    sput-object v0, Lcom/umeng/message/MsgConstant;->g:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/MsgConstant;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "push_logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/message/MsgConstant;->LOG_ENDPOINT:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/message/MsgConstant;->REGISTER_ENDPOINT:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/message/MsgConstant;->ALIAS_ENDPOINT:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/message/MsgConstant;->ALIAS_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/message/MsgConstant;->DELETE_ALIAS_ENDPOINT:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/message/MsgConstant;->LAUNCH_ENDPOINT:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/MsgConstant;->TAG_ENDPOINT:Ljava/lang/String;

    .line 50
    const-class v0, Lcom/umeng/message/UmengIntentService;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/MsgConstant;->DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 106
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/umeng/message/MsgConstant;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
